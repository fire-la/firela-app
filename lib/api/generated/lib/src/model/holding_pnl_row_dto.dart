//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/holding_pnl_row_dto_cost_fx_rate.dart';
import 'package:firela_api/src/model/holding_pnl_row_dto_average_cost_per_unit.dart';
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/holding_pnl_row_dto_market_fx_rate.dart';
import 'package:firela_api/src/model/holding_pnl_row_dto_realized_pnl.dart';
import 'package:firela_api/src/model/holding_pnl_row_dto_cost_basis.dart';
import 'package:firela_api/src/model/holding_pnl_row_dto_current_price.dart';
import 'package:firela_api/src/model/holding_pnl_row_dto_market_value.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'holding_pnl_row_dto.g.dart';

/// HoldingPnlRowDto
///
/// Properties:
/// * [accountId] - Account UUID
/// * [accountPath] - Full account path
/// * [accountCcy] - Account settlement currency (ISO 4217), from cost currency
/// * [brokerType] - Broker type derived from Platform.type
/// * [symbol] - Commodity symbol
/// * [chartToken] - Chart segment token (libs/common resolver)
/// * [assetClass] 
/// * [assetSubClass] 
/// * [units] - Net held units (Decimal string)
/// * [averageCostPerUnit] 
/// * [costBasis] 
/// * [marketValue] 
/// * [currentPrice] 
/// * [unrealizedPnlBase] - Unrealized P&L in base currency (Decimal string); null when any FX/price missing
/// * [unrealizedPnlPct] - Unrealized P&L % (Decimal string)
/// * [costFxRate] 
/// * [marketFxRate] 
/// * [pctOfInvestedAssets] - Share of invested assets % (Decimal string); only for invested chartTokens
/// * [realizedPnl] 
@BuiltValue()
abstract class HoldingPnlRowDto implements Built<HoldingPnlRowDto, HoldingPnlRowDtoBuilder> {
  /// Account UUID
  @BuiltValueField(wireName: r'accountId')
  String get accountId;

  /// Full account path
  @BuiltValueField(wireName: r'accountPath')
  String get accountPath;

  /// Account settlement currency (ISO 4217), from cost currency
  @BuiltValueField(wireName: r'accountCcy')
  JsonObject? get accountCcy;

  /// Broker type derived from Platform.type
  @BuiltValueField(wireName: r'brokerType')
  JsonObject? get brokerType;

  /// Commodity symbol
  @BuiltValueField(wireName: r'symbol')
  String get symbol;

  /// Chart segment token (libs/common resolver)
  @BuiltValueField(wireName: r'chartToken')
  HoldingPnlRowDtoChartTokenEnum get chartToken;
  // enum chartTokenEnum {  equity,  fund,  bond,  cash,  other,  };

  @BuiltValueField(wireName: r'assetClass')
  String get assetClass;

  @BuiltValueField(wireName: r'assetSubClass')
  JsonObject? get assetSubClass;

  /// Net held units (Decimal string)
  @BuiltValueField(wireName: r'units')
  String get units;

  @BuiltValueField(wireName: r'averageCostPerUnit')
  HoldingPnlRowDtoAverageCostPerUnit? get averageCostPerUnit;

  @BuiltValueField(wireName: r'costBasis')
  HoldingPnlRowDtoCostBasis? get costBasis;

  @BuiltValueField(wireName: r'marketValue')
  HoldingPnlRowDtoMarketValue? get marketValue;

  @BuiltValueField(wireName: r'currentPrice')
  HoldingPnlRowDtoCurrentPrice? get currentPrice;

  /// Unrealized P&L in base currency (Decimal string); null when any FX/price missing
  @BuiltValueField(wireName: r'unrealizedPnlBase')
  JsonObject? get unrealizedPnlBase;

  /// Unrealized P&L % (Decimal string)
  @BuiltValueField(wireName: r'unrealizedPnlPct')
  JsonObject? get unrealizedPnlPct;

  @BuiltValueField(wireName: r'costFxRate')
  HoldingPnlRowDtoCostFxRate? get costFxRate;

  @BuiltValueField(wireName: r'marketFxRate')
  HoldingPnlRowDtoMarketFxRate? get marketFxRate;

