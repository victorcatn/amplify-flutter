// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library aws_json1_0_v1.json_rpc_10.model.json_unions_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/my_union.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'json_unions_output.g.dart';

abstract class JsonUnionsOutput
    with _i1.AWSEquatable<JsonUnionsOutput>
    implements Built<JsonUnionsOutput, JsonUnionsOutputBuilder> {
  factory JsonUnionsOutput({MyUnion? contents}) {
    return _$JsonUnionsOutput._(contents: contents);
  }

  factory JsonUnionsOutput.build([
    void Function(JsonUnionsOutputBuilder) updates,
  ]) = _$JsonUnionsOutput;

  const JsonUnionsOutput._();

  /// Constructs a [JsonUnionsOutput] from a [payload] and [response].
  factory JsonUnionsOutput.fromResponse(
    JsonUnionsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) => payload;

  static const List<_i2.SmithySerializer<JsonUnionsOutput>> serializers = [
    JsonUnionsOutputAwsJson10Serializer(),
  ];

  /// A union with a representative set of types for members.
  MyUnion? get contents;
  @override
  List<Object?> get props => [contents];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('JsonUnionsOutput')
      ..add('contents', contents);
    return helper.toString();
  }
}

class JsonUnionsOutputAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<JsonUnionsOutput> {
  const JsonUnionsOutputAwsJson10Serializer() : super('JsonUnionsOutput');

  @override
  Iterable<Type> get types => const [JsonUnionsOutput, _$JsonUnionsOutput];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
    _i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
  ];

  @override
  JsonUnionsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonUnionsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'contents':
          result.contents =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(MyUnion),
                  )
                  as MyUnion);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    JsonUnionsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final JsonUnionsOutput(:contents) = object;
    if (contents != null) {
      result$
        ..add('contents')
        ..add(
          serializers.serialize(
            contents,
            specifiedType: const FullType(MyUnion),
          ),
        );
    }
    return result$;
  }
}
