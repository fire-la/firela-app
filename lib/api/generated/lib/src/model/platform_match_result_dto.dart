//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'platform_match_result_dto.g.dart';

/// PlatformMatchResultDto
///
/// Properties:
/// * [id] - Global platform ID
/// * [name] - Platform name (e.g., \"ICBC\")
/// * [canonical] - Canonical identifier in ACCOUNT_RE format (e.g., \"icbc\")
/// * [type] - Platform type
/// * [suggestedSegment] - Suggested path segment — canonical PascalCased per hyphen-part, hyphens preserved (e.g. \"Apple-Pay\")
/// * [logoUrl] - Logo URL
/// * [countryCode] - ISO 3166-1 alpha-2 (UPPERCASE); null = global platform
/// * [category] - Region-aware category (institution vocab, e.g. DigitalWallet/Bank). null = no region-aware suggestion; fall back to type.
/// * [matchType] - How this row matched: 'exact' > 'prefix' > 'substring'
@BuiltValue()
abstract class PlatformMatchResultDto implements Built<PlatformMatchResultDto, PlatformMatchResultDtoBuilder> {
  /// Global platform ID
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Platform name (e.g., \"ICBC\")
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Canonical identifier in ACCOUNT_RE format (e.g., \"icbc\")
  @BuiltValueField(wireName: r'canonical')
  String get canonical;

  /// Platform type
  @BuiltValueField(wireName: r'type')
  PlatformMatchResultDtoTypeEnum get type;
  // enum typeEnum {  BANK,  BROKERAGE,  CRYPTO_EXCHANGE,  PAYMENT,  INVESTMENT,  INSURANCE,  OTHER,  };

  /// Suggested path segment — canonical PascalCased per hyphen-part, hyphens preserved (e.g. \"Apple-Pay\")
  @BuiltValueField(wireName: r'suggestedSegment')
  String get suggestedSegment;

  /// Logo URL
  @BuiltValueField(wireName: r'logoUrl')
  String? get logoUrl;

  /// ISO 3166-1 alpha-2 (UPPERCASE); null = global platform
  @BuiltValueField(wireName: r'countryCode')
  String? get countryCode;

  /// Region-aware category (institution vocab, e.g. DigitalWallet/Bank). null = no region-aware suggestion; fall back to type.
  @BuiltValueField(wireName: r'category')
  String? get category;

  /// How this row matched: 'exact' > 'prefix' > 'substring'
  @BuiltValueField(wireName: r'matchType')
  PlatformMatchResultDtoMatchTypeEnum get matchType;
  // enum matchTypeEnum {  exact,  prefix,  substring,  };

  PlatformMatchResultDto._();

  factory PlatformMatchResultDto([void updates(PlatformMatchResultDtoBuilder b)]) = _$PlatformMatchResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlatformMatchResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlatformMatchResultDto> get serializer => _$PlatformMatchResultDtoSerializer();
}

class _$PlatformMatchResultDtoSerializer implements PrimitiveSerializer<PlatformMatchResultDto> {
  @override
  final Iterable<Type> types = const [PlatformMatchResultDto, _$PlatformMatchResultDto];

  @override
  final String wireName = r'PlatformMatchResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlatformMatchResultDto object, {
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
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(PlatformMatchResultDtoTypeEnum),
    );
    yield r'suggestedSegment';
    yield serializers.serialize(
      object.suggestedSegment,
      specifiedType: const FullType(String),
    );
    yield r'logoUrl';
    yield object.logoUrl == null ? null : serializers.serialize(
      object.logoUrl,
      specifiedType: const FullType.nullable(String),
    );
    yield r'countryCode';
    yield object.countryCode == null ? null : serializers.serialize(
      object.countryCode,
      specifiedType: const FullType.nullable(String),
    );
    yield r'category';
    yield object.category == null ? null : serializers.serialize(
      object.category,
      specifiedType: const FullType.nullable(String),
    );
    yield r'matchType';
    yield serializers.serialize(
      object.matchType,
      specifiedType: const FullType(PlatformMatchResultDtoMatchTypeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PlatformMatchResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PlatformMatchResultDtoBuilder result,
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PlatformMatchResultDtoTypeEnum),
          ) as PlatformMatchResultDtoTypeEnum;
          result.type = valueDes;
          break;
        case r'suggestedSegment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.suggestedSegment = valueDes;
          break;
        case r'logoUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.logoUrl = valueDes;
          break;
        case r'countryCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.countryCode = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.category = valueDes;
          break;
        case r'matchType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PlatformMatchResultDtoMatchTypeEnum),
          ) as PlatformMatchResultDtoMatchTypeEnum;
          result.matchType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlatformMatchResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlatformMatchResultDtoBuilder();
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

class PlatformMatchResultDtoTypeEnum extends EnumClass {

