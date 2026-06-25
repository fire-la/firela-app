//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_payee_profile_dto.g.dart';

/// CreatePayeeProfileDto
///
/// Properties:
/// * [canonical] - Canonical payee name (unique, case-insensitive). This is the primary identifier for the payee.
/// * [aliases] - Multi-language aliases for the payee. Used for matching user input in different languages.
/// * [i18nKey] - Translation key for i18n integration (XLIFF translation system)
/// * [category] - Payee category classification
/// * [subCategory] - Sub-category for more specific classification
/// * [countries] - Country/region codes where the payee operates (ISO 3166-1 alpha-2)
/// * [primaryCountry] - Primary operating country (ISO 3166-1 alpha-2)
/// * [keywords] - Search keywords for fuzzy matching
/// * [logoUrl] - Payee logo URL
/// * [website] - Official website URL
/// * [description] - Payee description
/// * [meta] - Extended metadata (business hours, contact info, additional details)
/// * [dataSource] - Data source for this profile
@BuiltValue()
abstract class CreatePayeeProfileDto implements Built<CreatePayeeProfileDto, CreatePayeeProfileDtoBuilder> {
  /// Canonical payee name (unique, case-insensitive). This is the primary identifier for the payee.
  @BuiltValueField(wireName: r'canonical')
  String get canonical;

  /// Multi-language aliases for the payee. Used for matching user input in different languages.
  @BuiltValueField(wireName: r'aliases')
  BuiltList<String>? get aliases;

  /// Translation key for i18n integration (XLIFF translation system)
  @BuiltValueField(wireName: r'i18nKey')
  String? get i18nKey;

  /// Payee category classification
  @BuiltValueField(wireName: r'category')
  CreatePayeeProfileDtoCategoryEnum get category;
  // enum categoryEnum {  RESTAURANT,  CAFE,  FAST_FOOD,  BAR,  SUPERMARKET,  CONVENIENCE_STORE,  SHOPPING_MALL,  ONLINE_SHOPPING,  TAXI,  RIDE_SHARING,  PUBLIC_TRANSPORT,  PARKING,  GAS_STATION,  UTILITIES,  TELECOM,  STREAMING,  HEALTHCARE,  EDUCATION,  ENTERTAINMENT,  SPORTS,  TRAVEL,  HOTEL,  OTHER,  };

  /// Sub-category for more specific classification
  @BuiltValueField(wireName: r'subCategory')
  String? get subCategory;

  /// Country/region codes where the payee operates (ISO 3166-1 alpha-2)
  @BuiltValueField(wireName: r'countries')
  BuiltList<String>? get countries;

  /// Primary operating country (ISO 3166-1 alpha-2)
  @BuiltValueField(wireName: r'primaryCountry')
  String? get primaryCountry;

  /// Search keywords for fuzzy matching
  @BuiltValueField(wireName: r'keywords')
  BuiltList<String>? get keywords;

  /// Payee logo URL
  @BuiltValueField(wireName: r'logoUrl')
  String? get logoUrl;

  /// Official website URL
  @BuiltValueField(wireName: r'website')
  String? get website;

  /// Payee description
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Extended metadata (business hours, contact info, additional details)
  @BuiltValueField(wireName: r'meta')
  JsonObject? get meta;

  /// Data source for this profile
  @BuiltValueField(wireName: r'dataSource')
  CreatePayeeProfileDtoDataSourceEnum? get dataSource;
  // enum dataSourceEnum {  MANUAL,  IMPORT,  API,  CROWDSOURCED,  };

  CreatePayeeProfileDto._();

  factory CreatePayeeProfileDto([void updates(CreatePayeeProfileDtoBuilder b)]) = _$CreatePayeeProfileDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreatePayeeProfileDtoBuilder b) => b
      ..dataSource = const CreatePayeeProfileDtoDataSourceEnum._('MANUAL');

  @BuiltValueSerializer(custom: true)
  static Serializer<CreatePayeeProfileDto> get serializer => _$CreatePayeeProfileDtoSerializer();
}

class _$CreatePayeeProfileDtoSerializer implements PrimitiveSerializer<CreatePayeeProfileDto> {
  @override
  final Iterable<Type> types = const [CreatePayeeProfileDto, _$CreatePayeeProfileDto];

