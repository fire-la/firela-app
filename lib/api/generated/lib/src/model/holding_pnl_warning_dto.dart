//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'holding_pnl_warning_dto.g.dart';

/// HoldingPnlWarningDto
///
/// Properties:
/// * [type] - Warning type
/// * [symbol] 
/// * [accountId] 
/// * [currency] 
@BuiltValue()
abstract class HoldingPnlWarningDto implements Built<HoldingPnlWarningDto, HoldingPnlWarningDtoBuilder> {
  /// Warning type
  @BuiltValueField(wireName: r'type')
  HoldingPnlWarningDtoTypeEnum get type;
  // enum typeEnum {  MISSING_COST_FX_RATE,  MISSING_MARKET_FX_RATE,  MISSING_SALE_PRICE,  MISSING_REALIZED_FX_RATE,  OVERSOLD_LOTS,  NO_PRICE,  MIXED_COST_CURRENCY,  };

  @BuiltValueField(wireName: r'symbol')
  JsonObject? get symbol;

  @BuiltValueField(wireName: r'accountId')
  JsonObject? get accountId;

  @BuiltValueField(wireName: r'currency')
  JsonObject? get currency;

  HoldingPnlWarningDto._();

  factory HoldingPnlWarningDto([void updates(HoldingPnlWarningDtoBuilder b)]) = _$HoldingPnlWarningDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HoldingPnlWarningDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HoldingPnlWarningDto> get serializer => _$HoldingPnlWarningDtoSerializer();
}

class _$HoldingPnlWarningDtoSerializer implements PrimitiveSerializer<HoldingPnlWarningDto> {
  @override
  final Iterable<Type> types = const [HoldingPnlWarningDto, _$HoldingPnlWarningDto];

  @override
  final String wireName = r'HoldingPnlWarningDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HoldingPnlWarningDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(HoldingPnlWarningDtoTypeEnum),
    );
    if (object.symbol != null) {
      yield r'symbol';
      yield serializers.serialize(
        object.symbol,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.accountId != null) {
      yield r'accountId';
      yield serializers.serialize(
        object.accountId,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.currency != null) {
      yield r'currency';
      yield serializers.serialize(
        object.currency,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HoldingPnlWarningDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HoldingPnlWarningDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HoldingPnlWarningDtoTypeEnum),
          ) as HoldingPnlWarningDtoTypeEnum;
          result.type = valueDes;
          break;
        case r'symbol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.symbol = valueDes;
          break;
        case r'accountId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.accountId = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
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
  HoldingPnlWarningDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HoldingPnlWarningDtoBuilder();
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

class HoldingPnlWarningDtoTypeEnum extends EnumClass {

  /// Warning type
  @BuiltValueEnumConst(wireName: r'MISSING_COST_FX_RATE')
  static const HoldingPnlWarningDtoTypeEnum MISSING_COST_FX_RATE = _$holdingPnlWarningDtoTypeEnum_MISSING_COST_FX_RATE;
  /// Warning type
  @BuiltValueEnumConst(wireName: r'MISSING_MARKET_FX_RATE')
  static const HoldingPnlWarningDtoTypeEnum MISSING_MARKET_FX_RATE = _$holdingPnlWarningDtoTypeEnum_MISSING_MARKET_FX_RATE;
  /// Warning type
  @BuiltValueEnumConst(wireName: r'MISSING_SALE_PRICE')
  static const HoldingPnlWarningDtoTypeEnum MISSING_SALE_PRICE = _$holdingPnlWarningDtoTypeEnum_MISSING_SALE_PRICE;
  /// Warning type
  @BuiltValueEnumConst(wireName: r'MISSING_REALIZED_FX_RATE')
  static const HoldingPnlWarningDtoTypeEnum MISSING_REALIZED_FX_RATE = _$holdingPnlWarningDtoTypeEnum_MISSING_REALIZED_FX_RATE;
  /// Warning type
  @BuiltValueEnumConst(wireName: r'OVERSOLD_LOTS')
  static const HoldingPnlWarningDtoTypeEnum OVERSOLD_LOTS = _$holdingPnlWarningDtoTypeEnum_OVERSOLD_LOTS;
  /// Warning type
  @BuiltValueEnumConst(wireName: r'NO_PRICE')
  static const HoldingPnlWarningDtoTypeEnum NO_PRICE = _$holdingPnlWarningDtoTypeEnum_NO_PRICE;
  /// Warning type
  @BuiltValueEnumConst(wireName: r'MIXED_COST_CURRENCY')
  static const HoldingPnlWarningDtoTypeEnum MIXED_COST_CURRENCY = _$holdingPnlWarningDtoTypeEnum_MIXED_COST_CURRENCY;

  static Serializer<HoldingPnlWarningDtoTypeEnum> get serializer => _$holdingPnlWarningDtoTypeEnumSerializer;

  const HoldingPnlWarningDtoTypeEnum._(String name): super(name);

  static BuiltSet<HoldingPnlWarningDtoTypeEnum> get values => _$holdingPnlWarningDtoTypeEnumValues;
  static HoldingPnlWarningDtoTypeEnum valueOf(String name) => _$holdingPnlWarningDtoTypeEnumValueOf(name);
}

