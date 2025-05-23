// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api_dart/src/graphql/web_socket/blocs/web_socket_bloc.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/types/web_socket_types.dart';

/// Base Subscription event class
abstract class SubscriptionEvent extends WebSocketEvent {
  /// Every event takes in the associated subscription id [subscriptionId]
  const SubscriptionEvent(this.subscriptionId);

  /// The associated subscription id
  final String subscriptionId;

  @override
  Map<String, Object?> toJson() => {'subscriptionId': subscriptionId};
}

/// Web Socket Subscription start ack message event
class SubscriptionStartAckEvent extends SubscriptionEvent {
  /// Creates a start ack event
  const SubscriptionStartAckEvent(super.subscriptionId);

  @override
  String get runtimeTypeName => 'SubscriptionStartAckEvent';
}

/// Web Socket Subscription pending event
class SubscriptionPendingEvent extends SubscriptionEvent {
  /// Creates a pending event
  const SubscriptionPendingEvent(super.subscriptionId);

  @override
  String get runtimeTypeName => 'SubscriptionPendingEvent';
}

/// Web Socket Subscription data message event
class SubscriptionDataEvent extends SubscriptionEvent {
  /// Creates a data event.
  /// Takes in the associated subscription id [subscriptionId] and data [payload]
  const SubscriptionDataEvent(super.subscriptionId, this.payload);

  /// The data [payload]
  final SubscriptionDataPayload payload;

  @override
  String get runtimeTypeName => 'SubscriptionDataEvent';

  @override
  Map<String, Object?> toJson() => {
    'subscriptionId': subscriptionId,
    'payload': payload.toJson(),
  };
}

/// Web Socket Subscription complete message event
class SubscriptionComplete extends SubscriptionEvent {
  /// Creates a complete event.
  /// Takes in the associated subscription id [subscriptionId]
  const SubscriptionComplete(super.subscriptionId);

  @override
  String get runtimeTypeName => 'SubscriptionComplete';
}

/// Web Socket Subscription event message event
class SubscriptionErrorEvent extends SubscriptionEvent {
  /// Creates an error event.
  /// Takes a [subscriptionId] tied to the a web socket error [wsError]
  const SubscriptionErrorEvent(super.subscriptionId, this.wsError);

  /// The web socket error
  final WebSocketError wsError;

  @override
  String get runtimeTypeName => 'SubscriptionErrorEvent';

  @override
  Map<String, Object?> toJson() => {
    'subscriptionId': subscriptionId,
    'wsError': wsError.toJson(),
  };
}
