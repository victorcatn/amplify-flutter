// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library rest_json1_v2.rest_json_protocol.model.malformed_union_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/simple_union.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_union_input.g.dart';

abstract class MalformedUnionInput
    with
        _i1.HttpInput<MalformedUnionInput>,
        _i2.AWSEquatable<MalformedUnionInput>
    implements Built<MalformedUnionInput, MalformedUnionInputBuilder> {
  factory MalformedUnionInput({SimpleUnion? union}) {
    return _$MalformedUnionInput._(union: union);
  }

  factory MalformedUnionInput.build([
    void Function(MalformedUnionInputBuilder) updates,
  ]) = _$MalformedUnionInput;

  const MalformedUnionInput._();

  factory MalformedUnionInput.fromRequest(
    MalformedUnionInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) => payload;

  static const List<_i1.SmithySerializer<MalformedUnionInput>> serializers = [
    MalformedUnionInputRestJson1Serializer(),
  ];

  SimpleUnion? get union;
  @override
  MalformedUnionInput getPayload() => this;

  @override
  List<Object?> get props => [union];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedUnionInput')
      ..add('union', union);
    return helper.toString();
  }
}

class MalformedUnionInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedUnionInput> {
  const MalformedUnionInputRestJson1Serializer() : super('MalformedUnionInput');

  @override
  Iterable<Type> get types => const [
    MalformedUnionInput,
    _$MalformedUnionInput,
  ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
    _i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
  ];

  @override
  MalformedUnionInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MalformedUnionInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'union':
          result.union =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(SimpleUnion),
                  )
                  as SimpleUnion);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MalformedUnionInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final MalformedUnionInput(:union) = object;
    if (union != null) {
      result$
        ..add('union')
        ..add(
          serializers.serialize(
            union,
            specifiedType: const FullType(SimpleUnion),
          ),
        );
    }
    return result$;
  }
}
