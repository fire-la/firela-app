//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'platform_standards_platform_dto.g.dart';

/// PlatformStandardsPlatformDto
///
/// Properties:
/// * [id] - Global platform ID
/// * [name] - Platform name (e.g., \"ICBC\")
/// * [canonical] - Canonical identifier in ACCOUNT_RE format (e.g., \"icbc\")
/// * [suggestedSegment] - Suggested path segment — canonical PascalCased per hyphen-part, hyphens preserved (e.g. \"Apple-Pay\")
/// * [type] - Platform type
/// * [category] - Region-aware category (institution vocab, e.g. DigitalWallet/Bank) resolved against the final region. null = no region-aware suggestion; fall back to type.
@BuiltValue()
abstract class PlatformStandardsPlatformDto implements Built<PlatformStandardsPlatformDto, PlatformStandardsPlatformDtoBuilder> {
  /// Global platform ID
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Platform name (e.g., \"ICBC\")
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Canonical identifier in ACCOUNT_RE format (e.g., \"icbc\")
  @BuiltValueField(wireName: r'canonical')
  String get canonical;

  /// Suggested path segment — canonical PascalCased per hyphen-part, hyphens preserved (e.g. \"Apple-Pay\")
  @BuiltValueField(wireName: r'suggestedSegment')
  String get suggestedSegment;

  /// Platform type
  @BuiltValueField(wireName: r'type')
  PlatformStandardsPlatformDtoTypeEnum get type;
  // enum typeEnum {  BANK,  BROKERAGE,  CRYPTO_EXCHANGE,  PAYMENT,  INVESTMENT,  INSURANCE,  OTHER,  };

  /// Region-aware category (institution vocab, e.g. DigitalWallet/Bank) resolved against the final region. null = no region-aware suggestion; fall back to type.
  @BuiltValueField(wireName: r'category')
  String? get category;

  PlatformStandardsPlatformDto._();

  factory PlatformStandardsPlatformDto([void updates(PlatformStandardsPlatformDtoBuilder b)]) = _$PlatformStandardsPlatformDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlatformStandardsPlatformDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlatformStandardsPlatformDto> get serializer => _$PlatformStandardsPlatformDtoSerializer();
}

class _$PlatformStandardsPlatformDtoSerializer implements PrimitiveSerializer<PlatformStandardsPlatformDto> {
  @override
  final Iterable<Type> types = const [PlatformStandardsPlatformDto, _$PlatformStandardsPlatformDto];

  @override
  final String wireName = r'PlatformStandardsPlatformDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlatformStandardsPlatformDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
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
    yield r'suggestedSegment';
    yield serializers.serialize(
      object.suggestedSegment,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(PlatformStandardsPlatformDtoTypeEnum),
    );
    yield r'category';
    yield object.category == null ? null : serializers.serialize(
      object.category,
      specifiedType: const FullType.nullable(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PlatformStandardsPlatformDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PlatformStandardsPlatformDtoBuilder result,
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
        case r'suggestedSegment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.suggestedSegment = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PlatformStandardsPlatformDtoTypeEnum),
          ) as PlatformStandardsPlatformDtoTypeEnum;
          result.type = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.category = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlatformStandardsPlatformDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlatformStandardsPlatformDtoBuilder();
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

class PlatformStandardsPlatformDtoTypeEnum extends EnumClass {

  /// Platform type
  @BuiltValueEnumConst(wireName: r'BANK')
  static const PlatformStandardsPlatformDtoTypeEnum BANK = _$platformStandardsPlatformDtoTypeEnum_BANK;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'BROKERAGE')
  static const PlatformStandardsPlatformDtoTypeEnum BROKERAGE = _$platformStandardsPlatformDtoTypeEnum_BROKERAGE;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'CRYPTO_EXCHANGE')
  static const PlatformStandardsPlatformDtoTypeEnum CRYPTO_EXCHANGE = _$platformStandardsPlatformDtoTypeEnum_CRYPTO_EXCHANGE;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'PAYMENT')
  static const PlatformStandardsPlatformDtoTypeEnum PAYMENT = _$platformStandardsPlatformDtoTypeEnum_PAYMENT;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'INVESTMENT')
  static const PlatformStandardsPlatformDtoTypeEnum INVESTMENT = _$platformStandardsPlatformDtoTypeEnum_INVESTMENT;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'INSURANCE')
  static const PlatformStandardsPlatformDtoTypeEnum INSURANCE = _$platformStandardsPlatformDtoTypeEnum_INSURANCE;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'OTHER')
  static const PlatformStandardsPlatformDtoTypeEnum OTHER = _$platformStandardsPlatformDtoTypeEnum_OTHER;

  static Serializer<PlatformStandardsPlatformDtoTypeEnum> get serializer => _$platformStandardsPlatformDtoTypeEnumSerializer;

  const PlatformStandardsPlatformDtoTypeEnum._(String name): super(name);

  static BuiltSet<PlatformStandardsPlatformDtoTypeEnum> get values => _$platformStandardsPlatformDtoTypeEnumValues;
  static PlatformStandardsPlatformDtoTypeEnum valueOf(String name) => _$platformStandardsPlatformDtoTypeEnumValueOf(name);
}

