//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_posting_dto.g.dart';

/// CreatePostingDto
///
/// Properties:
/// * [account] - Account name in Beancount format (must start with uppercase, colon-separated)
/// * [units] - Amount as decimal string (max 15 integer + 15 decimal digits). Can be omitted for interpolation, but currency must also be omitted.
/// * [currency] - Currency/commodity code. Required if units is provided, must be omitted if units is omitted.
/// * [meta] - Posting-level metadata
@BuiltValue()
abstract class CreatePostingDto
    implements Built<CreatePostingDto, CreatePostingDtoBuilder> {
  /// Account name in Beancount format (must start with uppercase, colon-separated)
  @BuiltValueField(wireName: r'account')
  String get account;

  /// Amount as decimal string (max 15 integer + 15 decimal digits). Can be omitted for interpolation, but currency must also be omitted.
  @BuiltValueField(wireName: r'units')
  String? get units;

  /// Currency/commodity code. Required if units is provided, must be omitted if units is omitted.
  @BuiltValueField(wireName: r'currency')
  String? get currency;

  /// Posting-level metadata
  @BuiltValueField(wireName: r'meta')
  JsonObject? get meta;

  CreatePostingDto._();

  factory CreatePostingDto([void updates(CreatePostingDtoBuilder b)]) =
      _$CreatePostingDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreatePostingDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreatePostingDto> get serializer =>
      _$CreatePostingDtoSerializer();
}

class _$CreatePostingDtoSerializer
    implements PrimitiveSerializer<CreatePostingDto> {
  @override
  final Iterable<Type> types = const [CreatePostingDto, _$CreatePostingDto];

  @override
  final String wireName = r'CreatePostingDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreatePostingDto object, {
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
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreatePostingDto object, {
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
    required CreatePostingDtoBuilder result,
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
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.meta = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreatePostingDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePostingDtoBuilder();
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
