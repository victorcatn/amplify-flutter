// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library ec2_query_v2.ec2_protocol.model.greeting_with_errors_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'greeting_with_errors_output.g.dart';

abstract class GreetingWithErrorsOutput
    with _i1.AWSEquatable<GreetingWithErrorsOutput>
    implements
        Built<GreetingWithErrorsOutput, GreetingWithErrorsOutputBuilder> {
  factory GreetingWithErrorsOutput({String? greeting}) {
    return _$GreetingWithErrorsOutput._(greeting: greeting);
  }

  factory GreetingWithErrorsOutput.build([
    void Function(GreetingWithErrorsOutputBuilder) updates,
  ]) = _$GreetingWithErrorsOutput;

  const GreetingWithErrorsOutput._();

  /// Constructs a [GreetingWithErrorsOutput] from a [payload] and [response].
  factory GreetingWithErrorsOutput.fromResponse(
    GreetingWithErrorsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) => payload;

  static const List<_i2.SmithySerializer<GreetingWithErrorsOutput>>
  serializers = [GreetingWithErrorsOutputEc2QuerySerializer()];

  String? get greeting;
  @override
  List<Object?> get props => [greeting];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GreetingWithErrorsOutput')
      ..add('greeting', greeting);
    return helper.toString();
  }
}

class GreetingWithErrorsOutputEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<GreetingWithErrorsOutput> {
  const GreetingWithErrorsOutputEc2QuerySerializer()
    : super('GreetingWithErrorsOutput');

  @override
  Iterable<Type> get types => const [
    GreetingWithErrorsOutput,
    _$GreetingWithErrorsOutput,
  ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
    _i2.ShapeId(namespace: 'aws.protocols', shape: 'ec2Query'),
  ];

  @override
  GreetingWithErrorsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GreetingWithErrorsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'greeting':
          result.greeting =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GreetingWithErrorsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GreetingWithErrorsOutputResponse',
        _i2.XmlNamespace('https://example.com/'),
      ),
    ];
    final GreetingWithErrorsOutput(:greeting) = object;
    if (greeting != null) {
      result$
        ..add(const _i2.XmlElementName('Greeting'))
        ..add(
          serializers.serialize(
            greeting,
            specifiedType: const FullType(String),
          ),
        );
    }
    return result$;
  }
}
