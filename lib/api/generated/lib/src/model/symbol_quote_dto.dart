//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'symbol_quote_dto.g.dart';

/// SymbolQuoteDto
///
/// Properties:
/// * [symbol] 
/// * [name] 
/// * [exchange] 
/// * [assetType] - OpenBB asset_type
/// * [assetClass] - IGN asset class
/// * [assetSubClass] - IGN asset sub-class
/// * [currency] - Trading currency (extra_data or inferred from exchange)
/// * [price] - Latest price (Decimal string)
/// * [priceDate] - Date the price was observed (ISO yyyy-MM-dd)
/// * [changePercent] - Change vs previous close, in percentage points (1.7 == 1.7%). openbb stores change_percent as a normalized decimal; this exposes percentage points for frontend convenience.
/// * [prevClose] - Previous close (Decimal string)
/// * [open] - Day open (Decimal string)
/// * [high] - Day high (Decimal string)
/// * [low] - Day low (Decimal string)
/// * [volume] - Day volume (Decimal string)
/// * [yearHigh] - 52-week high (Decimal string)
/// * [yearLow] - 52-week low (Decimal string)
@BuiltValue()
abstract class SymbolQuoteDto implements Built<SymbolQuoteDto, SymbolQuoteDtoBuilder> {
  @BuiltValueField(wireName: r'symbol')
  String? get symbol;

  @BuiltValueField(wireName: r'name')
  JsonObject? get name;

  @BuiltValueField(wireName: r'exchange')
  JsonObject? get exchange;

  /// OpenBB asset_type
  @BuiltValueField(wireName: r'assetType')
  JsonObject? get assetType;

  /// IGN asset class
  @BuiltValueField(wireName: r'assetClass')
  JsonObject? get assetClass;

  /// IGN asset sub-class
  @BuiltValueField(wireName: r'assetSubClass')
  JsonObject? get assetSubClass;

  /// Trading currency (extra_data or inferred from exchange)
  @BuiltValueField(wireName: r'currency')
  JsonObject? get currency;

  /// Latest price (Decimal string)
  @BuiltValueField(wireName: r'price')
  JsonObject? get price;

  /// Date the price was observed (ISO yyyy-MM-dd)
  @BuiltValueField(wireName: r'priceDate')
  JsonObject? get priceDate;

  /// Change vs previous close, in percentage points (1.7 == 1.7%). openbb stores change_percent as a normalized decimal; this exposes percentage points for frontend convenience.
  @BuiltValueField(wireName: r'changePercent')
  JsonObject? get changePercent;

  /// Previous close (Decimal string)
  @BuiltValueField(wireName: r'prevClose')
  JsonObject? get prevClose;

  /// Day open (Decimal string)
  @BuiltValueField(wireName: r'open')
  JsonObject? get open;

  /// Day high (Decimal string)
  @BuiltValueField(wireName: r'high')
  JsonObject? get high;

  /// Day low (Decimal string)
  @BuiltValueField(wireName: r'low')
  JsonObject? get low;

  /// Day volume (Decimal string)
  @BuiltValueField(wireName: r'volume')
  JsonObject? get volume;

  /// 52-week high (Decimal string)
  @BuiltValueField(wireName: r'yearHigh')
  JsonObject? get yearHigh;

  /// 52-week low (Decimal string)
  @BuiltValueField(wireName: r'yearLow')
  JsonObject? get yearLow;

  SymbolQuoteDto._();

  factory SymbolQuoteDto([void updates(SymbolQuoteDtoBuilder b)]) = _$SymbolQuoteDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SymbolQuoteDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SymbolQuoteDto> get serializer => _$SymbolQuoteDtoSerializer();
}

class _$SymbolQuoteDtoSerializer implements PrimitiveSerializer<SymbolQuoteDto> {
  @override
  final Iterable<Type> types = const [SymbolQuoteDto, _$SymbolQuoteDto];

  @override
  final String wireName = r'SymbolQuoteDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SymbolQuoteDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.symbol != null) {
      yield r'symbol';
      yield serializers.serialize(
        object.symbol,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.exchange != null) {
      yield r'exchange';
      yield serializers.serialize(
        object.exchange,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.assetType != null) {
      yield r'assetType';
      yield serializers.serialize(
        object.assetType,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.assetClass != null) {
      yield r'assetClass';
      yield serializers.serialize(
        object.assetClass,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.assetSubClass != null) {
      yield r'assetSubClass';
      yield serializers.serialize(
        object.assetSubClass,
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
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.priceDate != null) {
      yield r'priceDate';
      yield serializers.serialize(
        object.priceDate,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.changePercent != null) {
      yield r'changePercent';
      yield serializers.serialize(
        object.changePercent,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.prevClose != null) {
      yield r'prevClose';
      yield serializers.serialize(
        object.prevClose,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.open != null) {
      yield r'open';
      yield serializers.serialize(
        object.open,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.high != null) {
      yield r'high';
      yield serializers.serialize(
        object.high,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.low != null) {
      yield r'low';
      yield serializers.serialize(
        object.low,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.volume != null) {
      yield r'volume';
      yield serializers.serialize(
        object.volume,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.yearHigh != null) {
      yield r'yearHigh';
      yield serializers.serialize(
        object.yearHigh,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.yearLow != null) {
      yield r'yearLow';
      yield serializers.serialize(
        object.yearLow,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SymbolQuoteDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SymbolQuoteDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'symbol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.symbol = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'exchange':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.exchange = valueDes;
          break;
        case r'assetType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.assetType = valueDes;
          break;
        case r'assetClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
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
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.currency = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.price = valueDes;
          break;
        case r'priceDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.priceDate = valueDes;
          break;
        case r'changePercent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.changePercent = valueDes;
          break;
        case r'prevClose':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.prevClose = valueDes;
          break;
        case r'open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.open = valueDes;
          break;
        case r'high':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.high = valueDes;
          break;
        case r'low':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.low = valueDes;
          break;
        case r'volume':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.volume = valueDes;
          break;
        case r'yearHigh':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.yearHigh = valueDes;
          break;
        case r'yearLow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.yearLow = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SymbolQuoteDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SymbolQuoteDtoBuilder();
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