  @override
  final String wireName = r'CreatePayeeProfileDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreatePayeeProfileDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'canonical';
    yield serializers.serialize(
      object.canonical,
      specifiedType: const FullType(String),
    );
    if (object.aliases != null) {
      yield r'aliases';
      yield serializers.serialize(
        object.aliases,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.i18nKey != null) {
      yield r'i18nKey';
      yield serializers.serialize(
        object.i18nKey,
        specifiedType: const FullType(String),
      );
    }
    yield r'category';
    yield serializers.serialize(
      object.category,
      specifiedType: const FullType(CreatePayeeProfileDtoCategoryEnum),
    );
    if (object.subCategory != null) {
      yield r'subCategory';
      yield serializers.serialize(
        object.subCategory,
        specifiedType: const FullType(String),
      );
    }
    if (object.countries != null) {
      yield r'countries';
      yield serializers.serialize(
        object.countries,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.primaryCountry != null) {
      yield r'primaryCountry';
      yield serializers.serialize(
        object.primaryCountry,
        specifiedType: const FullType(String),
      );
    }
    if (object.keywords != null) {
      yield r'keywords';
      yield serializers.serialize(
        object.keywords,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.logoUrl != null) {
      yield r'logoUrl';
      yield serializers.serialize(
        object.logoUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.website != null) {
      yield r'website';
      yield serializers.serialize(
        object.website,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
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
    if (object.dataSource != null) {
      yield r'dataSource';
      yield serializers.serialize(
        object.dataSource,
        specifiedType: const FullType(CreatePayeeProfileDtoDataSourceEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreatePayeeProfileDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreatePayeeProfileDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'i18nKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.i18nKey = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreatePayeeProfileDtoCategoryEnum),
          ) as CreatePayeeProfileDtoCategoryEnum;
          result.category = valueDes;
          break;
        case r'subCategory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subCategory = valueDes;
          break;
        case r'countries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.countries.replace(valueDes);
          break;
        case r'primaryCountry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.primaryCountry = valueDes;
          break;
        case r'keywords':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.keywords.replace(valueDes);
          break;
        case r'logoUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.logoUrl = valueDes;
          break;
        case r'website':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.website = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
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
            specifiedType: const FullType(CreatePayeeProfileDtoDataSourceEnum),
          ) as CreatePayeeProfileDtoDataSourceEnum;
          result.dataSource = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreatePayeeProfileDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePayeeProfileDtoBuilder();
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

class CreatePayeeProfileDtoCategoryEnum extends EnumClass {

  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'RESTAURANT')
  static const CreatePayeeProfileDtoCategoryEnum RESTAURANT = _$createPayeeProfileDtoCategoryEnum_RESTAURANT;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'CAFE')
  static const CreatePayeeProfileDtoCategoryEnum CAFE = _$createPayeeProfileDtoCategoryEnum_CAFE;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'FAST_FOOD')
  static const CreatePayeeProfileDtoCategoryEnum FAST_FOOD = _$createPayeeProfileDtoCategoryEnum_FAST_FOOD;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'BAR')
  static const CreatePayeeProfileDtoCategoryEnum BAR = _$createPayeeProfileDtoCategoryEnum_BAR;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'SUPERMARKET')
  static const CreatePayeeProfileDtoCategoryEnum SUPERMARKET = _$createPayeeProfileDtoCategoryEnum_SUPERMARKET;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'CONVENIENCE_STORE')
  static const CreatePayeeProfileDtoCategoryEnum CONVENIENCE_STORE = _$createPayeeProfileDtoCategoryEnum_CONVENIENCE_STORE;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'SHOPPING_MALL')
  static const CreatePayeeProfileDtoCategoryEnum SHOPPING_MALL = _$createPayeeProfileDtoCategoryEnum_SHOPPING_MALL;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'ONLINE_SHOPPING')
  static const CreatePayeeProfileDtoCategoryEnum ONLINE_SHOPPING = _$createPayeeProfileDtoCategoryEnum_ONLINE_SHOPPING;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'TAXI')
  static const CreatePayeeProfileDtoCategoryEnum TAXI = _$createPayeeProfileDtoCategoryEnum_TAXI;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'RIDE_SHARING')
  static const CreatePayeeProfileDtoCategoryEnum RIDE_SHARING = _$createPayeeProfileDtoCategoryEnum_RIDE_SHARING;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'PUBLIC_TRANSPORT')
  static const CreatePayeeProfileDtoCategoryEnum PUBLIC_TRANSPORT = _$createPayeeProfileDtoCategoryEnum_PUBLIC_TRANSPORT;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'PARKING')
  static const CreatePayeeProfileDtoCategoryEnum PARKING = _$createPayeeProfileDtoCategoryEnum_PARKING;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'GAS_STATION')
  static const CreatePayeeProfileDtoCategoryEnum GAS_STATION = _$createPayeeProfileDtoCategoryEnum_GAS_STATION;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'UTILITIES')
  static const CreatePayeeProfileDtoCategoryEnum UTILITIES = _$createPayeeProfileDtoCategoryEnum_UTILITIES;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'TELECOM')
  static const CreatePayeeProfileDtoCategoryEnum TELECOM = _$createPayeeProfileDtoCategoryEnum_TELECOM;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'STREAMING')
  static const CreatePayeeProfileDtoCategoryEnum STREAMING = _$createPayeeProfileDtoCategoryEnum_STREAMING;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'HEALTHCARE')
  static const CreatePayeeProfileDtoCategoryEnum HEALTHCARE = _$createPayeeProfileDtoCategoryEnum_HEALTHCARE;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'EDUCATION')
  static const CreatePayeeProfileDtoCategoryEnum EDUCATION = _$createPayeeProfileDtoCategoryEnum_EDUCATION;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'ENTERTAINMENT')
  static const CreatePayeeProfileDtoCategoryEnum ENTERTAINMENT = _$createPayeeProfileDtoCategoryEnum_ENTERTAINMENT;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'SPORTS')
  static const CreatePayeeProfileDtoCategoryEnum SPORTS = _$createPayeeProfileDtoCategoryEnum_SPORTS;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'TRAVEL')
  static const CreatePayeeProfileDtoCategoryEnum TRAVEL = _$createPayeeProfileDtoCategoryEnum_TRAVEL;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'HOTEL')
  static const CreatePayeeProfileDtoCategoryEnum HOTEL = _$createPayeeProfileDtoCategoryEnum_HOTEL;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'OTHER')
  static const CreatePayeeProfileDtoCategoryEnum OTHER = _$createPayeeProfileDtoCategoryEnum_OTHER;

  static Serializer<CreatePayeeProfileDtoCategoryEnum> get serializer => _$createPayeeProfileDtoCategoryEnumSerializer;

  const CreatePayeeProfileDtoCategoryEnum._(String name): super(name);

  static BuiltSet<CreatePayeeProfileDtoCategoryEnum> get values => _$createPayeeProfileDtoCategoryEnumValues;
  static CreatePayeeProfileDtoCategoryEnum valueOf(String name) => _$createPayeeProfileDtoCategoryEnumValueOf(name);
}

