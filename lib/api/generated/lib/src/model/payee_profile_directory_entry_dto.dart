//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payee_profile_directory_entry_dto.g.dart';

/// PayeeProfileDirectoryEntryDto
///
/// Properties:
/// * [canonical] - Canonical payee name (unique, case-insensitive)
/// * [aliases] - Multi-language aliases (verbatim as stored)
/// * [category] - Payee category
/// * [subCategory] - Sub-category
@BuiltValue()
abstract class PayeeProfileDirectoryEntryDto implements Built<PayeeProfileDirectoryEntryDto, PayeeProfileDirectoryEntryDtoBuilder> {
  /// Canonical payee name (unique, case-insensitive)
  @BuiltValueField(wireName: r'canonical')
  String get canonical;

  /// Multi-language aliases (verbatim as stored)
  @BuiltValueField(wireName: r'aliases')
  BuiltList<String> get aliases;

  /// Payee category
  @BuiltValueField(wireName: r'category')
  PayeeProfileDirectoryEntryDtoCategoryEnum get category;
  // enum categoryEnum {  RESTAURANT,  CAFE,  FAST_FOOD,  BAR,  SUPERMARKET,  CONVENIENCE_STORE,  SHOPPING_MALL,  ONLINE_SHOPPING,  TAXI,  RIDE_SHARING,  PUBLIC_TRANSPORT,  PARKING,  GAS_STATION,  UTILITIES,  TELECOM,  STREAMING,  HEALTHCARE,  EDUCATION,  ENTERTAINMENT,  SPORTS,  TRAVEL,  HOTEL,  OTHER,  };

  /// Sub-category
  @BuiltValueField(wireName: r'subCategory')
  String? get subCategory;

  PayeeProfileDirectoryEntryDto._();

  factory PayeeProfileDirectoryEntryDto([void updates(PayeeProfileDirectoryEntryDtoBuilder b)]) = _$PayeeProfileDirectoryEntryDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PayeeProfileDirectoryEntryDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PayeeProfileDirectoryEntryDto> get serializer => _$PayeeProfileDirectoryEntryDtoSerializer();
}

class _$PayeeProfileDirectoryEntryDtoSerializer implements PrimitiveSerializer<PayeeProfileDirectoryEntryDto> {
  @override
  final Iterable<Type> types = const [PayeeProfileDirectoryEntryDto, _$PayeeProfileDirectoryEntryDto];

  @override
  final String wireName = r'PayeeProfileDirectoryEntryDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PayeeProfileDirectoryEntryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
      specifiedType: const FullType(PayeeProfileDirectoryEntryDtoCategoryEnum),
    );
    if (object.subCategory != null) {
      yield r'subCategory';
      yield serializers.serialize(
        object.subCategory,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PayeeProfileDirectoryEntryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PayeeProfileDirectoryEntryDtoBuilder result,
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
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PayeeProfileDirectoryEntryDtoCategoryEnum),
          ) as PayeeProfileDirectoryEntryDtoCategoryEnum;
          result.category = valueDes;
          break;
        case r'subCategory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.subCategory = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PayeeProfileDirectoryEntryDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PayeeProfileDirectoryEntryDtoBuilder();
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

class PayeeProfileDirectoryEntryDtoCategoryEnum extends EnumClass {

