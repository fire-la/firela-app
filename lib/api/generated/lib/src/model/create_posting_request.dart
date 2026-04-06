//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_posting_request.g.dart';

/// CreatePostingRequest
///
/// Properties:
/// * [account] - Full Beancount account path (e.g., \"Assets:Bank:Checking\")
/// * [units] - Decimal string for precision (e.g., \"100.50\")
/// * [currency] - Currency code if units provided
/// * [meta]
@BuiltValue()
abstract class CreatePostingRequest
    implements Built<CreatePostingRequest, CreatePostingRequestBuilder> {
  /// Full Beancount account path (e.g., \"Assets:Bank:Checking\")
  @BuiltValueField(wireName: r'account')
  String get account;

  /// Decimal string for precision (e.g., \"100.50\")
  @BuiltValueField(wireName: r'units')
  String? get units;

  /// Currency code if units provided
  @BuiltValueField(wireName: r'currency')
  String? get currency;

  @BuiltValueField(wireName: r'meta')
  BuiltMap<String, JsonObject?>? get meta;

  CreatePostingRequest._();

  factory CreatePostingRequest([void updates(CreatePostingRequestBuilder b)]) =
      _$CreatePostingRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreatePostingRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreatePostingRequest> get serializer =>
      _$CreatePostingRequestSerializer();
}

class _$CreatePostingRequestSerializer
    implements PrimitiveSerializer<CreatePostingRequest> {
  @override
  final Iterable<Type> types = const [
    CreatePostingRequest,
    _$CreatePostingRequest
  ];

  @override
  final String wireName = r'CreatePostingRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreatePostingRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'account';
    yield serializers.serialize(
      object.account,
      specifiedType: const FullType(String),
    );
    if (object.units != null) {
      yield r'units';
      yield serializers.serialize(
        object.units,
        specifiedType: const FullType(String),
      );
    }
    if (object.currency != null) {
      yield r'currency';
      yield serializers.serialize(
        object.currency,
        specifiedType: const FullType(String),
      );
    }
    if (object.meta != null) {
      yield r'meta';
      yield serializers.serialize(
        object.meta,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreatePostingRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreatePostingRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.account = valueDes;
          break;
        case r'units':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.units = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.meta.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreatePostingRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePostingRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
