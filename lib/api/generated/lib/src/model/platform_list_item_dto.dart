//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'platform_list_item_dto.g.dart';

/// PlatformListItemDto
///
/// Properties:
/// * [id] - Global platform ID
/// * [name] - Platform name
/// * [url] - Platform URL
/// * [type] - Platform type
/// * [canonical] - Canonical identifier in ACCOUNT_RE format (e.g., \"icbc\")
/// * [suggestedSegment] - Suggested path segment — canonical with first char uppercased (ACC_COMP_NAME_RE)
/// * [logoUrl] - Logo URL
/// * [isBound] - Whether user has accounts using this platform
@BuiltValue()
abstract class PlatformListItemDto implements Built<PlatformListItemDto, PlatformListItemDtoBuilder> {
  /// Global platform ID
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Platform name
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Platform URL
  @BuiltValueField(wireName: r'url')
  String get url;

  /// Platform type
  @BuiltValueField(wireName: r'type')
  PlatformListItemDtoTypeEnum get type;
  // enum typeEnum {  BANK,  BROKERAGE,  CRYPTO_EXCHANGE,  PAYMENT,  INVESTMENT,  INSURANCE,  OTHER,  };

  /// Canonical identifier in ACCOUNT_RE format (e.g., \"icbc\")
  @BuiltValueField(wireName: r'canonical')
  String get canonical;

  /// Suggested path segment — canonical with first char uppercased (ACC_COMP_NAME_RE)
  @BuiltValueField(wireName: r'suggestedSegment')
  String get suggestedSegment;

  /// Logo URL
  @BuiltValueField(wireName: r'logoUrl')
  String? get logoUrl;

  /// Whether user has accounts using this platform
  @BuiltValueField(wireName: r'isBound')
  bool get isBound;

  PlatformListItemDto._();

  factory PlatformListItemDto([void updates(PlatformListItemDtoBuilder b)]) = _$PlatformListItemDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlatformListItemDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlatformListItemDto> get serializer => _$PlatformListItemDtoSerializer();
}

class _$PlatformListItemDtoSerializer implements PrimitiveSerializer<PlatformListItemDto> {
  @override
  final Iterable<Type> types = const [PlatformListItemDto, _$PlatformListItemDto];

  @override
  final String wireName = r'PlatformListItemDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlatformListItemDto object, {
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
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(PlatformListItemDtoTypeEnum),
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
    yield r'logoUrl';
    yield object.logoUrl == null ? null : serializers.serialize(
      object.logoUrl,
      specifiedType: const FullType.nullable(String),
    );
    yield r'isBound';
    yield serializers.serialize(
      object.isBound,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PlatformListItemDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PlatformListItemDtoBuilder result,
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
            specifiedType: const FullType(PlatformListItemDtoTypeEnum),
          ) as PlatformListItemDtoTypeEnum;
          result.type = valueDes;
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
        case r'logoUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.logoUrl = valueDes;
          break;
        case r'isBound':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isBound = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlatformListItemDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlatformListItemDtoBuilder();
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

class PlatformListItemDtoTypeEnum extends EnumClass {

  /// Platform type
  @BuiltValueEnumConst(wireName: r'BANK')
  static const PlatformListItemDtoTypeEnum BANK = _$platformListItemDtoTypeEnum_BANK;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'BROKERAGE')
  static const PlatformListItemDtoTypeEnum BROKERAGE = _$platformListItemDtoTypeEnum_BROKERAGE;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'CRYPTO_EXCHANGE')
  static const PlatformListItemDtoTypeEnum CRYPTO_EXCHANGE = _$platformListItemDtoTypeEnum_CRYPTO_EXCHANGE;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'PAYMENT')
  static const PlatformListItemDtoTypeEnum PAYMENT = _$platformListItemDtoTypeEnum_PAYMENT;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'INVESTMENT')
  static const PlatformListItemDtoTypeEnum INVESTMENT = _$platformListItemDtoTypeEnum_INVESTMENT;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'INSURANCE')
  static const PlatformListItemDtoTypeEnum INSURANCE = _$platformListItemDtoTypeEnum_INSURANCE;
  /// Platform type
  @BuiltValueEnumConst(wireName: r'OTHER')
  static const PlatformListItemDtoTypeEnum OTHER = _$platformListItemDtoTypeEnum_OTHER;

  static Serializer<PlatformListItemDtoTypeEnum> get serializer => _$platformListItemDtoTypeEnumSerializer;

  const PlatformListItemDtoTypeEnum._(String name): super(name);

  static BuiltSet<PlatformListItemDtoTypeEnum> get values => _$platformListItemDtoTypeEnumValues;
  static PlatformListItemDtoTypeEnum valueOf(String name) => _$platformListItemDtoTypeEnumValueOf(name);
}

