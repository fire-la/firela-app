//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_platform_dto.g.dart';

/// UpdatePlatformDto
///
/// Properties:
/// * [name] - Platform name
/// * [canonical] - Platform canonical identifier (lowercase, kebab-case)
/// * [aliases] - Platform aliases (multi-language names for lookup)
/// * [url] - Platform URL
/// * [type] - Platform type
/// * [logoUrl] - Platform logo URL
/// * [isActive] - Whether the platform is active
@BuiltValue()
abstract class UpdatePlatformDto implements Built<UpdatePlatformDto, UpdatePlatformDtoBuilder> {
  /// Platform name
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Platform canonical identifier (lowercase, kebab-case)
  @BuiltValueField(wireName: r'canonical')
  String? get canonical;

  /// Platform aliases (multi-language names for lookup)
  @BuiltValueField(wireName: r'aliases')
  BuiltList<String>? get aliases;

  /// Platform URL
  @BuiltValueField(wireName: r'url')
  String? get url;

  /// Platform type
  @BuiltValueField(wireName: r'type')
  UpdatePlatformDtoTypeEnum? get type;
  // enum typeEnum {  BANK,  BROKERAGE,  CRYPTO_EXCHANGE,  PAYMENT,  INVESTMENT,  INSURANCE,  OTHER,  };

  /// Platform logo URL
  @BuiltValueField(wireName: r'logoUrl')
  String? get logoUrl;

  /// Whether the platform is active
  @BuiltValueField(wireName: r'isActive')
  bool? get isActive;

  UpdatePlatformDto._();

  factory UpdatePlatformDto([void updates(UpdatePlatformDtoBuilder b)]) = _$UpdatePlatformDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdatePlatformDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdatePlatformDto> get serializer => _$UpdatePlatformDtoSerializer();
}

class _$UpdatePlatformDtoSerializer implements PrimitiveSerializer<UpdatePlatformDto> {
  @override
  final Iterable<Type> types = const [UpdatePlatformDto, _$UpdatePlatformDto];

  @override
  final String wireName = r'UpdatePlatformDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdatePlatformDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.canonical != null) {
      yield r'canonical';
      yield serializers.serialize(
        object.canonical,
        specifiedType: const FullType(String),
      );
    }
    if (object.aliases != null) {
      yield r'aliases';
      yield serializers.serialize(
        object.aliases,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(UpdatePlatformDtoTypeEnum),
      );
    }
    if (object.logoUrl != null) {
      yield r'logoUrl';
      yield serializers.serialize(
        object.logoUrl,
        specifiedType: const FullType(String),
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
    UpdatePlatformDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdatePlatformDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'canonical':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.canonical = valueDes;
          break;
        case r'aliases':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.aliases.replace(valueDes);
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdatePlatformDtoTypeEnum),
          ) as UpdatePlatformDtoTypeEnum;
          result.type = valueDes;
          break;
        case r'logoUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.logoUrl = valueDes;
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
  UpdatePlatformDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdatePlatformDtoBuilder();
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

class UpdatePlatformDtoTypeEnum extends EnumClass {

  /// Platform type
  @BuiltValueEnumConst(wireName: r'BANK')
  static const UpdatePlatformDtoTypeEnum BANK = _$updatePlatformDtoTypeEnum_BANK;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'BROKERAGE')
  static const UpdatePlatformDtoTypeEnum BROKERAGE = _$updatePlatformDtoTypeEnum_BROKERAGE;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'CRYPTO_EXCHANGE')
  static const UpdatePlatformDtoTypeEnum CRYPTO_EXCHANGE = _$updatePlatformDtoTypeEnum_CRYPTO_EXCHANGE;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'PAYMENT')
  static const UpdatePlatformDtoTypeEnum PAYMENT = _$updatePlatformDtoTypeEnum_PAYMENT;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'INVESTMENT')
  static const UpdatePlatformDtoTypeEnum INVESTMENT = _$updatePlatformDtoTypeEnum_INVESTMENT;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'INSURANCE')
  static const UpdatePlatformDtoTypeEnum INSURANCE = _$updatePlatformDtoTypeEnum_INSURANCE;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'OTHER')
  static const UpdatePlatformDtoTypeEnum OTHER = _$updatePlatformDtoTypeEnum_OTHER;

  static Serializer<UpdatePlatformDtoTypeEnum> get serializer => _$updatePlatformDtoTypeEnumSerializer;

  const UpdatePlatformDtoTypeEnum._(String name): super(name);

  static BuiltSet<UpdatePlatformDtoTypeEnum> get values => _$updatePlatformDtoTypeEnumValues;
  static UpdatePlatformDtoTypeEnum valueOf(String name) => _$updatePlatformDtoTypeEnumValueOf(name);
}

