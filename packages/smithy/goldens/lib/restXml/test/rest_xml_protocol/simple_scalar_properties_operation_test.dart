// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.simple_scalar_properties_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/simple_scalar_properties_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/operation/simple_scalar_properties_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('SimpleScalarProperties (request)', () async {
    await _i2.httpRequestTest(
      operation: SimpleScalarPropertiesOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'SimpleScalarProperties',
        documentation: 'Serializes simple scalar properties',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<SimpleScalarPropertiesInputOutput>\n    <stringValue>string</stringValue>\n    <trueBooleanValue>true</trueBooleanValue>\n    <falseBooleanValue>false</falseBooleanValue>\n    <byteValue>1</byteValue>\n    <shortValue>2</shortValue>\n    <integerValue>3</integerValue>\n    <longValue>4</longValue>\n    <floatValue>5.5</floatValue>\n    <DoubleDribble>6.5</DoubleDribble>\n</SimpleScalarPropertiesInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {
          'foo': 'Foo',
          'stringValue': 'string',
          'trueBooleanValue': true,
          'falseBooleanValue': false,
          'byteValue': 1,
          'shortValue': 2,
          'integerValue': 3,
          'longValue': 4,
          'floatValue': 5.5,
          'doubleValue': 6.5,
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml', 'X-Foo': 'Foo'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'PUT',
        uri: '/SimpleScalarProperties',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        SimpleScalarPropertiesInputOutputRestXmlSerializer(),
      ],
    );
  });
  _i1.test('SimpleScalarPropertiesWithEscapedCharacter (request)', () async {
    await _i2.httpRequestTest(
      operation: SimpleScalarPropertiesOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'SimpleScalarPropertiesWithEscapedCharacter',
        documentation: 'Serializes string with escaping',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<SimpleScalarPropertiesInputOutput>\n    <stringValue>&lt;string&gt;</stringValue>\n</SimpleScalarPropertiesInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'foo': 'Foo', 'stringValue': '<string>'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml', 'X-Foo': 'Foo'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'PUT',
        uri: '/SimpleScalarProperties',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        SimpleScalarPropertiesInputOutputRestXmlSerializer(),
      ],
    );
  });
  _i1.test('SimpleScalarPropertiesWithWhiteSpace (request)', () async {
    await _i2.httpRequestTest(
      operation: SimpleScalarPropertiesOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'SimpleScalarPropertiesWithWhiteSpace',
        documentation: 'Serializes string containing white space',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<SimpleScalarPropertiesInputOutput>\n    <stringValue>  string with white    space  </stringValue>\n</SimpleScalarPropertiesInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'foo': 'Foo', 'stringValue': '  string with white    space  '},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml', 'X-Foo': 'Foo'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'PUT',
        uri: '/SimpleScalarProperties',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        SimpleScalarPropertiesInputOutputRestXmlSerializer(),
      ],
    );
  });
  _i1.test('SimpleScalarPropertiesPureWhiteSpace (request)', () async {
    await _i2.httpRequestTest(
      operation: SimpleScalarPropertiesOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'SimpleScalarPropertiesPureWhiteSpace',
        documentation: 'Serializes string containing exclusively whitespace',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<SimpleScalarPropertiesInputOutput>\n    <stringValue>   </stringValue>\n</SimpleScalarPropertiesInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'foo': 'Foo', 'stringValue': '   '},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml', 'X-Foo': 'Foo'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'PUT',
        uri: '/SimpleScalarProperties',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        SimpleScalarPropertiesInputOutputRestXmlSerializer(),
      ],
    );
  });
  _i1.test('RestXmlSupportsNaNFloatInputs (request)', () async {
    await _i2.httpRequestTest(
      operation: SimpleScalarPropertiesOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'RestXmlSupportsNaNFloatInputs',
        documentation: 'Supports handling NaN float values.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<SimpleScalarPropertiesInputOutput>\n    <floatValue>NaN</floatValue>\n    <DoubleDribble>NaN</DoubleDribble>\n</SimpleScalarPropertiesInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'floatValue': 'NaN', 'doubleValue': 'NaN'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'PUT',
        uri: '/SimpleScalarProperties',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        SimpleScalarPropertiesInputOutputRestXmlSerializer(),
      ],
    );
  });
  _i1.test('RestXmlSupportsInfinityFloatInputs (request)', () async {
    await _i2.httpRequestTest(
      operation: SimpleScalarPropertiesOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'RestXmlSupportsInfinityFloatInputs',
        documentation: 'Supports handling Infinity float values.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<SimpleScalarPropertiesInputOutput>\n    <floatValue>Infinity</floatValue>\n    <DoubleDribble>Infinity</DoubleDribble>\n</SimpleScalarPropertiesInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'floatValue': 'Infinity', 'doubleValue': 'Infinity'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'PUT',
        uri: '/SimpleScalarProperties',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        SimpleScalarPropertiesInputOutputRestXmlSerializer(),
      ],
    );
  });
  _i1.test('RestXmlSupportsNegativeInfinityFloatInputs (request)', () async {
    await _i2.httpRequestTest(
      operation: SimpleScalarPropertiesOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'RestXmlSupportsNegativeInfinityFloatInputs',
        documentation: 'Supports handling -Infinity float values.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<SimpleScalarPropertiesInputOutput>\n    <floatValue>-Infinity</floatValue>\n    <DoubleDribble>-Infinity</DoubleDribble>\n</SimpleScalarPropertiesInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'floatValue': '-Infinity', 'doubleValue': '-Infinity'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'PUT',
        uri: '/SimpleScalarProperties',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        SimpleScalarPropertiesInputOutputRestXmlSerializer(),
      ],
    );
  });
  _i1.test('SimpleScalarProperties (response)', () async {
    await _i2.httpResponseTest(
      operation: SimpleScalarPropertiesOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'SimpleScalarProperties',
        documentation: 'Serializes simple scalar properties',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<SimpleScalarPropertiesInputOutput>\n    <stringValue>string</stringValue>\n    <trueBooleanValue>true</trueBooleanValue>\n    <falseBooleanValue>false</falseBooleanValue>\n    <byteValue>1</byteValue>\n    <shortValue>2</shortValue>\n    <integerValue>3</integerValue>\n    <longValue>4</longValue>\n    <floatValue>5.5</floatValue>\n    <DoubleDribble>6.5</DoubleDribble>\n</SimpleScalarPropertiesInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {
          'foo': 'Foo',
          'stringValue': 'string',
          'trueBooleanValue': true,
          'falseBooleanValue': false,
          'byteValue': 1,
          'shortValue': 2,
          'integerValue': 3,
          'longValue': 4,
          'floatValue': 5.5,
          'doubleValue': 6.5,
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml', 'X-Foo': 'Foo'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        SimpleScalarPropertiesInputOutputRestXmlSerializer(),
      ],
    );
  });
  _i1.test('SimpleScalarPropertiesComplexEscapes (response)', () async {
    await _i2.httpResponseTest(
      operation: SimpleScalarPropertiesOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'SimpleScalarPropertiesComplexEscapes',
        documentation:
            'Serializes string with escaping.\n\nThis validates the three escape types: literal, decimal and hexadecimal. It also validates that unescaping properly\nhandles the case where unescaping an & produces a newly formed escape sequence (this should not be re-unescaped).\n\nServers may produce different output, this test is designed different unescapes clients must handle\n',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<SimpleScalarPropertiesInputOutput>\n    <stringValue>escaped data: &amp;lt;&#xD;&#10;</stringValue>\n</SimpleScalarPropertiesInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'foo': 'Foo', 'stringValue': 'escaped data: &lt;\r\n'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml', 'X-Foo': 'Foo'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: _i2.AppliesTo.client,
        code: 200,
      ),
      outputSerializers: const [
        SimpleScalarPropertiesInputOutputRestXmlSerializer(),
      ],
    );
  });
  _i1.test('SimpleScalarPropertiesWithEscapedCharacter (response)', () async {
    await _i2.httpResponseTest(
      operation: SimpleScalarPropertiesOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'SimpleScalarPropertiesWithEscapedCharacter',
        documentation: 'Serializes string with escaping',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<SimpleScalarPropertiesInputOutput>\n    <stringValue>&lt;string&gt;</stringValue>\n</SimpleScalarPropertiesInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'foo': 'Foo', 'stringValue': '<string>'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml', 'X-Foo': 'Foo'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        SimpleScalarPropertiesInputOutputRestXmlSerializer(),
      ],
    );
  });
  _i1.test('SimpleScalarPropertiesWithXMLPreamble (response)', () async {
    await _i2.httpResponseTest(
      operation: SimpleScalarPropertiesOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'SimpleScalarPropertiesWithXMLPreamble',
        documentation:
            'Serializes simple scalar properties with xml preamble, comments and CDATA',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<?xml version = "1.0" encoding = "UTF-8"?>\n<SimpleScalarPropertiesInputOutput>\n    <![CDATA[characters representing CDATA]]>\n    <stringValue>string</stringValue>\n    <!--xml comment-->\n</SimpleScalarPropertiesInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'foo': 'Foo', 'stringValue': 'string'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml', 'X-Foo': 'Foo'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        SimpleScalarPropertiesInputOutputRestXmlSerializer(),
      ],
    );
  });
  _i1.test('SimpleScalarPropertiesWithWhiteSpace (response)', () async {
    await _i2.httpResponseTest(
      operation: SimpleScalarPropertiesOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'SimpleScalarPropertiesWithWhiteSpace',
        documentation: 'Serializes string containing white space',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<?xml version = "1.0" encoding = "UTF-8"?>\n<SimpleScalarPropertiesInputOutput>\n    <stringValue> string with white    space </stringValue>\n</SimpleScalarPropertiesInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'foo': 'Foo', 'stringValue': ' string with white    space '},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml', 'X-Foo': 'Foo'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        SimpleScalarPropertiesInputOutputRestXmlSerializer(),
      ],
    );
  });
  _i1.test('SimpleScalarPropertiesPureWhiteSpace (response)', () async {
    await _i2.httpResponseTest(
      operation: SimpleScalarPropertiesOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'SimpleScalarPropertiesPureWhiteSpace',
        documentation: 'Serializes string containing white space',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<?xml version = "1.0" encoding = "UTF-8"?>\n<SimpleScalarPropertiesInputOutput>\n    <stringValue>  </stringValue>\n</SimpleScalarPropertiesInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'foo': 'Foo', 'stringValue': '  '},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml', 'X-Foo': 'Foo'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        SimpleScalarPropertiesInputOutputRestXmlSerializer(),
      ],
    );
  });
  _i1.test('RestXmlSupportsNaNFloatOutputs (response)', () async {
    await _i2.httpResponseTest(
      operation: SimpleScalarPropertiesOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'RestXmlSupportsNaNFloatOutputs',
        documentation: 'Supports handling NaN float values.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<SimpleScalarPropertiesInputOutput>\n    <floatValue>NaN</floatValue>\n    <DoubleDribble>NaN</DoubleDribble>\n</SimpleScalarPropertiesInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'floatValue': 'NaN', 'doubleValue': 'NaN'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        SimpleScalarPropertiesInputOutputRestXmlSerializer(),
      ],
    );
  });
  _i1.test('RestXmlSupportsInfinityFloatOutputs (response)', () async {
    await _i2.httpResponseTest(
      operation: SimpleScalarPropertiesOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'RestXmlSupportsInfinityFloatOutputs',
        documentation: 'Supports handling Infinity float values.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<SimpleScalarPropertiesInputOutput>\n    <floatValue>Infinity</floatValue>\n    <DoubleDribble>Infinity</DoubleDribble>\n</SimpleScalarPropertiesInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'floatValue': 'Infinity', 'doubleValue': 'Infinity'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        SimpleScalarPropertiesInputOutputRestXmlSerializer(),
      ],
    );
  });
  _i1.test('RestXmlSupportsNegativeInfinityFloatOutputs (response)', () async {
    await _i2.httpResponseTest(
      operation: SimpleScalarPropertiesOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'RestXmlSupportsNegativeInfinityFloatOutputs',
        documentation: 'Supports handling -Infinity float values.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<SimpleScalarPropertiesInputOutput>\n    <floatValue>-Infinity</floatValue>\n    <DoubleDribble>-Infinity</DoubleDribble>\n</SimpleScalarPropertiesInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'floatValue': '-Infinity', 'doubleValue': '-Infinity'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        SimpleScalarPropertiesInputOutputRestXmlSerializer(),
      ],
    );
  });
}

class SimpleScalarPropertiesInputOutputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<SimpleScalarPropertiesInputOutput> {
  const SimpleScalarPropertiesInputOutputRestXmlSerializer()
    : super('SimpleScalarPropertiesInputOutput');

  @override
  Iterable<Type> get types => const [SimpleScalarPropertiesInputOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  SimpleScalarPropertiesInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SimpleScalarPropertiesInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'foo':
          result.foo =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'stringValue':
          result.stringValue =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'trueBooleanValue':
          result.trueBooleanValue =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool);
        case 'falseBooleanValue':
          result.falseBooleanValue =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool);
        case 'byteValue':
          result.byteValue =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )
                  as int);
        case 'shortValue':
          result.shortValue =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )
                  as int);
        case 'integerValue':
          result.integerValue =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )
                  as int);
        case 'longValue':
          result.longValue =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(_i4.Int64),
                  )
                  as _i4.Int64);
        case 'floatValue':
          result.floatValue =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(double),
                  )
                  as double);
        case 'doubleValue':
          result.doubleValue =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(double),
                  )
                  as double);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SimpleScalarPropertiesInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
