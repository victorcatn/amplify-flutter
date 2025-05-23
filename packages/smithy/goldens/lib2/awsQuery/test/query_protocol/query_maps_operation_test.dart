// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

// ignore_for_file: unused_element
library aws_query_v2.query_protocol.test.query_maps_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v2/src/query_protocol/model/greeting_struct.dart';
import 'package:aws_query_v2/src/query_protocol/model/nested_struct_with_map.dart';
import 'package:aws_query_v2/src/query_protocol/model/query_maps_input.dart';
import 'package:aws_query_v2/src/query_protocol/operation/query_maps_operation.dart';
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('QuerySimpleQueryMaps (request)', () async {
    await _i2.httpRequestTest(
      operation: QueryMapsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'QuerySimpleQueryMaps',
        documentation: 'Serializes query maps',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsQuery'),
        authScheme: null,
        body:
            'Action=QueryMaps&Version=2020-01-08&MapArg.entry.1.key=bar&MapArg.entry.1.value=Bar&MapArg.entry.2.key=foo&MapArg.entry.2.value=Foo',
        bodyMediaType: 'application/x-www-form-urlencoded',
        params: {
          'MapArg': {'bar': 'Bar', 'foo': 'Foo'},
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
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
      inputSerializers: const [
        QueryMapsInputAwsQuerySerializer(),
        GreetingStructAwsQuerySerializer(),
        NestedStructWithMapAwsQuerySerializer(),
      ],
    );
  });
  _i1.test('QuerySimpleQueryMapsWithXmlName (request)', () async {
    await _i2.httpRequestTest(
      operation: QueryMapsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'QuerySimpleQueryMapsWithXmlName',
        documentation: 'Serializes query maps and uses xmlName',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsQuery'),
        authScheme: null,
        body:
            'Action=QueryMaps&Version=2020-01-08&Foo.entry.1.key=foo&Foo.entry.1.value=Foo',
        bodyMediaType: 'application/x-www-form-urlencoded',
        params: {
          'RenamedMapArg': {'foo': 'Foo'},
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
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
      inputSerializers: const [
        QueryMapsInputAwsQuerySerializer(),
        GreetingStructAwsQuerySerializer(),
        NestedStructWithMapAwsQuerySerializer(),
      ],
    );
  });
  _i1.test('QueryComplexQueryMaps (request)', () async {
    await _i2.httpRequestTest(
      operation: QueryMapsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'QueryComplexQueryMaps',
        documentation: 'Serializes complex query maps',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsQuery'),
        authScheme: null,
        body:
            'Action=QueryMaps&Version=2020-01-08&ComplexMapArg.entry.1.key=bar&ComplexMapArg.entry.1.value.hi=Bar&ComplexMapArg.entry.2.key=foo&ComplexMapArg.entry.2.value.hi=Foo',
        bodyMediaType: 'application/x-www-form-urlencoded',
        params: {
          'ComplexMapArg': {
            'bar': {'hi': 'Bar'},
            'foo': {'hi': 'Foo'},
          },
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
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
      inputSerializers: const [
        QueryMapsInputAwsQuerySerializer(),
        GreetingStructAwsQuerySerializer(),
        NestedStructWithMapAwsQuerySerializer(),
      ],
    );
  });
  _i1.test('QueryEmptyQueryMaps (request)', () async {
    await _i2.httpRequestTest(
      operation: QueryMapsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'QueryEmptyQueryMaps',
        documentation: 'Does not serialize empty query maps',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsQuery'),
        authScheme: null,
        body: 'Action=QueryMaps&Version=2020-01-08',
        bodyMediaType: 'application/x-www-form-urlencoded',
        params: {'MapArg': {}},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
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
      inputSerializers: const [
        QueryMapsInputAwsQuerySerializer(),
        GreetingStructAwsQuerySerializer(),
        NestedStructWithMapAwsQuerySerializer(),
      ],
    );
  });
  _i1.test('QueryQueryMapWithMemberXmlName (request)', () async {
    await _i2.httpRequestTest(
      operation: QueryMapsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'QueryQueryMapWithMemberXmlName',
        documentation:
            'Serializes query maps where the member has an xmlName trait',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsQuery'),
        authScheme: null,
        body:
            'Action=QueryMaps&Version=2020-01-08&MapWithXmlMemberName.entry.1.K=bar&MapWithXmlMemberName.entry.1.V=Bar&MapWithXmlMemberName.entry.2.K=foo&MapWithXmlMemberName.entry.2.V=Foo',
        bodyMediaType: 'application/x-www-form-urlencoded',
        params: {
          'MapWithXmlMemberName': {'bar': 'Bar', 'foo': 'Foo'},
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
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
      inputSerializers: const [
        QueryMapsInputAwsQuerySerializer(),
        GreetingStructAwsQuerySerializer(),
        NestedStructWithMapAwsQuerySerializer(),
      ],
    );
  });
  _i1.test('QueryFlattenedQueryMaps (request)', () async {
    await _i2.httpRequestTest(
      operation: QueryMapsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'QueryFlattenedQueryMaps',
        documentation: 'Serializes flattened query maps',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsQuery'),
        authScheme: null,
        body:
            'Action=QueryMaps&Version=2020-01-08&FlattenedMap.1.key=bar&FlattenedMap.1.value=Bar&FlattenedMap.2.key=foo&FlattenedMap.2.value=Foo',
        bodyMediaType: 'application/x-www-form-urlencoded',
        params: {
          'FlattenedMap': {'bar': 'Bar', 'foo': 'Foo'},
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
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
      inputSerializers: const [
        QueryMapsInputAwsQuerySerializer(),
        GreetingStructAwsQuerySerializer(),
        NestedStructWithMapAwsQuerySerializer(),
      ],
    );
  });
  _i1.test('QueryFlattenedQueryMapsWithXmlName (request)', () async {
    await _i2.httpRequestTest(
      operation: QueryMapsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'QueryFlattenedQueryMapsWithXmlName',
        documentation: 'Serializes flattened query maps that use an xmlName',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsQuery'),
        authScheme: null,
        body:
            'Action=QueryMaps&Version=2020-01-08&Hi.1.K=bar&Hi.1.V=Bar&Hi.2.K=foo&Hi.2.V=Foo',
        bodyMediaType: 'application/x-www-form-urlencoded',
        params: {
          'FlattenedMapWithXmlName': {'bar': 'Bar', 'foo': 'Foo'},
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
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
      inputSerializers: const [
        QueryMapsInputAwsQuerySerializer(),
        GreetingStructAwsQuerySerializer(),
        NestedStructWithMapAwsQuerySerializer(),
      ],
    );
  });
  _i1.test('QueryQueryMapOfLists (request)', () async {
    await _i2.httpRequestTest(
      operation: QueryMapsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'QueryQueryMapOfLists',
        documentation: 'Serializes query map of lists',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsQuery'),
        authScheme: null,
        body:
            'Action=QueryMaps&Version=2020-01-08&MapOfLists.entry.1.key=bar&MapOfLists.entry.1.value.member.1=C&MapOfLists.entry.1.value.member.2=D&MapOfLists.entry.2.key=foo&MapOfLists.entry.2.value.member.1=A&MapOfLists.entry.2.value.member.2=B',
        bodyMediaType: 'application/x-www-form-urlencoded',
        params: {
          'MapOfLists': {
            'bar': ['C', 'D'],
            'foo': ['A', 'B'],
          },
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
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
      inputSerializers: const [
        QueryMapsInputAwsQuerySerializer(),
        GreetingStructAwsQuerySerializer(),
        NestedStructWithMapAwsQuerySerializer(),
      ],
    );
  });
  _i1.test('QueryNestedStructWithMap (request)', () async {
    await _i2.httpRequestTest(
      operation: QueryMapsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'QueryNestedStructWithMap',
        documentation: 'Serializes nested struct with map member',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsQuery'),
        authScheme: null,
        body:
            'Action=QueryMaps&Version=2020-01-08&NestedStructWithMap.MapArg.entry.1.key=bar&NestedStructWithMap.MapArg.entry.1.value=Bar&NestedStructWithMap.MapArg.entry.2.key=foo&NestedStructWithMap.MapArg.entry.2.value=Foo',
        bodyMediaType: 'application/x-www-form-urlencoded',
        params: {
          'NestedStructWithMap': {
            'MapArg': {'bar': 'Bar', 'foo': 'Foo'},
          },
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
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
      inputSerializers: const [
        QueryMapsInputAwsQuerySerializer(),
        GreetingStructAwsQuerySerializer(),
        NestedStructWithMapAwsQuerySerializer(),
      ],
    );
  });
}

class QueryMapsInputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<QueryMapsInput> {
  const QueryMapsInputAwsQuerySerializer() : super('QueryMapsInput');

  @override
  Iterable<Type> get types => const [QueryMapsInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsQuery'),
  ];

  @override
  QueryMapsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueryMapsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'MapArg':
          result.mapArg.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i4.BuiltMap, [
                    FullType(String),
                    FullType(String),
                  ]),
                )
                as _i4.BuiltMap<String, String>),
          );
        case 'RenamedMapArg':
          result.renamedMapArg.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i4.BuiltMap, [
                    FullType(String),
                    FullType(String),
                  ]),
                )
                as _i4.BuiltMap<String, String>),
          );
        case 'ComplexMapArg':
          result.complexMapArg.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i4.BuiltMap, [
                    FullType(String),
                    FullType(GreetingStruct),
                  ]),
                )
                as _i4.BuiltMap<String, GreetingStruct>),
          );
        case 'MapWithXmlMemberName':
          result.mapWithXmlMemberName.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i4.BuiltMap, [
                    FullType(String),
                    FullType(String),
                  ]),
                )
                as _i4.BuiltMap<String, String>),
          );
        case 'FlattenedMap':
          result.flattenedMap.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i4.BuiltMap, [
                    FullType(String),
                    FullType(String),
                  ]),
                )
                as _i4.BuiltMap<String, String>),
          );
        case 'FlattenedMapWithXmlName':
          result.flattenedMapWithXmlName.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i4.BuiltMap, [
                    FullType(String),
                    FullType(String),
                  ]),
                )
                as _i4.BuiltMap<String, String>),
          );
        case 'MapOfLists':
          result.mapOfLists.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i4.BuiltListMultimap, [
                    FullType(String),
                    FullType(String),
                  ]),
                )
                as _i4.BuiltListMultimap<String, String>),
          );
        case 'NestedStructWithMap':
          result.nestedStructWithMap.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(NestedStructWithMap),
                )
                as NestedStructWithMap),
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    QueryMapsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class GreetingStructAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<GreetingStruct> {
  const GreetingStructAwsQuerySerializer() : super('GreetingStruct');

  @override
  Iterable<Type> get types => const [GreetingStruct];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsQuery'),
  ];

  @override
  GreetingStruct deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GreetingStructBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'hi':
          result.hi =
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
    GreetingStruct object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class NestedStructWithMapAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<NestedStructWithMap> {
  const NestedStructWithMapAwsQuerySerializer() : super('NestedStructWithMap');

  @override
  Iterable<Type> get types => const [NestedStructWithMap];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsQuery'),
  ];

  @override
  NestedStructWithMap deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NestedStructWithMapBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'MapArg':
          result.mapArg.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i4.BuiltMap, [
                    FullType(String),
                    FullType(String),
                  ]),
                )
                as _i4.BuiltMap<String, String>),
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NestedStructWithMap object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
