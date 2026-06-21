//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_platform_dto.g.dart';

/// CreatePlatformDto
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
abstract class CreatePlatformDto implements Built<CreatePlatformDto, CreatePlatformDtoBuilder> {
  /// Platform name
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Platform canonical identifier (lowercase, kebab-case)
  @BuiltValueField(wireName: r'canonical')
  String get canonical;

  /// Platform aliases (multi-language names for lookup)
  @BuiltValueField(wireName: r'aliases')
  BuiltList<String> get aliases;

  /// Platform URL
  @BuiltValueField(wireName: r'url')
  String get url;

  /// Platform type
  @BuiltValueField(wireName: r'type')
  CreatePlatformDtoTypeEnum get type;
  // enum typeEnum {  BANK,  BROKERAGE,  CRYPTO_EXCHANGE,  PAYMENT,  INVESTMENT,  INSURANCE,  OTHER,  };

  /// Platform logo URL
  @BuiltValueField(wireName: r'logoUrl')
  String? get logoUrl;

  /// Whether the platform is active
  @BuiltValueField(wireName: r'isActive')
  bool? get isActive;

  CreatePlatformDto._();

  factory CreatePlatformDto([void updates(CreatePlatformDtoBuilder b)]) = _$CreatePlatformDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreatePlatformDtoBuilder b) => b
      ..isActive = true;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreatePlatformDto> get serializer => _$CreatePlatformDtoSerializer();
}

class _$CreatePlatformDtoSerializer implements PrimitiveSerializer<CreatePlatformDto> {
  @override
  final Iterable<Type> types = const [CreatePlatformDto, _$CreatePlatformDto];

  @override
  final String wireName = r'CreatePlatformDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreatePlatformDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'canonical';
    yield serializers.serialize(
      object.canonical,
      specifiedType: const FullType(String),
    );
    yield r'aliases';
    yield serializers.serialize(
      object.aliases,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(CreatePlatformDtoTypeEnum),
    );
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
    CreatePlatformDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreatePlatformDtoBuilder result,
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
            specifiedType: const FullType(CreatePlatformDtoTypeEnum),
          ) as CreatePlatformDtoTypeEnum;
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
  CreatePlatformDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePlatformDtoBuilder();
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

class CreatePlatformDtoTypeEnum extends EnumClass {

  /// Platform type
  @BuiltValueEnumConst(wireName: r'BANK')
  static const CreatePlatformDtoTypeEnum BANK = _$createPlatformDtoTypeEnum_BANK;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'BROKERAGE')
  static const CreatePlatformDtoTypeEnum BROKERAGE = _$createPlatformDtoTypeEnum_BROKERAGE;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'CRYPTO_EXCHANGE')
  static const CreatePlatformDtoTypeEnum CRYPTO_EXCHANGE = _$createPlatformDtoTypeEnum_CRYPTO_EXCHANGE;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'PAYMENT')
  static const CreatePlatformDtoTypeEnum PAYMENT = _$createPlatformDtoTypeEnum_PAYMENT;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'INVESTMENT')
  static const CreatePlatformDtoTypeEnum INVESTMENT = _$createPlatformDtoTypeEnum_INVESTMENT;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'INSURANCE')
  static const CreatePlatformDtoTypeEnum INSURANCE = _$createPlatformDtoTypeEnum_INSURANCE;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'OTHER')
  static const CreatePlatformDtoTypeEnum OTHER = _$createPlatformDtoTypeEnum_OTHER;

  static Serializer<CreatePlatformDtoTypeEnum> get serializer => _$createPlatformDtoTypeEnumSerializer;

  const CreatePlatformDtoTypeEnum._(String name): super(name);

  static BuiltSet<CreatePlatformDtoTypeEnum> get values => _$createPlatformDtoTypeEnumValues;
  static CreatePlatformDtoTypeEnum valueOf(String name) => _$createPlatformDtoTypeEnumValueOf(name);
}

