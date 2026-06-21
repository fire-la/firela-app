//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_payee_profile_dto.g.dart';

/// UpdatePayeeProfileDto
///
/// Properties:
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
/// * [isActive] - Whether the payee profile is active (soft delete)
/// * [verifiedAt] - Verification timestamp. Set to current time to verify, or null to unverify.
@BuiltValue()
abstract class UpdatePayeeProfileDto implements Built<UpdatePayeeProfileDto, UpdatePayeeProfileDtoBuilder> {
  /// Multi-language aliases for the payee. Used for matching user input in different languages.
  @BuiltValueField(wireName: r'aliases')
  BuiltList<String>? get aliases;

  /// Translation key for i18n integration (XLIFF translation system)
  @BuiltValueField(wireName: r'i18nKey')
  String? get i18nKey;

  /// Payee category classification
  @BuiltValueField(wireName: r'category')
  UpdatePayeeProfileDtoCategoryEnum? get category;
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
  UpdatePayeeProfileDtoDataSourceEnum? get dataSource;
  // enum dataSourceEnum {  MANUAL,  IMPORT,  API,  CROWDSOURCED,  };

  /// Whether the payee profile is active (soft delete)
  @BuiltValueField(wireName: r'isActive')
  bool? get isActive;

  /// Verification timestamp. Set to current time to verify, or null to unverify.
  @BuiltValueField(wireName: r'verifiedAt')
  DateTime? get verifiedAt;

  UpdatePayeeProfileDto._();

  factory UpdatePayeeProfileDto([void updates(UpdatePayeeProfileDtoBuilder b)]) = _$UpdatePayeeProfileDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdatePayeeProfileDtoBuilder b) => b
      ..dataSource = const UpdatePayeeProfileDtoDataSourceEnum._('MANUAL');

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdatePayeeProfileDto> get serializer => _$UpdatePayeeProfileDtoSerializer();
}

class _$UpdatePayeeProfileDtoSerializer implements PrimitiveSerializer<UpdatePayeeProfileDto> {
  @override
  final Iterable<Type> types = const [UpdatePayeeProfileDto, _$UpdatePayeeProfileDto];