  /// Share of invested assets % (Decimal string); only for invested chartTokens
  @BuiltValueField(wireName: r'pctOfInvestedAssets')
  JsonObject? get pctOfInvestedAssets;

  @BuiltValueField(wireName: r'realizedPnl')
  HoldingPnlRowDtoRealizedPnl? get realizedPnl;

  HoldingPnlRowDto._();

  factory HoldingPnlRowDto([void updates(HoldingPnlRowDtoBuilder b)]) = _$HoldingPnlRowDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HoldingPnlRowDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HoldingPnlRowDto> get serializer => _$HoldingPnlRowDtoSerializer();
}

class _$HoldingPnlRowDtoSerializer implements PrimitiveSerializer<HoldingPnlRowDto> {
  @override
  final Iterable<Type> types = const [HoldingPnlRowDto, _$HoldingPnlRowDto];

  @override
  final String wireName = r'HoldingPnlRowDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HoldingPnlRowDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accountId';
    yield serializers.serialize(
      object.accountId,
      specifiedType: const FullType(String),
    );
    yield r'accountPath';
    yield serializers.serialize(
      object.accountPath,
      specifiedType: const FullType(String),
    );
    if (object.accountCcy != null) {
      yield r'accountCcy';
      yield serializers.serialize(
        object.accountCcy,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.brokerType != null) {
      yield r'brokerType';
      yield serializers.serialize(
        object.brokerType,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    yield r'symbol';
    yield serializers.serialize(
      object.symbol,
      specifiedType: const FullType(String),
    );
    yield r'chartToken';
    yield serializers.serialize(
      object.chartToken,
      specifiedType: const FullType(HoldingPnlRowDtoChartTokenEnum),
    );
    yield r'assetClass';
    yield serializers.serialize(
      object.assetClass,
      specifiedType: const FullType(String),
    );
    if (object.assetSubClass != null) {
      yield r'assetSubClass';
      yield serializers.serialize(
        object.assetSubClass,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    yield r'units';
    yield serializers.serialize(
      object.units,
      specifiedType: const FullType(String),
    );
    if (object.averageCostPerUnit != null) {
      yield r'averageCostPerUnit';
      yield serializers.serialize(
        object.averageCostPerUnit,
        specifiedType: const FullType.nullable(HoldingPnlRowDtoAverageCostPerUnit),
      );
    }
    if (object.costBasis != null) {
      yield r'costBasis';
      yield serializers.serialize(
        object.costBasis,
        specifiedType: const FullType.nullable(HoldingPnlRowDtoCostBasis),
      );
    }
    if (object.marketValue != null) {
      yield r'marketValue';
      yield serializers.serialize(
        object.marketValue,
        specifiedType: const FullType.nullable(HoldingPnlRowDtoMarketValue),
      );
    }
    if (object.currentPrice != null) {
      yield r'currentPrice';
      yield serializers.serialize(
        object.currentPrice,
        specifiedType: const FullType.nullable(HoldingPnlRowDtoCurrentPrice),
      );
    }
    if (object.unrealizedPnlBase != null) {
      yield r'unrealizedPnlBase';
      yield serializers.serialize(
        object.unrealizedPnlBase,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.unrealizedPnlPct != null) {
      yield r'unrealizedPnlPct';
      yield serializers.serialize(
        object.unrealizedPnlPct,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.costFxRate != null) {
      yield r'costFxRate';
      yield serializers.serialize(
        object.costFxRate,
        specifiedType: const FullType.nullable(HoldingPnlRowDtoCostFxRate),
      );
    }
    if (object.marketFxRate != null) {
      yield r'marketFxRate';
      yield serializers.serialize(
        object.marketFxRate,
        specifiedType: const FullType.nullable(HoldingPnlRowDtoMarketFxRate),
      );
    }
    if (object.pctOfInvestedAssets != null) {
      yield r'pctOfInvestedAssets';
      yield serializers.serialize(
        object.pctOfInvestedAssets,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.realizedPnl != null) {
      yield r'realizedPnl';
      yield serializers.serialize(
        object.realizedPnl,
        specifiedType: const FullType.nullable(HoldingPnlRowDtoRealizedPnl),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HoldingPnlRowDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HoldingPnlRowDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accountId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountId = valueDes;
          break;
        case r'accountPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountPath = valueDes;
          break;
        case r'accountCcy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.accountCcy = valueDes;
          break;
        case r'brokerType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.brokerType = valueDes;
          break;
        case r'symbol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.symbol = valueDes;
          break;
        case r'chartToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HoldingPnlRowDtoChartTokenEnum),
          ) as HoldingPnlRowDtoChartTokenEnum;
          result.chartToken = valueDes;
          break;
        case r'assetClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.assetClass = valueDes;
          break;
        case r'assetSubClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.assetSubClass = valueDes;
          break;
        case r'units':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.units = valueDes;
          break;
        case r'averageCostPerUnit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HoldingPnlRowDtoAverageCostPerUnit),
          ) as HoldingPnlRowDtoAverageCostPerUnit?;
          if (valueDes == null) continue;
          result.averageCostPerUnit.replace(valueDes);
          break;
        case r'costBasis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HoldingPnlRowDtoCostBasis),
          ) as HoldingPnlRowDtoCostBasis?;
          if (valueDes == null) continue;
          result.costBasis.replace(valueDes);
          break;
        case r'marketValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HoldingPnlRowDtoMarketValue),
          ) as HoldingPnlRowDtoMarketValue?;
          if (valueDes == null) continue;
          result.marketValue.replace(valueDes);
          break;
        case r'currentPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HoldingPnlRowDtoCurrentPrice),
          ) as HoldingPnlRowDtoCurrentPrice?;
          if (valueDes == null) continue;
          result.currentPrice.replace(valueDes);
          break;
        case r'unrealizedPnlBase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.unrealizedPnlBase = valueDes;
          break;
        case r'unrealizedPnlPct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.unrealizedPnlPct = valueDes;
          break;
        case r'costFxRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HoldingPnlRowDtoCostFxRate),
          ) as HoldingPnlRowDtoCostFxRate?;
          if (valueDes == null) continue;
          result.costFxRate.replace(valueDes);
          break;
        case r'marketFxRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HoldingPnlRowDtoMarketFxRate),
          ) as HoldingPnlRowDtoMarketFxRate?;
          if (valueDes == null) continue;
          result.marketFxRate.replace(valueDes);
          break;
        case r'pctOfInvestedAssets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.pctOfInvestedAssets = valueDes;
          break;
        case r'realizedPnl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HoldingPnlRowDtoRealizedPnl),
          ) as HoldingPnlRowDtoRealizedPnl?;
          if (valueDes == null) continue;
          result.realizedPnl.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HoldingPnlRowDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HoldingPnlRowDtoBuilder();
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

class HoldingPnlRowDtoChartTokenEnum extends EnumClass {

  /// Chart segment token (libs/common resolver)
  @BuiltValueEnumConst(wireName: r'equity')
  static const HoldingPnlRowDtoChartTokenEnum equity = _$holdingPnlRowDtoChartTokenEnum_equity;
  /// Chart segment token (libs/common resolver)
  @BuiltValueEnumConst(wireName: r'fund')
  static const HoldingPnlRowDtoChartTokenEnum fund = _$holdingPnlRowDtoChartTokenEnum_fund;
  /// Chart segment token (libs/common resolver)
  @BuiltValueEnumConst(wireName: r'bond')
  static const HoldingPnlRowDtoChartTokenEnum bond = _$holdingPnlRowDtoChartTokenEnum_bond;
  /// Chart segment token (libs/common resolver)
  @BuiltValueEnumConst(wireName: r'cash')
  static const HoldingPnlRowDtoChartTokenEnum cash = _$holdingPnlRowDtoChartTokenEnum_cash;
  /// Chart segment token (libs/common resolver)
  @BuiltValueEnumConst(wireName: r'other')
  static const HoldingPnlRowDtoChartTokenEnum other = _$holdingPnlRowDtoChartTokenEnum_other;

  static Serializer<HoldingPnlRowDtoChartTokenEnum> get serializer => _$holdingPnlRowDtoChartTokenEnumSerializer;

  const HoldingPnlRowDtoChartTokenEnum._(String name): super(name);

  static BuiltSet<HoldingPnlRowDtoChartTokenEnum> get values => _$holdingPnlRowDtoChartTokenEnumValues;
  static HoldingPnlRowDtoChartTokenEnum valueOf(String name) => _$holdingPnlRowDtoChartTokenEnumValueOf(name);
}