class CreatePayeeProfileDtoDataSourceEnum extends EnumClass {

  /// Data source for this profile
  @BuiltValueEnumConst(wireName: r'MANUAL')
  static const CreatePayeeProfileDtoDataSourceEnum MANUAL = _$createPayeeProfileDtoDataSourceEnum_MANUAL;
  /// Data source for this profile
  @BuiltValueEnumConst(wireName: r'IMPORT')
  static const CreatePayeeProfileDtoDataSourceEnum IMPORT = _$createPayeeProfileDtoDataSourceEnum_IMPORT;
  /// Data source for this profile
  @BuiltValueEnumConst(wireName: r'API')
  static const CreatePayeeProfileDtoDataSourceEnum API = _$createPayeeProfileDtoDataSourceEnum_API;
  /// Data source for this profile
  @BuiltValueEnumConst(wireName: r'CROWDSOURCED')
  static const CreatePayeeProfileDtoDataSourceEnum CROWDSOURCED = _$createPayeeProfileDtoDataSourceEnum_CROWDSOURCED;

  static Serializer<CreatePayeeProfileDtoDataSourceEnum> get serializer => _$createPayeeProfileDtoDataSourceEnumSerializer;

  const CreatePayeeProfileDtoDataSourceEnum._(String name): super(name);

  static BuiltSet<CreatePayeeProfileDtoDataSourceEnum> get values => _$createPayeeProfileDtoDataSourceEnumValues;
  static CreatePayeeProfileDtoDataSourceEnum valueOf(String name) => _$createPayeeProfileDtoDataSourceEnumValueOf(name);
}

