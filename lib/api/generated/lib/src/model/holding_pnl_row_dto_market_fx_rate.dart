//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/fx_rate_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'holding_pnl_row_dto_market_fx_rate.g.dart';

/// FX rate applied to market value
///
/// Properties:
/// * [from] 
/// * [to] 
/// * [rate] - FX rate (Decimal string)
/// * [date] - Rate date (ISO 8601)
@BuiltValue()
abstract class HoldingPnlRowDtoMarketFxRate implements FxRateDto, Built<HoldingPnlRowDtoMarketFxRate, HoldingPnlRowDtoMarketFxRateBuilder> {
  HoldingPnlRowDtoMarketFxRate._();

  factory HoldingPnlRowDtoMarketFxRate([void updates(HoldingPnlRowDtoMarketFxRateBuilder b)]) = _$HoldingPnlRowDtoMarketFxRate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HoldingPnlRowDtoMarketFxRateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HoldingPnlRowDtoMarketFxRate> get serializer => _$HoldingPnlRowDtoMarketFxRateSerializer();
}

class _$HoldingPnlRowDtoMarketFxRateSerializer implements PrimitiveSerializer<HoldingPnlRowDtoMarketFxRate> {
  @override
  final Iterable<Type> types = const [HoldingPnlRowDtoMarketFxRate, _$HoldingPnlRowDtoMarketFxRate];

  @override
  final String wireName = r'HoldingPnlRowDtoMarketFxRate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HoldingPnlRowDtoMarketFxRate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(String),
    );
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(String),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(String),
    );
    yield r'rate';
    yield serializers.serialize(
      object.rate,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HoldingPnlRowDtoMarketFxRate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HoldingPnlRowDtoMarketFxRateBuilder result,
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
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.to = valueDes;
          break;
        case r'rate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HoldingPnlRowDtoMarketFxRate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HoldingPnlRowDtoMarketFxRateBuilder();
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