  @override
  final String wireName = r'UpdatePayeeProfileDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdatePayeeProfileDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType(UpdatePayeeProfileDtoCategoryEnum),
      );
    }
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
        specifiedType: const FullType(UpdatePayeeProfileDtoDataSourceEnum),
      );
    }
    if (object.isActive != null) {
      yield r'isActive';
      yield serializers.serialize(
        object.isActive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.verifiedAt != null) {
      yield r'verifiedAt';
      yield serializers.serialize(
        object.verifiedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdatePayeeProfileDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdatePayeeProfileDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
            specifiedType: const FullType(UpdatePayeeProfileDtoCategoryEnum),
          ) as UpdatePayeeProfileDtoCategoryEnum;
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
            specifiedType: const FullType(UpdatePayeeProfileDtoDataSourceEnum),
          ) as UpdatePayeeProfileDtoDataSourceEnum;
          result.dataSource = valueDes;
          break;
        case r'isActive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'verifiedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
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
  UpdatePayeeProfileDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdatePayeeProfileDtoBuilder();
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

class UpdatePayeeProfileDtoCategoryEnum extends EnumClass {

  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'RESTAURANT')
  static const UpdatePayeeProfileDtoCategoryEnum RESTAURANT = _$updatePayeeProfileDtoCategoryEnum_RESTAURANT;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'CAFE')
  static const UpdatePayeeProfileDtoCategoryEnum CAFE = _$updatePayeeProfileDtoCategoryEnum_CAFE;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'FAST_FOOD')
  static const UpdatePayeeProfileDtoCategoryEnum FAST_FOOD = _$updatePayeeProfileDtoCategoryEnum_FAST_FOOD;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'BAR')
  static const UpdatePayeeProfileDtoCategoryEnum BAR = _$updatePayeeProfileDtoCategoryEnum_BAR;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'SUPERMARKET')
  static const UpdatePayeeProfileDtoCategoryEnum SUPERMARKET = _$updatePayeeProfileDtoCategoryEnum_SUPERMARKET;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'CONVENIENCE_STORE')
  static const UpdatePayeeProfileDtoCategoryEnum CONVENIENCE_STORE = _$updatePayeeProfileDtoCategoryEnum_CONVENIENCE_STORE;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'SHOPPING_MALL')
  static const UpdatePayeeProfileDtoCategoryEnum SHOPPING_MALL = _$updatePayeeProfileDtoCategoryEnum_SHOPPING_MALL;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'ONLINE_SHOPPING')
  static const UpdatePayeeProfileDtoCategoryEnum ONLINE_SHOPPING = _$updatePayeeProfileDtoCategoryEnum_ONLINE_SHOPPING;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'TAXI')
  static const UpdatePayeeProfileDtoCategoryEnum TAXI = _$updatePayeeProfileDtoCategoryEnum_TAXI;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'RIDE_SHARING')
  static const UpdatePayeeProfileDtoCategoryEnum RIDE_SHARING = _$updatePayeeProfileDtoCategoryEnum_RIDE_SHARING;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'PUBLIC_TRANSPORT')
  static const UpdatePayeeProfileDtoCategoryEnum PUBLIC_TRANSPORT = _$updatePayeeProfileDtoCategoryEnum_PUBLIC_TRANSPORT;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'PARKING')
  static const UpdatePayeeProfileDtoCategoryEnum PARKING = _$updatePayeeProfileDtoCategoryEnum_PARKING;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'GAS_STATION')
  static const UpdatePayeeProfileDtoCategoryEnum GAS_STATION = _$updatePayeeProfileDtoCategoryEnum_GAS_STATION;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'UTILITIES')
  static const UpdatePayeeProfileDtoCategoryEnum UTILITIES = _$updatePayeeProfileDtoCategoryEnum_UTILITIES;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'TELECOM')
  static const UpdatePayeeProfileDtoCategoryEnum TELECOM = _$updatePayeeProfileDtoCategoryEnum_TELECOM;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'STREAMING')
  static const UpdatePayeeProfileDtoCategoryEnum STREAMING = _$updatePayeeProfileDtoCategoryEnum_STREAMING;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'HEALTHCARE')
  static const UpdatePayeeProfileDtoCategoryEnum HEALTHCARE = _$updatePayeeProfileDtoCategoryEnum_HEALTHCARE;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'EDUCATION')
  static const UpdatePayeeProfileDtoCategoryEnum EDUCATION = _$updatePayeeProfileDtoCategoryEnum_EDUCATION;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'ENTERTAINMENT')
  static const UpdatePayeeProfileDtoCategoryEnum ENTERTAINMENT = _$updatePayeeProfileDtoCategoryEnum_ENTERTAINMENT;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'SPORTS')
  static const UpdatePayeeProfileDtoCategoryEnum SPORTS = _$updatePayeeProfileDtoCategoryEnum_SPORTS;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'TRAVEL')
  static const UpdatePayeeProfileDtoCategoryEnum TRAVEL = _$updatePayeeProfileDtoCategoryEnum_TRAVEL;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'HOTEL')
  static const UpdatePayeeProfileDtoCategoryEnum HOTEL = _$updatePayeeProfileDtoCategoryEnum_HOTEL;
  /// Payee category classification
  @BuiltValueEnumConst(wireName: r'OTHER')
  static const UpdatePayeeProfileDtoCategoryEnum OTHER = _$updatePayeeProfileDtoCategoryEnum_OTHER;

  static Serializer<UpdatePayeeProfileDtoCategoryEnum> get serializer => _$updatePayeeProfileDtoCategoryEnumSerializer;

  const UpdatePayeeProfileDtoCategoryEnum._(String name): super(name);

  static BuiltSet<UpdatePayeeProfileDtoCategoryEnum> get values => _$updatePayeeProfileDtoCategoryEnumValues;
  static UpdatePayeeProfileDtoCategoryEnum valueOf(String name) => _$updatePayeeProfileDtoCategoryEnumValueOf(name);
}

class UpdatePayeeProfileDtoDataSourceEnum extends EnumClass {

  /// Data source for this profile
  @BuiltValueEnumConst(wireName: r'MANUAL')
  static const UpdatePayeeProfileDtoDataSourceEnum MANUAL = _$updatePayeeProfileDtoDataSourceEnum_MANUAL;
  /// Data source for this profile
  @BuiltValueEnumConst(wireName: r'IMPORT')
  static const UpdatePayeeProfileDtoDataSourceEnum IMPORT = _$updatePayeeProfileDtoDataSourceEnum_IMPORT;
  /// Data source for this profile
  @BuiltValueEnumConst(wireName: r'API')
  static const UpdatePayeeProfileDtoDataSourceEnum API = _$updatePayeeProfileDtoDataSourceEnum_API;
  /// Data source for this profile
  @BuiltValueEnumConst(wireName: r'CROWDSOURCED')
  static const UpdatePayeeProfileDtoDataSourceEnum CROWDSOURCED = _$updatePayeeProfileDtoDataSourceEnum_CROWDSOURCED;

  static Serializer<UpdatePayeeProfileDtoDataSourceEnum> get serializer => _$updatePayeeProfileDtoDataSourceEnumSerializer;

  const UpdatePayeeProfileDtoDataSourceEnum._(String name): super(name);

  static BuiltSet<UpdatePayeeProfileDtoDataSourceEnum> get values => _$updatePayeeProfileDtoDataSourceEnumValues;
  static UpdatePayeeProfileDtoDataSourceEnum valueOf(String name) => _$updatePayeeProfileDtoDataSourceEnumValueOf(name);
}

