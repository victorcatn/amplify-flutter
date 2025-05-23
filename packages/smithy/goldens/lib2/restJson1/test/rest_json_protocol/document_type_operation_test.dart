// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.document_type_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/json_object.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/document_type_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/operation/document_type_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('DocumentTypeInputWithObject (request)', () async {
    await _i2.httpRequestTest(
      operation: DocumentTypeOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'DocumentTypeInputWithObject',
        documentation:
            'Serializes document types as part of the JSON request payload with no escaping.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
        authScheme: null,
        body:
            '{\n    "stringValue": "string",\n    "documentValue": {\n        "foo": "bar"\n    }\n}',
        bodyMediaType: 'application/json',
        params: {
          'stringValue': 'string',
          'documentValue': {'foo': 'bar'},
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/json'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'PUT',
        uri: '/DocumentType',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [DocumentTypeInputOutputRestJson1Serializer()],
    );
  });
  _i1.test('DocumentInputWithString (request)', () async {
    await _i2.httpRequestTest(
      operation: DocumentTypeOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'DocumentInputWithString',
        documentation: 'Serializes document types using a string.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
        authScheme: null,
        body:
            '{\n    "stringValue": "string",\n    "documentValue": "hello"\n}',
        bodyMediaType: 'application/json',
        params: {'stringValue': 'string', 'documentValue': 'hello'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/json'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'PUT',
        uri: '/DocumentType',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [DocumentTypeInputOutputRestJson1Serializer()],
    );
  });
  _i1.test('DocumentInputWithNumber (request)', () async {
    await _i2.httpRequestTest(
      operation: DocumentTypeOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'DocumentInputWithNumber',
        documentation: 'Serializes document types using a number.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
        authScheme: null,
        body: '{\n    "stringValue": "string",\n    "documentValue": 10\n}',
        bodyMediaType: 'application/json',
        params: {'stringValue': 'string', 'documentValue': 10},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/json'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'PUT',
        uri: '/DocumentType',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [DocumentTypeInputOutputRestJson1Serializer()],
    );
  });
  _i1.test('DocumentInputWithBoolean (request)', () async {
    await _i2.httpRequestTest(
      operation: DocumentTypeOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'DocumentInputWithBoolean',
        documentation: 'Serializes document types using a boolean.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
        authScheme: null,
        body: '{\n    "stringValue": "string",\n    "documentValue": true\n}',
        bodyMediaType: 'application/json',
        params: {'stringValue': 'string', 'documentValue': true},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/json'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'PUT',
        uri: '/DocumentType',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [DocumentTypeInputOutputRestJson1Serializer()],
    );
  });
  _i1.test('DocumentInputWithList (request)', () async {
    await _i2.httpRequestTest(
      operation: DocumentTypeOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'DocumentInputWithList',
        documentation: 'Serializes document types using a list.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
        authScheme: null,
        body:
            '{\n    "stringValue": "string",\n    "documentValue": [\n        true,\n        "hi",\n        [\n            1,\n            2\n        ],\n        {\n            "foo": {\n                "baz": [\n                    3,\n                    4\n                ]\n            }\n        }\n    ]\n}',
        bodyMediaType: 'application/json',
        params: {
          'stringValue': 'string',
          'documentValue': [
            true,
            'hi',
            [1, 2],
            {
              'foo': {
                'baz': [3, 4],
              },
            },
          ],
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/json'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'PUT',
        uri: '/DocumentType',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [DocumentTypeInputOutputRestJson1Serializer()],
    );
  });
  _i1.test('DocumentOutput (response)', () async {
    await _i2.httpResponseTest(
      operation: DocumentTypeOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'DocumentOutput',
        documentation:
            'Serializes documents as part of the JSON response payload with no escaping.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
        authScheme: null,
        body:
            '{\n    "stringValue": "string",\n    "documentValue": {\n        "foo": "bar"\n    }\n}',
        bodyMediaType: 'application/json',
        params: {
          'stringValue': 'string',
          'documentValue': {'foo': 'bar'},
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/json'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [DocumentTypeInputOutputRestJson1Serializer()],
    );
  });
  _i1.test('DocumentOutputString (response)', () async {
    await _i2.httpResponseTest(
      operation: DocumentTypeOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'DocumentOutputString',
        documentation: 'Document types can be JSON scalars too.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
        authScheme: null,
        body:
            '{\n    "stringValue": "string",\n    "documentValue": "hello"\n}',
        bodyMediaType: 'application/json',
        params: {'stringValue': 'string', 'documentValue': 'hello'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/json'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [DocumentTypeInputOutputRestJson1Serializer()],
    );
  });
  _i1.test('DocumentOutputNumber (response)', () async {
    await _i2.httpResponseTest(
      operation: DocumentTypeOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'DocumentOutputNumber',
        documentation: 'Document types can be JSON scalars too.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
        authScheme: null,
        body: '{\n    "stringValue": "string",\n    "documentValue": 10\n}',
        bodyMediaType: 'application/json',
        params: {'stringValue': 'string', 'documentValue': 10},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/json'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [DocumentTypeInputOutputRestJson1Serializer()],
    );
  });
  _i1.test('DocumentOutputBoolean (response)', () async {
    await _i2.httpResponseTest(
      operation: DocumentTypeOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'DocumentOutputBoolean',
        documentation: 'Document types can be JSON scalars too.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
        authScheme: null,
        body: '{\n    "stringValue": "string",\n    "documentValue": false\n}',
        bodyMediaType: 'application/json',
        params: {'stringValue': 'string', 'documentValue': false},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/json'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [DocumentTypeInputOutputRestJson1Serializer()],
    );
  });
  _i1.test('DocumentOutputArray (response)', () async {
    await _i2.httpResponseTest(
      operation: DocumentTypeOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'DocumentOutputArray',
        documentation: 'Document types can be JSON arrays.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
        authScheme: null,
        body:
            '{\n    "stringValue": "string",\n    "documentValue": [\n        true,\n        false\n    ]\n}',
        bodyMediaType: 'application/json',
        params: {
          'stringValue': 'string',
          'documentValue': [true, false],
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/json'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [DocumentTypeInputOutputRestJson1Serializer()],
    );
  });
}

class DocumentTypeInputOutputRestJson1Serializer
    extends _i3.StructuredSmithySerializer<DocumentTypeInputOutput> {
  const DocumentTypeInputOutputRestJson1Serializer()
    : super('DocumentTypeInputOutput');

  @override
  Iterable<Type> get types => const [DocumentTypeInputOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
  ];

  @override
  DocumentTypeInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DocumentTypeInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'stringValue':
          result.stringValue =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'documentValue':
          result.documentValue =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(_i4.JsonObject),
                  )
                  as _i4.JsonObject);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DocumentTypeInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
