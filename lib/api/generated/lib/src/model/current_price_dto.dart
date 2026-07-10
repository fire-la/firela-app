//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'current_price_dto.g.dart';

/// CurrentPriceDto
///
/// Properties:
/// * [amount] - Price amount (Decimal string)
/// * [currency] - Price currency (ISO 4217)
/// * [date] - Price date (ISO 8601)
/// * [source_] - Price source
@BuiltValue(instantiable: false)
abstract class CurrentPriceDto  {
  /// Price amount (Decimal string)
  @BuiltValueField(wireName: r'amount')
  String get amount;

  /// Price currency (ISO 4217)
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Price date (ISO 8601)
  @BuiltValueField(wireName: r'date')
  String get date;

  /// Price source
  @BuiltValueField(wireName: r'source')
  CurrentPriceDtoSource_Enum get source_;
  // enum source_Enum {  USER_OVERRIDE,  OPENBB_EQUITY,  OPENBB_CURRENCY,  };

  @BuiltValueSerializer(custom: true)
  static Serializer<CurrentPriceDto> get serializer => _$CurrentPriceDtoSerializer();
}

class _$CurrentPriceDtoSerializer implements PrimitiveSerializer<CurrentPriceDto> {
  @override
  final Iterable<Type> types = const [CurrentPriceDto];

  @override
  final String wireName = r'CurrentPriceDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CurrentPriceDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'amount';
    yield serializers.serialize(
      object.amount,
      specifiedType: const FullType(String),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(String),
    );
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(CurrentPriceDtoSource_Enum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CurrentPriceDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  CurrentPriceDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($CurrentPriceDto)) as $CurrentPriceDto;
  }
}

/// a concrete implementation of [CurrentPriceDto], since [CurrentPriceDto] is not instantiable
@BuiltValue(instantiable: true)
abstract class $CurrentPriceDto implements CurrentPriceDto, Built<$CurrentPriceDto, $CurrentPriceDtoBuilder> {
  $CurrentPriceDto._();

  factory $CurrentPriceDto([void Function($CurrentPriceDtoBuilder)? updates]) = _$$CurrentPriceDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($CurrentPriceDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$CurrentPriceDto> get serializer => _$$CurrentPriceDtoSerializer();
}

class _$$CurrentPriceDtoSerializer implements PrimitiveSerializer<$CurrentPriceDto> {
  @override
  final Iterable<Type> types = const [$CurrentPriceDto, _$$CurrentPriceDto];

  @override
  final String wireName = r'$CurrentPriceDto';

  @override
  Object serialize(
    Serializers serializers,
    $CurrentPriceDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(CurrentPriceDto))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CurrentPriceDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.amount = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.date = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CurrentPriceDtoSource_Enum),
          ) as CurrentPriceDtoSource_Enum;
          result.source_ = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $CurrentPriceDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $CurrentPriceDtoBuilder();
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

class CurrentPriceDtoSource_Enum extends EnumClass {

  /// Price source
  @BuiltValueEnumConst(wireName: r'USER_OVERRIDE')
  static const CurrentPriceDtoSource_Enum USER_OVERRIDE = _$currentPriceDtoSourceEnum_USER_OVERRIDE;
  /// Price source
  @BuiltValueEnumConst(wireName: r'OPENBB_EQUITY')
  static const CurrentPriceDtoSource_Enum OPENBB_EQUITY = _$currentPriceDtoSourceEnum_OPENBB_EQUITY;
  /// Price source
  @BuiltValueEnumConst(wireName: r'OPENBB_CURRENCY')
  static const CurrentPriceDtoSource_Enum OPENBB_CURRENCY = _$currentPriceDtoSourceEnum_OPENBB_CURRENCY;

  static Serializer<CurrentPriceDtoSource_Enum> get serializer => _$currentPriceDtoSourceEnumSerializer;

  const CurrentPriceDtoSource_Enum._(String name): super(name);

  static BuiltSet<CurrentPriceDtoSource_Enum> get values => _$currentPriceDtoSourceEnumValues;
  static CurrentPriceDtoSource_Enum valueOf(String name) => _$currentPriceDtoSourceEnumValueOf(name);
}

