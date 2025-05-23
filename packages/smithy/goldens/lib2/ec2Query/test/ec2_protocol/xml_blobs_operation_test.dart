// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

// ignore_for_file: unused_element
library ec2_query_v2.ec2_protocol.test.xml_blobs_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i4;

import 'package:built_value/serializer.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/xml_blobs_output.dart';
import 'package:ec2_query_v2/src/ec2_protocol/operation/xml_blobs_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('Ec2XmlBlobs (response)', () async {
    await _i2.httpResponseTest(
      operation: XmlBlobsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'Ec2XmlBlobs',
        documentation: 'Blobs are base64 encoded',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'ec2Query'),
        authScheme: null,
        body:
            '<XmlBlobsResponse xmlns="https://example.com/">\n    <data>dmFsdWU=</data>\n    <RequestId>requestid</RequestId>\n</XmlBlobsResponse>\n',
        bodyMediaType: 'application/xml',
        params: {'data': 'value'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'text/xml;charset=UTF-8'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [XmlBlobsOutputEc2QuerySerializer()],
    );
  });
}

class XmlBlobsOutputEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<XmlBlobsOutput> {
  const XmlBlobsOutputEc2QuerySerializer() : super('XmlBlobsOutput');

  @override
  Iterable<Type> get types => const [XmlBlobsOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'ec2Query'),
  ];

  @override
  XmlBlobsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlBlobsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'data':
          result.data =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(_i4.Uint8List),
                  )
                  as _i4.Uint8List);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    XmlBlobsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
