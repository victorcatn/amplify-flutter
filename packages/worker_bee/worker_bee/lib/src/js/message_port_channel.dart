// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

// ignore: implementation_imports
import 'package:aws_common/src/js/common.dart';
import 'package:built_value/serializer.dart';
import 'package:worker_bee/src/exception/worker_bee_exception.dart';
import 'package:worker_bee/src/serializers/serializers.dart';
import 'package:worker_bee/worker_bee.dart';

/// {@template worker_bee.message_port_channel}
/// An abstraction over [MessagePort] which conforms to [StreamChannel].
/// {@endtemplate}
class MessagePortChannel<T>
    with StreamChannelMixin<T>
    implements StreamSink<T> {
  /// {@macro worker_bee.message_port_channel}
  MessagePortChannel(
    this.messagePort, {
    Serializers? serializers,
    FullType specifiedType = FullType.unspecified,
  }) : _serializers = serializers ?? workerBeeSerializers,
       _specifiedType = specifiedType;

  /// The message port to communicate over.
  final MessagePort messagePort;

  final Serializers _serializers;
  final FullType _specifiedType;

  @override
  StreamSink<T> get sink => this;

  @override
  late final Stream<T> stream = messagePort.onMessage
      .transform(
        StreamTransformer<MessageEvent, T>.fromHandlers(
          handleData: Zone.current.bindBinaryCallback((event, sink) {
            if (event.data == 'done') {
              sink.close();
              close();
              return;
            }
            final data = _serializers.deserialize(
              event.data,
              specifiedType: _specifiedType,
            );
            if (data is WorkerBeeException || data is! T) {
              sink.addError(
                data as Object,
                data is WorkerBeeException ? data.stackTrace : null,
              );
            } else {
              sink.add(data);
            }
          }),
          handleDone: Zone.current.bindUnaryCallback((sink) {
            sink.close();
            close();
          }),
        ),
      )
      .takeUntil(_done.future);

  @override
  void add(T event) {
    final transfer = <Object>[];
    final serialized = runZoned(
      () => _serializers.serialize(event, specifiedType: _specifiedType),
      zoneValues: {#transfer: transfer},
    );
    messagePort.postMessage(serialized, transfer);
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    messagePort.postMessage(
      _serializers.serialize(
        WorkerBeeExceptionImpl(error, stackTrace),
        specifiedType: FullType.unspecified,
      ),
    );
    close();
  }

  @override
  Future<void> addStream(Stream<T> stream) async {
    await for (final event in stream) {
      add(event);
    }
  }

  final Completer<void> _done = Completer<void>();

  @override
  Future<void> close() async {
    if (_done.isCompleted) return;
    messagePort
      ..postMessage('done')
      ..close();
    _done.complete();
  }

  @override
  Future<void> get done => _done.future;
}
