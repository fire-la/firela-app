//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/current_price_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'holding_pnl_row_dto_current_price.g.dart';

/// Price used for market value
///
/// Properties:
/// * [amount] - Price amount (Decimal string)
/// * [currency] - Price currency (ISO 4217)
/// * [date] - Price date (ISO 8601)
/// * [source_] - Price source
@BuiltValue()
abstract class HoldingPnlRowDtoCurrentPrice implements CurrentPriceDto, Built<HoldingPnlRowDtoCurrentPrice, HoldingPnlRowDtoCurrentPriceBuilder> {
  HoldingPnlRowDtoCurrentPrice._();

  factory HoldingPnlRowDtoCurrentPrice([void updates(HoldingPnlRowDtoCurrentPriceBuilder b)]) = _$HoldingPnlRowDtoCurrentPrice;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HoldingPnlRowDtoCurrentPriceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HoldingPnlRowDtoCurrentPrice> get serializer => _$HoldingPnlRowDtoCurrentPriceSerializer();
}

class _$HoldingPnlRowDtoCurrentPriceSerializer implements PrimitiveSerializer<HoldingPnlRowDtoCurrentPrice> {
  @override
  final Iterable<Type> types = const [HoldingPnlRowDtoCurrentPrice, _$HoldingPnlRowDtoCurrentPrice];

  @override
  final String wireName = r'HoldingPnlRowDtoCurrentPrice';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HoldingPnlRowDtoCurrentPrice object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    HoldingPnlRowDtoCurrentPrice object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HoldingPnlRowDtoCurrentPriceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HoldingPnlRowDtoCurrentPrice deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HoldingPnlRowDtoCurrentPriceBuilder();
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

class HoldingPnlRowDtoCurrentPriceSource_Enum extends EnumClass {

  /// Price source
  @BuiltValueEnumConst(wireName: r'USER_OVERRIDE')
  static const HoldingPnlRowDtoCurrentPriceSource_Enum USER_OVERRIDE = _$holdingPnlRowDtoCurrentPriceSourceEnum_USER_OVERRIDE;
  /// Price source
  @BuiltValueEnumConst(wireName: r'OPENBB_EQUITY')
  static const HoldingPnlRowDtoCurrentPriceSource_Enum OPENBB_EQUITY = _$holdingPnlRowDtoCurrentPriceSourceEnum_OPENBB_EQUITY;
  /// Price source
  @BuiltValueEnumConst(wireName: r'OPENBB_CURRENCY')
  static const HoldingPnlRowDtoCurrentPriceSource_Enum OPENBB_CURRENCY = _$holdingPnlRowDtoCurrentPriceSourceEnum_OPENBB_CURRENCY;

  static Serializer<HoldingPnlRowDtoCurrentPriceSource_Enum> get serializer => _$holdingPnlRowDtoCurrentPriceSourceEnumSerializer;

  const HoldingPnlRowDtoCurrentPriceSource_Enum._(String name): super(name);

  static BuiltSet<HoldingPnlRowDtoCurrentPriceSource_Enum> get values => _$holdingPnlRowDtoCurrentPriceSourceEnumValues;
  static HoldingPnlRowDtoCurrentPriceSource_Enum valueOf(String name) => _$holdingPnlRowDtoCurrentPriceSourceEnumValueOf(name);
}

