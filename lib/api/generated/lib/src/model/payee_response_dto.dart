//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payee_response_dto.g.dart';

/// PayeeResponseDto
///
/// Properties:
/// * [id] - Unique identifier (UUID)
/// * [userId] - User ID (owner of this payee mapping)
/// * [payee] - User's original payee name (e.g., 'Starbucks', 'McDonald')
/// * [customTags] - User's custom tags (e.g., ['favorite', 'work_meal'])
/// * [useCount] - Usage count (number of times this payee was used in transactions)
/// * [lastUsedAt] - Last used timestamp
/// * [meta] - Extended metadata (location, notes, contact info, etc.)
/// * [isActive] - Active status (inactive payees hidden from autocomplete)
/// * [createdAt] - Creation timestamp (first time this payee was used)
/// * [updatedAt] - Last update timestamp
/// * [payeeProfileId] - Reference to global PayeeProfile (merchant info, i18n keys, categories)
/// * [customCategory] - User's custom category (overrides PayeeProfile category if set)
@BuiltValue()
abstract class PayeeResponseDto
    implements Built<PayeeResponseDto, PayeeResponseDtoBuilder> {
  /// Unique identifier (UUID)
  @BuiltValueField(wireName: r'id')
  String get id;

  /// User ID (owner of this payee mapping)
  @BuiltValueField(wireName: r'userId')
  String get userId;

  /// User's original payee name (e.g., 'Starbucks', 'McDonald')
  @BuiltValueField(wireName: r'payee')
  String get payee;

  /// User's custom tags (e.g., ['favorite', 'work_meal'])
  @BuiltValueField(wireName: r'customTags')
  BuiltList<String> get customTags;

  /// Usage count (number of times this payee was used in transactions)
  @BuiltValueField(wireName: r'useCount')
  num get useCount;

  /// Last used timestamp
  @BuiltValueField(wireName: r'lastUsedAt')
  DateTime get lastUsedAt;

  /// Extended metadata (location, notes, contact info, etc.)
  @BuiltValueField(wireName: r'meta')
  JsonObject get meta;

  /// Active status (inactive payees hidden from autocomplete)
  @BuiltValueField(wireName: r'isActive')
  bool get isActive;

  /// Creation timestamp (first time this payee was used)
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  /// Last update timestamp
  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  /// Reference to global PayeeProfile (merchant info, i18n keys, categories)
  @BuiltValueField(wireName: r'payeeProfileId')
  JsonObject? get payeeProfileId;

  /// User's custom category (overrides PayeeProfile category if set)
  @BuiltValueField(wireName: r'customCategory')
  JsonObject? get customCategory;

  PayeeResponseDto._();

  factory PayeeResponseDto([void updates(PayeeResponseDtoBuilder b)]) =
      _$PayeeResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PayeeResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PayeeResponseDto> get serializer =>
      _$PayeeResponseDtoSerializer();
}

class _$PayeeResponseDtoSerializer
    implements PrimitiveSerializer<PayeeResponseDto> {
  @override
  final Iterable<Type> types = const [PayeeResponseDto, _$PayeeResponseDto];

  @override
  final String wireName = r'PayeeResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PayeeResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'userId';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(String),
    );
    yield r'payee';
    yield serializers.serialize(
      object.payee,
      specifiedType: const FullType(String),
    );
    yield r'customTags';
    yield serializers.serialize(
      object.customTags,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'useCount';
    yield serializers.serialize(
      object.useCount,
      specifiedType: const FullType(num),
    );
    yield r'lastUsedAt';
    yield serializers.serialize(
      object.lastUsedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'meta';
    yield serializers.serialize(
      object.meta,
      specifiedType: const FullType(JsonObject),
    );
    yield r'isActive';
    yield serializers.serialize(
      object.isActive,
      specifiedType: const FullType(bool),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.payeeProfileId != null) {
      yield r'payeeProfileId';
      yield serializers.serialize(
        object.payeeProfileId,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.customCategory != null) {
      yield r'customCategory';
      yield serializers.serialize(
        object.customCategory,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PayeeResponseDto object, {
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
    required PayeeResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'payee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.payee = valueDes;
          break;
        case r'customTags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.customTags.replace(valueDes);
          break;
        case r'useCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.useCount = valueDes;
          break;
        case r'lastUsedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastUsedAt = valueDes;
          break;
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.meta = valueDes;
          break;
        case r'isActive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'payeeProfileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.payeeProfileId = valueDes;
          break;
        case r'customCategory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.customCategory = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PayeeResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PayeeResponseDtoBuilder();
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
