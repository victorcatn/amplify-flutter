// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.json_maps_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/greeting_struct.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_maps_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/operation/json_maps_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('RestJsonJsonMaps (request)', () async {
    await _i2.httpRequestTest(
      operation: JsonMapsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'RestJsonJsonMaps',
        documentation: 'Serializes JSON maps',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
        authScheme: null,
        body:
            '{\n    "denseStructMap": {\n        "foo": {\n            "hi": "there"\n        },\n        "baz": {\n            "hi": "bye"\n        }\n    },\n    "sparseStructMap": {\n        "foo": {\n            "hi": "there"\n        },\n        "baz": {\n            "hi": "bye"\n        }\n    }\n}',
        bodyMediaType: 'application/json',
        params: {
          'denseStructMap': {
            'foo': {'hi': 'there'},
            'baz': {'hi': 'bye'},
          },
          'sparseStructMap': {
            'foo': {'hi': 'there'},
            'baz': {'hi': 'bye'},
          },
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/json'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/JsonMaps',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        JsonMapsInputOutputRestJson1Serializer(),
        GreetingStructRestJson1Serializer(),
      ],
    );
  });
  _i1.test('RestJsonSerializesNullMapValues (request)', () async {
    await _i2.httpRequestTest(
      operation: JsonMapsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'RestJsonSerializesNullMapValues',
        documentation: 'Serializes JSON map values in sparse maps',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
        authScheme: null,
        body:
            '{\n    "sparseBooleanMap": {\n        "x": null\n    },\n    "sparseNumberMap": {\n        "x": null\n    },\n    "sparseStringMap": {\n        "x": null\n    },\n    "sparseStructMap": {\n        "x": null\n    }\n}',
        bodyMediaType: 'application/json',
        params: {
          'sparseBooleanMap': {'x': null},
          'sparseNumberMap': {'x': null},
          'sparseStringMap': {'x': null},
          'sparseStructMap': {'x': null},
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/json'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/JsonMaps',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        JsonMapsInputOutputRestJson1Serializer(),
        GreetingStructRestJson1Serializer(),
      ],
    );
  });
  _i1.test('RestJsonSerializesZeroValuesInMaps (request)', () async {
    await _i2.httpRequestTest(
      operation: JsonMapsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'RestJsonSerializesZeroValuesInMaps',
        documentation:
            'Ensure that 0 and false are sent over the wire in all maps and lists',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
        authScheme: null,
        body:
            '{\n    "denseNumberMap": {\n        "x": 0\n    },\n    "sparseNumberMap": {\n        "x": 0\n    },\n    "denseBooleanMap": {\n        "x": false\n    },\n    "sparseBooleanMap": {\n        "x": false\n    }\n}',
        bodyMediaType: 'application/json',
        params: {
          'denseNumberMap': {'x': 0},
          'sparseNumberMap': {'x': 0},
          'denseBooleanMap': {'x': false},
          'sparseBooleanMap': {'x': false},
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/json'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/JsonMaps',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        JsonMapsInputOutputRestJson1Serializer(),
        GreetingStructRestJson1Serializer(),
      ],
    );
  });
  _i1.test(
    'RestJsonSerializesSparseSetMap (request)',
    () async {
      await _i2.httpRequestTest(
        operation: JsonMapsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonSerializesSparseSetMap',
          documentation: 'A request that contains a sparse map of sets',
          protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
          authScheme: null,
          body:
              '{\n    "sparseSetMap": {\n        "x": [],\n        "y": ["a", "b"]\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'sparseSetMap': {
              'x': [],
              'y': ['a', 'b'],
            },
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/JsonMaps',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          JsonMapsInputOutputRestJson1Serializer(),
          GreetingStructRestJson1Serializer(),
        ],
      );
    },
    skip: 'Cannot handle this at the moment (empty vs. null).',
  );
  _i1.test(
    'RestJsonSerializesDenseSetMap (request)',
    () async {
      await _i2.httpRequestTest(
        operation: JsonMapsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonSerializesDenseSetMap',
          documentation: 'A request that contains a dense map of sets.',
          protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
          authScheme: null,
          body:
              '{\n    "denseSetMap": {\n        "x": [],\n        "y": ["a", "b"]\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'denseSetMap': {
              'x': [],
              'y': ['a', 'b'],
            },
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/JsonMaps',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          JsonMapsInputOutputRestJson1Serializer(),
          GreetingStructRestJson1Serializer(),
        ],
      );
    },
    skip: 'Cannot handle this at the moment (empty vs. null).',
  );
  _i1.test(
    'RestJsonSerializesSparseSetMapAndRetainsNull (request)',
    () async {
      await _i2.httpRequestTest(
        operation: JsonMapsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonSerializesSparseSetMapAndRetainsNull',
          documentation: 'A request that contains a sparse map of sets.',
          protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
          authScheme: null,
          body:
              '{\n    "sparseSetMap": {\n        "x": [],\n        "y": ["a", "b"],\n        "z": null\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'sparseSetMap': {
              'x': [],
              'y': ['a', 'b'],
              'z': null,
            },
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/JsonMaps',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          JsonMapsInputOutputRestJson1Serializer(),
          GreetingStructRestJson1Serializer(),
        ],
      );
    },
    skip: 'Cannot handle this at the moment (empty vs. null).',
  );
  _i1.test('RestJsonJsonMaps (response)', () async {
    await _i2.httpResponseTest(
      operation: JsonMapsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'RestJsonJsonMaps',
        documentation: 'Deserializes JSON maps',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
        authScheme: null,
        body:
            '{\n    "denseStructMap": {\n        "foo": {\n            "hi": "there"\n        },\n        "baz": {\n            "hi": "bye"\n        }\n    },\n    "sparseStructMap": {\n        "foo": {\n            "hi": "there"\n        },\n        "baz": {\n            "hi": "bye"\n        }\n   }\n}',
        bodyMediaType: 'application/json',
        params: {
          'denseStructMap': {
            'foo': {'hi': 'there'},
            'baz': {'hi': 'bye'},
          },
          'sparseStructMap': {
            'foo': {'hi': 'there'},
            'baz': {'hi': 'bye'},
          },
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
      outputSerializers: const [
        JsonMapsInputOutputRestJson1Serializer(),
        GreetingStructRestJson1Serializer(),
      ],
    );
  });
  _i1.test('RestJsonDeserializesNullMapValues (response)', () async {
    await _i2.httpResponseTest(
      operation: JsonMapsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'RestJsonDeserializesNullMapValues',
        documentation: 'Deserializes null JSON map values',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
        authScheme: null,
        body:
            '{\n    "sparseBooleanMap": {\n        "x": null\n    },\n    "sparseNumberMap": {\n        "x": null\n    },\n    "sparseStringMap": {\n        "x": null\n    },\n    "sparseStructMap": {\n        "x": null\n    }\n}',
        bodyMediaType: 'application/json',
        params: {
          'sparseBooleanMap': {'x': null},
          'sparseNumberMap': {'x': null},
          'sparseStringMap': {'x': null},
          'sparseStructMap': {'x': null},
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
      outputSerializers: const [
        JsonMapsInputOutputRestJson1Serializer(),
        GreetingStructRestJson1Serializer(),
      ],
    );
  });
  _i1.test('RestJsonDeserializesZeroValuesInMaps (response)', () async {
    await _i2.httpResponseTest(
      operation: JsonMapsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'RestJsonDeserializesZeroValuesInMaps',
        documentation:
            'Ensure that 0 and false are sent over the wire in all maps and lists',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
        authScheme: null,
        body:
            '{\n    "denseNumberMap": {\n        "x": 0\n    },\n    "sparseNumberMap": {\n        "x": 0\n    },\n    "denseBooleanMap": {\n        "x": false\n    },\n    "sparseBooleanMap": {\n        "x": false\n    }\n}',
        bodyMediaType: 'application/json',
        params: {
          'denseNumberMap': {'x': 0},
          'sparseNumberMap': {'x': 0},
          'denseBooleanMap': {'x': false},
          'sparseBooleanMap': {'x': false},
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
      outputSerializers: const [
        JsonMapsInputOutputRestJson1Serializer(),
        GreetingStructRestJson1Serializer(),
      ],
    );
  });
  _i1.test('RestJsonDeserializesSparseSetMap (response)', () async {
    await _i2.httpResponseTest(
      operation: JsonMapsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'RestJsonDeserializesSparseSetMap',
        documentation: 'A response that contains a sparse map of sets',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
        authScheme: null,
        body:
            '{\n    "sparseSetMap": {\n        "x": [],\n        "y": ["a", "b"]\n    }\n}',
        bodyMediaType: 'application/json',
        params: {
          'sparseSetMap': {
            'x': [],
            'y': ['a', 'b'],
          },
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
      outputSerializers: const [
        JsonMapsInputOutputRestJson1Serializer(),
        GreetingStructRestJson1Serializer(),
      ],
    );
  });
  _i1.test('RestJsonDeserializesDenseSetMap (response)', () async {
    await _i2.httpResponseTest(
      operation: JsonMapsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'RestJsonDeserializesDenseSetMap',
        documentation: 'A response that contains a dense map of sets.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
        authScheme: null,
        body:
            '{\n    "denseSetMap": {\n        "x": [],\n        "y": ["a", "b"]\n    }\n}',
        bodyMediaType: 'application/json',
        params: {
          'denseSetMap': {
            'x': [],
            'y': ['a', 'b'],
          },
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
      outputSerializers: const [
        JsonMapsInputOutputRestJson1Serializer(),
        GreetingStructRestJson1Serializer(),
      ],
    );
  });
  _i1.test('RestJsonDeserializesSparseSetMapAndRetainsNull (response)', () async {
    await _i2.httpResponseTest(
      operation: JsonMapsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'RestJsonDeserializesSparseSetMapAndRetainsNull',
        documentation: 'A response that contains a sparse map of sets.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
        authScheme: null,
        body:
            '{\n    "sparseSetMap": {\n        "x": [],\n        "y": ["a", "b"],\n        "z": null\n    }\n}',
        bodyMediaType: 'application/json',
        params: {
          'sparseSetMap': {
            'x': [],
            'y': ['a', 'b'],
            'z': null,
          },
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
      outputSerializers: const [
        JsonMapsInputOutputRestJson1Serializer(),
        GreetingStructRestJson1Serializer(),
      ],
    );
  });
  _i1.test('RestJsonDeserializesDenseSetMapAndSkipsNull (response)', () async {
    await _i2.httpResponseTest(
      operation: JsonMapsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'RestJsonDeserializesDenseSetMapAndSkipsNull',
        documentation:
            'Clients SHOULD tolerate seeing a null value in a dense map, and they SHOULD\ndrop the null key-value pair.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
        authScheme: null,
        body:
            '{\n    "denseSetMap": {\n        "x": [],\n        "y": ["a", "b"],\n        "z": null\n    }\n}',
        bodyMediaType: 'application/json',
        params: {
          'denseSetMap': {
            'x': [],
            'y': ['a', 'b'],
          },
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/json'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: _i2.AppliesTo.client,
        code: 200,
      ),
      outputSerializers: const [
        JsonMapsInputOutputRestJson1Serializer(),
        GreetingStructRestJson1Serializer(),
      ],
    );
  });
}

class JsonMapsInputOutputRestJson1Serializer
    extends _i3.StructuredSmithySerializer<JsonMapsInputOutput> {
  const JsonMapsInputOutputRestJson1Serializer() : super('JsonMapsInputOutput');

  @override
  Iterable<Type> get types => const [JsonMapsInputOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
  ];

  @override
  JsonMapsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonMapsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'denseStructMap':
          result.denseStructMap.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i4.BuiltMap, [
                    FullType(String),
                    FullType(GreetingStruct),
                  ]),
                )
                as _i4.BuiltMap<String, GreetingStruct>),
          );
        case 'sparseStructMap':
          result.sparseStructMap.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i4.BuiltMap, [
                    FullType(String),
                    FullType.nullable(GreetingStruct),
                  ]),
                )
                as _i4.BuiltMap<String, GreetingStruct?>),
          );
        case 'denseNumberMap':
          result.denseNumberMap.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i4.BuiltMap, [
                    FullType(String),
                    FullType(int),
                  ]),
                )
                as _i4.BuiltMap<String, int>),
          );
        case 'denseBooleanMap':
          result.denseBooleanMap.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i4.BuiltMap, [
                    FullType(String),
                    FullType(bool),
                  ]),
                )
                as _i4.BuiltMap<String, bool>),
          );
        case 'denseStringMap':
          result.denseStringMap.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i4.BuiltMap, [
                    FullType(String),
                    FullType(String),
                  ]),
                )
                as _i4.BuiltMap<String, String>),
          );
        case 'sparseNumberMap':
          result.sparseNumberMap.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i4.BuiltMap, [
                    FullType(String),
                    FullType.nullable(int),
                  ]),
                )
                as _i4.BuiltMap<String, int?>),
          );
        case 'sparseBooleanMap':
          result.sparseBooleanMap.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i4.BuiltMap, [
                    FullType(String),
                    FullType.nullable(bool),
                  ]),
                )
                as _i4.BuiltMap<String, bool?>),
          );
        case 'sparseStringMap':
          result.sparseStringMap.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i4.BuiltMap, [
                    FullType(String),
                    FullType.nullable(String),
                  ]),
                )
                as _i4.BuiltMap<String, String?>),
          );
        case 'denseSetMap':
          result.denseSetMap.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i4.BuiltSetMultimap, [
                    FullType(String),
                    FullType(String),
                  ]),
                )
                as _i4.BuiltSetMultimap<String, String>),
          );
        case 'sparseSetMap':
          result.sparseSetMap.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i4.BuiltSetMultimap, [
                    FullType(String),
                    FullType(String),
                  ]),
                )
                as _i4.BuiltSetMultimap<String, String>),
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    JsonMapsInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class GreetingStructRestJson1Serializer
    extends _i3.StructuredSmithySerializer<GreetingStruct> {
  const GreetingStructRestJson1Serializer() : super('GreetingStruct');

  @override
  Iterable<Type> get types => const [GreetingStruct];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
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
