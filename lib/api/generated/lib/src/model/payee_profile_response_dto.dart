//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payee_profile_response_dto.g.dart';

/// PayeeProfileResponseDto
///
/// Properties:
/// * [id] - Unique identifier (UUID)
/// * [canonical] - Canonical payee name (unique, case-insensitive)
/// * [aliases] - Multi-language aliases
/// * [category] - Payee category
/// * [countries] - Country codes where payee operates
/// * [keywords] - Search keywords
/// * [meta] - Extended metadata
/// * [dataSource] - Data source
/// * [isActive] - Whether the profile is active
/// * [createdAt] - Creation timestamp
/// * [updatedAt] - Last update timestamp
/// * [i18nKey] - Translation key for i18n
/// * [subCategory] - Sub-category
/// * [primaryCountry] - Primary operating country
/// * [logoUrl] - Logo URL
/// * [website] - Official website
/// * [description] - Description
/// * [verifiedAt] - Verification timestamp (null if not verified)
@BuiltValue()
abstract class PayeeProfileResponseDto
    implements Built<PayeeProfileResponseDto, PayeeProfileResponseDtoBuilder> {
  /// Unique identifier (UUID)
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Canonical payee name (unique, case-insensitive)
  @BuiltValueField(wireName: r'canonical')
  String get canonical;

  /// Multi-language aliases
  @BuiltValueField(wireName: r'aliases')
  BuiltList<String> get aliases;

  /// Payee category
  @BuiltValueField(wireName: r'category')
  PayeeProfileResponseDtoCategoryEnum get category;
  // enum categoryEnum {  RESTAURANT,  CAFE,  FAST_FOOD,  BAR,  SUPERMARKET,  CONVENIENCE_STORE,  SHOPPING_MALL,  ONLINE_SHOPPING,  TAXI,  RIDE_SHARING,  PUBLIC_TRANSPORT,  PARKING,  GAS_STATION,  UTILITIES,  TELECOM,  STREAMING,  HEALTHCARE,  EDUCATION,  ENTERTAINMENT,  SPORTS,  TRAVEL,  HOTEL,  OTHER,  };

  /// Country codes where payee operates
  @BuiltValueField(wireName: r'countries')
  BuiltList<String> get countries;

  /// Search keywords
  @BuiltValueField(wireName: r'keywords')
  BuiltList<String> get keywords;

  /// Extended metadata
  @BuiltValueField(wireName: r'meta')
  JsonObject get meta;

  /// Data source
  @BuiltValueField(wireName: r'dataSource')
  PayeeProfileResponseDtoDataSourceEnum get dataSource;
  // enum dataSourceEnum {  MANUAL,  IMPORT,  API,  CROWDSOURCED,  };

  /// Whether the profile is active
  @BuiltValueField(wireName: r'isActive')
  bool get isActive;

  /// Creation timestamp
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  /// Last update timestamp
  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  /// Translation key for i18n
  @BuiltValueField(wireName: r'i18nKey')
  JsonObject? get i18nKey;

  /// Sub-category
  @BuiltValueField(wireName: r'subCategory')
  JsonObject? get subCategory;

  /// Primary operating country
  @BuiltValueField(wireName: r'primaryCountry')
  JsonObject? get primaryCountry;

  /// Logo URL
  @BuiltValueField(wireName: r'logoUrl')
  JsonObject? get logoUrl;

  /// Official website
  @BuiltValueField(wireName: r'website')
  JsonObject? get website;

  /// Description
  @BuiltValueField(wireName: r'description')
  JsonObject? get description;

  /// Verification timestamp (null if not verified)
  @BuiltValueField(wireName: r'verifiedAt')
  JsonObject? get verifiedAt;

  PayeeProfileResponseDto._();

  factory PayeeProfileResponseDto(
          [void updates(PayeeProfileResponseDtoBuilder b)]) =
      _$PayeeProfileResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PayeeProfileResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PayeeProfileResponseDto> get serializer =>
      _$PayeeProfileResponseDtoSerializer();
}

