//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_payee_dto.g.dart';

/// UpdatePayeeDto
///
/// Properties:
/// * [payeeProfileId] - Optional reference to global PayeeProfile for standardized data (merchant info, i18n keys, categories)
/// * [customCategory] - User's custom category for this payee (overrides PayeeProfile category)
/// * [customTags] - User's custom tags for this payee (e.g., ['favorite', 'work_meal'])
/// * [meta] - Metadata for extended information (location, notes, contact info, etc.). Will merge with existing metadata.
/// * [isActive] - Enable or disable this payee. Disabled payees will not appear in autocomplete suggestions.
@BuiltValue()
abstract class UpdatePayeeDto implements Built<UpdatePayeeDto, UpdatePayeeDtoBuilder> {
  /// Optional reference to global PayeeProfile for standardized data (merchant info, i18n keys, categories)
  @BuiltValueField(wireName: r'payeeProfileId')
  String? get payeeProfileId;

  /// User's custom category for this payee (overrides PayeeProfile category)
  @BuiltValueField(wireName: r'customCategory')
  String? get customCategory;

  /// User's custom tags for this payee (e.g., ['favorite', 'work_meal'])
  @BuiltValueField(wireName: r'customTags')
  BuiltList<String>? get customTags;

  /// Metadata for extended information (location, notes, contact info, etc.). Will merge with existing metadata.
  @BuiltValueField(wireName: r'meta')
  JsonObject? get meta;

  /// Enable or disable this payee. Disabled payees will not appear in autocomplete suggestions.
  @BuiltValueField(wireName: r'isActive')
  bool? get isActive;

  UpdatePayeeDto._();

  factory UpdatePayeeDto([void updates(UpdatePayeeDtoBuilder b)]) = _$UpdatePayeeDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdatePayeeDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdatePayeeDto> get serializer => _$UpdatePayeeDtoSerializer();
}

class _$UpdatePayeeDtoSerializer implements PrimitiveSerializer<UpdatePayeeDto> {
  @override
  final Iterable<Type> types = const [UpdatePayeeDto, _$UpdatePayeeDto];

  @override
  final String wireName = r'UpdatePayeeDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdatePayeeDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.payeeProfileId != null) {
      yield r'payeeProfileId';
      yield serializers.serialize(
        object.payeeProfileId,
        specifiedType: const FullType(String),
      );
    }
    if (object.customCategory != null) {
      yield r'customCategory';
      yield serializers.serialize(
        object.customCategory,
        specifiedType: const FullType(String),
      );
    }
    if (object.customTags != null) {
      yield r'customTags';
      yield serializers.serialize(
        object.customTags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.meta != null) {
      yield r'meta';
      yield serializers.serialize(
        object.meta,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.isActive != null) {
      yield r'isActive';
      yield serializers.serialize(
        object.isActive,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdatePayeeDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdatePayeeDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payeeProfileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.payeeProfileId = valueDes;
          break;
        case r'customCategory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customCategory = valueDes;
          break;
        case r'customTags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.customTags.replace(valueDes);
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdatePayeeDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdatePayeeDtoBuilder();
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