  /// Payee category
  @BuiltValueEnumConst(wireName: r'RESTAURANT')
  static const PayeeProfileDirectoryEntryDtoCategoryEnum RESTAURANT = _$payeeProfileDirectoryEntryDtoCategoryEnum_RESTAURANT;
  /// Payee category
  @BuiltValueEnumConst(wireName: r'CAFE')
  static const PayeeProfileDirectoryEntryDtoCategoryEnum CAFE = _$payeeProfileDirectoryEntryDtoCategoryEnum_CAFE;
  /// Payee category
  @BuiltValueEnumConst(wireName: r'FAST_FOOD')
  static const PayeeProfileDirectoryEntryDtoCategoryEnum FAST_FOOD = _$payeeProfileDirectoryEntryDtoCategoryEnum_FAST_FOOD;
  /// Payee category
  @BuiltValueEnumConst(wireName: r'BAR')
  static const PayeeProfileDirectoryEntryDtoCategoryEnum BAR = _$payeeProfileDirectoryEntryDtoCategoryEnum_BAR;
  /// Payee category
  @BuiltValueEnumConst(wireName: r'SUPERMARKET')
  static const PayeeProfileDirectoryEntryDtoCategoryEnum SUPERMARKET = _$payeeProfileDirectoryEntryDtoCategoryEnum_SUPERMARKET;
  /// Payee category
  @BuiltValueEnumConst(wireName: r'CONVENIENCE_STORE')
  static const PayeeProfileDirectoryEntryDtoCategoryEnum CONVENIENCE_STORE = _$payeeProfileDirectoryEntryDtoCategoryEnum_CONVENIENCE_STORE;
  /// Payee category
  @BuiltValueEnumConst(wireName: r'SHOPPING_MALL')
  static const PayeeProfileDirectoryEntryDtoCategoryEnum SHOPPING_MALL = _$payeeProfileDirectoryEntryDtoCategoryEnum_SHOPPING_MALL;
  /// Payee category
  @BuiltValueEnumConst(wireName: r'ONLINE_SHOPPING')
  static const PayeeProfileDirectoryEntryDtoCategoryEnum ONLINE_SHOPPING = _$payeeProfileDirectoryEntryDtoCategoryEnum_ONLINE_SHOPPING;
  /// Payee category
  @BuiltValueEnumConst(wireName: r'TAXI')
  static const PayeeProfileDirectoryEntryDtoCategoryEnum TAXI = _$payeeProfileDirectoryEntryDtoCategoryEnum_TAXI;
  /// Payee category
  @BuiltValueEnumConst(wireName: r'RIDE_SHARING')
  static const PayeeProfileDirectoryEntryDtoCategoryEnum RIDE_SHARING = _$payeeProfileDirectoryEntryDtoCategoryEnum_RIDE_SHARING;
  /// Payee category
  @BuiltValueEnumConst(wireName: r'PUBLIC_TRANSPORT')
  static const PayeeProfileDirectoryEntryDtoCategoryEnum PUBLIC_TRANSPORT = _$payeeProfileDirectoryEntryDtoCategoryEnum_PUBLIC_TRANSPORT;
  /// Payee category
  @BuiltValueEnumConst(wireName: r'PARKING')
  static const PayeeProfileDirectoryEntryDtoCategoryEnum PARKING = _$payeeProfileDirectoryEntryDtoCategoryEnum_PARKING;
  /// Payee category
  @BuiltValueEnumConst(wireName: r'GAS_STATION')
  static const PayeeProfileDirectoryEntryDtoCategoryEnum GAS_STATION = _$payeeProfileDirectoryEntryDtoCategoryEnum_GAS_STATION;
  /// Payee category
  @BuiltValueEnumConst(wireName: r'UTILITIES')
  static const PayeeProfileDirectoryEntryDtoCategoryEnum UTILITIES = _$payeeProfileDirectoryEntryDtoCategoryEnum_UTILITIES;
  /// Payee category
  @BuiltValueEnumConst(wireName: r'TELECOM')
  static const PayeeProfileDirectoryEntryDtoCategoryEnum TELECOM = _$payeeProfileDirectoryEntryDtoCategoryEnum_TELECOM;
  /// Payee category
  @BuiltValueEnumConst(wireName: r'STREAMING')
  static const PayeeProfileDirectoryEntryDtoCategoryEnum STREAMING = _$payeeProfileDirectoryEntryDtoCategoryEnum_STREAMING;
  /// Payee category
  @BuiltValueEnumConst(wireName: r'HEALTHCARE')
  static const PayeeProfileDirectoryEntryDtoCategoryEnum HEALTHCARE = _$payeeProfileDirectoryEntryDtoCategoryEnum_HEALTHCARE;
  /// Payee category
  @BuiltValueEnumConst(wireName: r'EDUCATION')
  static const PayeeProfileDirectoryEntryDtoCategoryEnum EDUCATION = _$payeeProfileDirectoryEntryDtoCategoryEnum_EDUCATION;
  /// Payee category
  @BuiltValueEnumConst(wireName: r'ENTERTAINMENT')
  static const PayeeProfileDirectoryEntryDtoCategoryEnum ENTERTAINMENT = _$payeeProfileDirectoryEntryDtoCategoryEnum_ENTERTAINMENT;
  /// Payee category
  @BuiltValueEnumConst(wireName: r'SPORTS')
  static const PayeeProfileDirectoryEntryDtoCategoryEnum SPORTS = _$payeeProfileDirectoryEntryDtoCategoryEnum_SPORTS;
  /// Payee category
  @BuiltValueEnumConst(wireName: r'TRAVEL')
  static const PayeeProfileDirectoryEntryDtoCategoryEnum TRAVEL = _$payeeProfileDirectoryEntryDtoCategoryEnum_TRAVEL;
  /// Payee category
  @BuiltValueEnumConst(wireName: r'HOTEL')
  static const PayeeProfileDirectoryEntryDtoCategoryEnum HOTEL = _$payeeProfileDirectoryEntryDtoCategoryEnum_HOTEL;
  /// Payee category
  @BuiltValueEnumConst(wireName: r'OTHER')
  static const PayeeProfileDirectoryEntryDtoCategoryEnum OTHER = _$payeeProfileDirectoryEntryDtoCategoryEnum_OTHER;

  static Serializer<PayeeProfileDirectoryEntryDtoCategoryEnum> get serializer => _$payeeProfileDirectoryEntryDtoCategoryEnumSerializer;

  const PayeeProfileDirectoryEntryDtoCategoryEnum._(String name): super(name);

  static BuiltSet<PayeeProfileDirectoryEntryDtoCategoryEnum> get values => _$payeeProfileDirectoryEntryDtoCategoryEnumValues;
  static PayeeProfileDirectoryEntryDtoCategoryEnum valueOf(String name) => _$payeeProfileDirectoryEntryDtoCategoryEnumValueOf(name);
}