  /// Platform type
  @BuiltValueEnumConst(wireName: r'BANK')
  static const PlatformMatchResultDtoTypeEnum BANK = _$platformMatchResultDtoTypeEnum_BANK;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'BROKERAGE')
  static const PlatformMatchResultDtoTypeEnum BROKERAGE = _$platformMatchResultDtoTypeEnum_BROKERAGE;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'CRYPTO_EXCHANGE')
  static const PlatformMatchResultDtoTypeEnum CRYPTO_EXCHANGE = _$platformMatchResultDtoTypeEnum_CRYPTO_EXCHANGE;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'PAYMENT')
  static const PlatformMatchResultDtoTypeEnum PAYMENT = _$platformMatchResultDtoTypeEnum_PAYMENT;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'INVESTMENT')
  static const PlatformMatchResultDtoTypeEnum INVESTMENT = _$platformMatchResultDtoTypeEnum_INVESTMENT;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'INSURANCE')
  static const PlatformMatchResultDtoTypeEnum INSURANCE = _$platformMatchResultDtoTypeEnum_INSURANCE;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'OTHER')
  static const PlatformMatchResultDtoTypeEnum OTHER = _$platformMatchResultDtoTypeEnum_OTHER;

  static Serializer<PlatformMatchResultDtoTypeEnum> get serializer => _$platformMatchResultDtoTypeEnumSerializer;

  const PlatformMatchResultDtoTypeEnum._(String name): super(name);

  static BuiltSet<PlatformMatchResultDtoTypeEnum> get values => _$platformMatchResultDtoTypeEnumValues;
  static PlatformMatchResultDtoTypeEnum valueOf(String name) => _$platformMatchResultDtoTypeEnumValueOf(name);
}

class PlatformMatchResultDtoMatchTypeEnum extends EnumClass {

  /// How this row matched: 'exact' > 'prefix' > 'substring'
  @BuiltValueEnumConst(wireName: r'exact')
  static const PlatformMatchResultDtoMatchTypeEnum exact = _$platformMatchResultDtoMatchTypeEnum_exact;
  /// How this row matched: 'exact' > 'prefix' > 'substring'
  @BuiltValueEnumConst(wireName: r'prefix')
  static const PlatformMatchResultDtoMatchTypeEnum prefix = _$platformMatchResultDtoMatchTypeEnum_prefix;
  /// How this row matched: 'exact' > 'prefix' > 'substring'
  @BuiltValueEnumConst(wireName: r'substring')
  static const PlatformMatchResultDtoMatchTypeEnum substring = _$platformMatchResultDtoMatchTypeEnum_substring;

  static Serializer<PlatformMatchResultDtoMatchTypeEnum> get serializer => _$platformMatchResultDtoMatchTypeEnumSerializer;

  const PlatformMatchResultDtoMatchTypeEnum._(String name): super(name);

  static BuiltSet<PlatformMatchResultDtoMatchTypeEnum> get values => _$platformMatchResultDtoMatchTypeEnumValues;
  static PlatformMatchResultDtoMatchTypeEnum valueOf(String name) => _$platformMatchResultDtoMatchTypeEnumValueOf(name);
}