class _$PayeeProfileResponseDtoSerializer
    implements PrimitiveSerializer<PayeeProfileResponseDto> {
  @override
  final Iterable<Type> types = const [
    PayeeProfileResponseDto,
    _$PayeeProfileResponseDto
  ];

  @override
  final String wireName = r'PayeeProfileResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PayeeProfileResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
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
    yield r'category';
    yield serializers.serialize(
      object.category,
      specifiedType: const FullType(PayeeProfileResponseDtoCategoryEnum),
    );
    yield r'countries';
    yield serializers.serialize(
      object.countries,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'keywords';
    yield serializers.serialize(
      object.keywords,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'meta';
    yield serializers.serialize(
      object.meta,
      specifiedType: const FullType(JsonObject),
    );
    yield r'dataSource';
    yield serializers.serialize(
      object.dataSource,
      specifiedType: const FullType(PayeeProfileResponseDtoDataSourceEnum),
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
    if (object.i18nKey != null) {
      yield r'i18nKey';
      yield serializers.serialize(
        object.i18nKey,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.subCategory != null) {
      yield r'subCategory';
      yield serializers.serialize(
        object.subCategory,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.primaryCountry != null) {
      yield r'primaryCountry';
      yield serializers.serialize(
        object.primaryCountry,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.logoUrl != null) {
      yield r'logoUrl';
      yield serializers.serialize(
        object.logoUrl,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.website != null) {
      yield r'website';
      yield serializers.serialize(
        object.website,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.verifiedAt != null) {
      yield r'verifiedAt';
      yield serializers.serialize(
        object.verifiedAt,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PayeeProfileResponseDto object, {
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
    required PayeeProfileResponseDtoBuilder result,
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
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PayeeProfileResponseDtoCategoryEnum),
          ) as PayeeProfileResponseDtoCategoryEnum;
          result.category = valueDes;
          break;
        case r'countries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.countries.replace(valueDes);
          break;
        case r'keywords':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.keywords.replace(valueDes);
          break;
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.meta = valueDes;
          break;
        case r'dataSource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(PayeeProfileResponseDtoDataSourceEnum),
          ) as PayeeProfileResponseDtoDataSourceEnum;
          result.dataSource = valueDes;
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
        case r'i18nKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.i18nKey = valueDes;
          break;
        case r'subCategory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.subCategory = valueDes;
          break;
        case r'primaryCountry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.primaryCountry = valueDes;
          break;
        case r'logoUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.logoUrl = valueDes;
          break;
        case r'website':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.website = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'verifiedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.verifiedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PayeeProfileResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PayeeProfileResponseDtoBuilder();
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

class PayeeProfileResponseDtoCategoryEnum extends EnumClass {
  /// Payee category
  @BuiltValueEnumConst(wireName: r'RESTAURANT')
  static const PayeeProfileResponseDtoCategoryEnum RESTAURANT =
      _$payeeProfileResponseDtoCategoryEnum_RESTAURANT;

  /// Payee category
  @BuiltValueEnumConst(wireName: r'CAFE')
  static const PayeeProfileResponseDtoCategoryEnum CAFE =
      _$payeeProfileResponseDtoCategoryEnum_CAFE;

  /// Payee category
  @BuiltValueEnumConst(wireName: r'FAST_FOOD')
  static const PayeeProfileResponseDtoCategoryEnum FAST_FOOD =
      _$payeeProfileResponseDtoCategoryEnum_FAST_FOOD;

  /// Payee category
  @BuiltValueEnumConst(wireName: r'BAR')
  static const PayeeProfileResponseDtoCategoryEnum BAR =
      _$payeeProfileResponseDtoCategoryEnum_BAR;

  /// Payee category
  @BuiltValueEnumConst(wireName: r'SUPERMARKET')
  static const PayeeProfileResponseDtoCategoryEnum SUPERMARKET =
      _$payeeProfileResponseDtoCategoryEnum_SUPERMARKET;

  /// Payee category
  @BuiltValueEnumConst(wireName: r'CONVENIENCE_STORE')
  static const PayeeProfileResponseDtoCategoryEnum CONVENIENCE_STORE =
      _$payeeProfileResponseDtoCategoryEnum_CONVENIENCE_STORE;

  /// Payee category
  @BuiltValueEnumConst(wireName: r'SHOPPING_MALL')
  static const PayeeProfileResponseDtoCategoryEnum SHOPPING_MALL =
      _$payeeProfileResponseDtoCategoryEnum_SHOPPING_MALL;

  /// Payee category
  @BuiltValueEnumConst(wireName: r'ONLINE_SHOPPING')
  static const PayeeProfileResponseDtoCategoryEnum ONLINE_SHOPPING =
      _$payeeProfileResponseDtoCategoryEnum_ONLINE_SHOPPING;

  /// Payee category
  @BuiltValueEnumConst(wireName: r'TAXI')
  static const PayeeProfileResponseDtoCategoryEnum TAXI =
      _$payeeProfileResponseDtoCategoryEnum_TAXI;

  /// Payee category
  @BuiltValueEnumConst(wireName: r'RIDE_SHARING')
  static const PayeeProfileResponseDtoCategoryEnum RIDE_SHARING =
      _$payeeProfileResponseDtoCategoryEnum_RIDE_SHARING;

  /// Payee category
  @BuiltValueEnumConst(wireName: r'PUBLIC_TRANSPORT')
  static const PayeeProfileResponseDtoCategoryEnum PUBLIC_TRANSPORT =
      _$payeeProfileResponseDtoCategoryEnum_PUBLIC_TRANSPORT;

  /// Payee category
  @BuiltValueEnumConst(wireName: r'PARKING')
  static const PayeeProfileResponseDtoCategoryEnum PARKING =
      _$payeeProfileResponseDtoCategoryEnum_PARKING;

  /// Payee category
  @BuiltValueEnumConst(wireName: r'GAS_STATION')
  static const PayeeProfileResponseDtoCategoryEnum GAS_STATION =
      _$payeeProfileResponseDtoCategoryEnum_GAS_STATION;

  /// Payee category
  @BuiltValueEnumConst(wireName: r'UTILITIES')
  static const PayeeProfileResponseDtoCategoryEnum UTILITIES =
      _$payeeProfileResponseDtoCategoryEnum_UTILITIES;

  /// Payee category
  @BuiltValueEnumConst(wireName: r'TELECOM')
  static const PayeeProfileResponseDtoCategoryEnum TELECOM =
      _$payeeProfileResponseDtoCategoryEnum_TELECOM;

  /// Payee category
  @BuiltValueEnumConst(wireName: r'STREAMING')
  static const PayeeProfileResponseDtoCategoryEnum STREAMING =
      _$payeeProfileResponseDtoCategoryEnum_STREAMING;

  /// Payee category
  @BuiltValueEnumConst(wireName: r'HEALTHCARE')
  static const PayeeProfileResponseDtoCategoryEnum HEALTHCARE =
      _$payeeProfileResponseDtoCategoryEnum_HEALTHCARE;

  /// Payee category
  @BuiltValueEnumConst(wireName: r'EDUCATION')
  static const PayeeProfileResponseDtoCategoryEnum EDUCATION =
      _$payeeProfileResponseDtoCategoryEnum_EDUCATION;

  /// Payee category
  @BuiltValueEnumConst(wireName: r'ENTERTAINMENT')
  static const PayeeProfileResponseDtoCategoryEnum ENTERTAINMENT =
      _$payeeProfileResponseDtoCategoryEnum_ENTERTAINMENT;

  /// Payee category
  @BuiltValueEnumConst(wireName: r'SPORTS')
  static const PayeeProfileResponseDtoCategoryEnum SPORTS =
      _$payeeProfileResponseDtoCategoryEnum_SPORTS;

  /// Payee category
  @BuiltValueEnumConst(wireName: r'TRAVEL')
  static const PayeeProfileResponseDtoCategoryEnum TRAVEL =
      _$payeeProfileResponseDtoCategoryEnum_TRAVEL;

  /// Payee category
  @BuiltValueEnumConst(wireName: r'HOTEL')
  static const PayeeProfileResponseDtoCategoryEnum HOTEL =
      _$payeeProfileResponseDtoCategoryEnum_HOTEL;

  /// Payee category
  @BuiltValueEnumConst(wireName: r'OTHER', fallback: true)
  static const PayeeProfileResponseDtoCategoryEnum OTHER =
      _$payeeProfileResponseDtoCategoryEnum_OTHER;

  static Serializer<PayeeProfileResponseDtoCategoryEnum> get serializer =>
      _$payeeProfileResponseDtoCategoryEnumSerializer;

  const PayeeProfileResponseDtoCategoryEnum._(String name) : super(name);

  static BuiltSet<PayeeProfileResponseDtoCategoryEnum> get values =>
      _$payeeProfileResponseDtoCategoryEnumValues;
  static PayeeProfileResponseDtoCategoryEnum valueOf(String name) =>
      _$payeeProfileResponseDtoCategoryEnumValueOf(name);
}

class PayeeProfileResponseDtoDataSourceEnum extends EnumClass {
  /// Data source
  @BuiltValueEnumConst(wireName: r'MANUAL')
  static const PayeeProfileResponseDtoDataSourceEnum MANUAL =
      _$payeeProfileResponseDtoDataSourceEnum_MANUAL;

  /// Data source
  @BuiltValueEnumConst(wireName: r'IMPORT')
  static const PayeeProfileResponseDtoDataSourceEnum IMPORT =
      _$payeeProfileResponseDtoDataSourceEnum_IMPORT;

  /// Data source
  @BuiltValueEnumConst(wireName: r'API')
  static const PayeeProfileResponseDtoDataSourceEnum API =
      _$payeeProfileResponseDtoDataSourceEnum_API;

  /// Data source
  @BuiltValueEnumConst(wireName: r'CROWDSOURCED', fallback: true)
  static const PayeeProfileResponseDtoDataSourceEnum CROWDSOURCED =
      _$payeeProfileResponseDtoDataSourceEnum_CROWDSOURCED;

  static Serializer<PayeeProfileResponseDtoDataSourceEnum> get serializer =>
      _$payeeProfileResponseDtoDataSourceEnumSerializer;

  const PayeeProfileResponseDtoDataSourceEnum._(String name) : super(name);

  static BuiltSet<PayeeProfileResponseDtoDataSourceEnum> get values =>
      _$payeeProfileResponseDtoDataSourceEnumValues;
  static PayeeProfileResponseDtoDataSourceEnum valueOf(String name) =>
      _$payeeProfileResponseDtoDataSourceEnumValueOf(name);
}
