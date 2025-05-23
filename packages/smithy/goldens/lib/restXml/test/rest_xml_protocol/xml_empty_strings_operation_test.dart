// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.xml_empty_strings_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_empty_strings_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/operation/xml_empty_strings_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('XmlEmptyStrings (request)', () async {
    await _i2.httpRequestTest(
      operation: XmlEmptyStringsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'XmlEmptyStrings',
        documentation: 'Serializes xml empty strings',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<XmlEmptyStringsInputOutput>\n    <emptyString></emptyString>\n</XmlEmptyStringsInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'emptyString': ''},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: _i2.AppliesTo.client,
        method: 'PUT',
        uri: '/XmlEmptyStrings',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [XmlEmptyStringsInputOutputRestXmlSerializer()],
    );
  });
  _i1.test('XmlEmptyStrings (response)', () async {
    await _i2.httpResponseTest(
      operation: XmlEmptyStringsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'XmlEmptyStrings',
        documentation: 'Deserializes xml empty strings',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<XmlEmptyStringsInputOutput>\n    <emptyString></emptyString>\n</XmlEmptyStringsInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'emptyString': ''},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: _i2.AppliesTo.client,
        code: 200,
      ),
      outputSerializers: const [XmlEmptyStringsInputOutputRestXmlSerializer()],
    );
  });
  _i1.test('XmlEmptySelfClosedStrings (response)', () async {
    await _i2.httpResponseTest(
      operation: XmlEmptyStringsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'XmlEmptySelfClosedStrings',
        documentation:
            'Empty self closed string are deserialized as empty string',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<XmlEmptyStringsInputOutput>\n    <emptyString/>\n</XmlEmptyStringsInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'emptyString': ''},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: _i2.AppliesTo.client,
        code: 200,
      ),
      outputSerializers: const [XmlEmptyStringsInputOutputRestXmlSerializer()],
    );
  });
}

class XmlEmptyStringsInputOutputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<XmlEmptyStringsInputOutput> {
  const XmlEmptyStringsInputOutputRestXmlSerializer()
    : super('XmlEmptyStringsInputOutput');

  @override
  Iterable<Type> get types => const [XmlEmptyStringsInputOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  XmlEmptyStringsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlEmptyStringsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'emptyString':
          result.emptyString =
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
    XmlEmptyStringsInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
