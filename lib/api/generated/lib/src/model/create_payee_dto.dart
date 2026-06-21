//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_payee_dto.g.dart';

/// CreatePayeeDto
///
/// Properties:
/// * [payee] - User's original payee name (e.g., 'Starbucks', 'McDonald'). This is the raw payee string as entered by the user.
/// * [payeeProfileId] - Optional reference to global PayeeProfile for standardized data (merchant info, i18n keys, categories)
/// * [customCategory] - User's custom category for this payee (overrides PayeeProfile category)
/// * [customTags] - User's custom tags for this payee (e.g., ['favorite', 'work_meal'])
/// * [meta] - Metadata for extended information (location, notes, contact info, etc.)
@BuiltValue()
abstract class CreatePayeeDto implements Built<CreatePayeeDto, CreatePayeeDtoBuilder> {
  /// User's original payee name (e.g., 'Starbucks', 'McDonald'). This is the raw payee string as entered by the user.
  @BuiltValueField(wireName: r'payee')
  String get payee;

  /// Optional reference to global PayeeProfile for standardized data (merchant info, i18n keys, categories)
  @BuiltValueField(wireName: r'payeeProfileId')
  String? get payeeProfileId;

  /// User's custom category for this payee (overrides PayeeProfile category)
  @BuiltValueField(wireName: r'customCategory')
  String? get customCategory;

  /// User's custom tags for this payee (e.g., ['favorite', 'work_meal'])
  @BuiltValueField(wireName: r'customTags')
  BuiltList<String>? get customTags;

  /// Metadata for extended information (location, notes, contact info, etc.)
  @BuiltValueField(wireName: r'meta')
  JsonObject? get meta;

  CreatePayeeDto._();

  factory CreatePayeeDto([void updates(CreatePayeeDtoBuilder b)]) = _$CreatePayeeDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreatePayeeDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreatePayeeDto> get serializer => _$CreatePayeeDtoSerializer();
}

class _$CreatePayeeDtoSerializer implements PrimitiveSerializer<CreatePayeeDto> {
  @override
  final Iterable<Type> types = const [CreatePayeeDto, _$CreatePayeeDto];

  @override
  final String wireName = r'CreatePayeeDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreatePayeeDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'payee';
    yield serializers.serialize(
      object.payee,
      specifiedType: const FullType(String),
    );
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
  }

  @override
  Object serialize(
    Serializers serializers,
    CreatePayeeDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreatePayeeDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.payee = valueDes;
          break;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreatePayeeDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePayeeDtoBuilder();
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

