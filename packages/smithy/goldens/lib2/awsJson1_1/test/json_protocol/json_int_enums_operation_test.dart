// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

// ignore_for_file: unused_element
library aws_json1_1_v2.json_protocol.test.json_int_enums_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_1_v2/src/json_protocol/model/integer_enum.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/json_int_enums_input_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/operation/json_int_enums_operation.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('AwsJson11IntEnums (request)', () async {
    await _i2.httpRequestTest(
      operation: JsonIntEnumsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'AwsJson11IntEnums',
        documentation: 'Serializes simple scalar properties',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body:
            '{\n    "intEnum1": 1,\n    "intEnum2": 2,\n    "intEnum3": 3,\n    "intEnumList": [\n        1,\n        2\n    ],\n    "intEnumSet": [\n        1,\n        2\n    ],\n    "intEnumMap": {\n        "a": 1,\n        "b": 2\n    }\n}',
        bodyMediaType: 'application/json',
        params: {
          'intEnum1': 1,
          'intEnum2': 2,
          'intEnum3': 3,
          'intEnumList': [1, 2],
          'intEnumSet': [1, 2],
          'intEnumMap': {'a': 1, 'b': 2},
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.JsonIntEnums',
        },
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [JsonIntEnumsInputOutputAwsJson11Serializer()],
    );
  });
  _i1.test('AwsJson11IntEnums (response)', () async {
    await _i2.httpResponseTest(
      operation: JsonIntEnumsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'AwsJson11IntEnums',
        documentation: 'Serializes simple scalar properties',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body:
            '{\n    "intEnum1": 1,\n    "intEnum2": 2,\n    "intEnum3": 3,\n    "intEnumList": [\n        1,\n        2\n    ],\n    "intEnumSet": [\n        1,\n        2\n    ],\n    "intEnumMap": {\n        "a": 1,\n        "b": 2\n    }\n}',
        bodyMediaType: 'application/json',
        params: {
          'intEnum1': 1,
          'intEnum2': 2,
          'intEnum3': 3,
          'intEnumList': [1, 2],
          'intEnumSet': [1, 2],
          'intEnumMap': {'a': 1, 'b': 2},
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.JsonIntEnums',
        },
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [JsonIntEnumsInputOutputAwsJson11Serializer()],
    );
  });
}

class JsonIntEnumsInputOutputAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<JsonIntEnumsInputOutput> {
  const JsonIntEnumsInputOutputAwsJson11Serializer()
    : super('JsonIntEnumsInputOutput');

  @override
  Iterable<Type> get types => const [JsonIntEnumsInputOutput];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
    _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  JsonIntEnumsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonIntEnumsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'intEnum1':
          result.intEnum1 =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(IntegerEnum),
                  )
                  as IntegerEnum);
        case 'intEnum2':
          result.intEnum2 =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(IntegerEnum),
                  )
                  as IntegerEnum);
        case 'intEnum3':
          result.intEnum3 =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(IntegerEnum),
                  )
                  as IntegerEnum);
        case 'intEnumList':
          result.intEnumList.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i5.BuiltList, [
                    FullType(IntegerEnum),
                  ]),
                )
                as _i5.BuiltList<IntegerEnum>),
          );
        case 'intEnumSet':
          result.intEnumSet.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i5.BuiltSet, [
                    FullType(IntegerEnum),
                  ]),
                )
                as _i5.BuiltSet<IntegerEnum>),
          );
        case 'intEnumMap':
          result.intEnumMap.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i5.BuiltMap, [
                    FullType(String),
                    FullType(IntegerEnum),
                  ]),
                )
                as _i5.BuiltMap<String, IntegerEnum>),
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    JsonIntEnumsInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
