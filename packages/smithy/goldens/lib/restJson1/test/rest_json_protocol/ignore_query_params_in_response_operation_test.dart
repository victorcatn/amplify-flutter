// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

// ignore_for_file: unused_element
library rest_json1_v1.rest_json_protocol.test.ignore_query_params_in_response_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/ignore_query_params_in_response_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/ignore_query_params_in_response_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('RestJsonIgnoreQueryParamsInResponse (response)', () async {
    await _i2.httpResponseTest(
      operation: IgnoreQueryParamsInResponseOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'RestJsonIgnoreQueryParamsInResponse',
        documentation:
            'Query parameters must be ignored when serializing the output\nof an operation. As of January 2021, server implementations\nare expected to respond with a JSON object regardless of\nif the output parameters are empty.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
        authScheme: null,
        body: '{}',
        bodyMediaType: 'application/json',
        params: {},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/json'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        IgnoreQueryParamsInResponseOutputRestJson1Serializer(),
      ],
    );
  });
  _i1.test('RestJsonIgnoreQueryParamsInResponseNoPayload (response)', () async {
    await _i2.httpResponseTest(
      operation: IgnoreQueryParamsInResponseOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'RestJsonIgnoreQueryParamsInResponseNoPayload',
        documentation:
            'This test is similar to RestJsonIgnoreQueryParamsInResponse,\nbut it ensures that clients gracefully handle responses from\nthe server that do not serialize an empty JSON object.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
        authScheme: null,
        body: '',
        bodyMediaType: null,
        params: {},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: _i2.AppliesTo.client,
        code: 200,
      ),
      outputSerializers: const [
        IgnoreQueryParamsInResponseOutputRestJson1Serializer(),
      ],
    );
  });
}

class IgnoreQueryParamsInResponseOutputRestJson1Serializer
    extends _i3.StructuredSmithySerializer<IgnoreQueryParamsInResponseOutput> {
  const IgnoreQueryParamsInResponseOutputRestJson1Serializer()
    : super('IgnoreQueryParamsInResponseOutput');

  @override
  Iterable<Type> get types => const [IgnoreQueryParamsInResponseOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
  ];

  @override
  IgnoreQueryParamsInResponseOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IgnoreQueryParamsInResponseOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'baz':
          result.baz =
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
    IgnoreQueryParamsInResponseOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
