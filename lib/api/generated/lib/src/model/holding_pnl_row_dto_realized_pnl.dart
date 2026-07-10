//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/monetary_dto.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'holding_pnl_row_dto_realized_pnl.g.dart';

/// Cumulative realized P&L on sold lots (asOf-date cutoff); null when the method has no applicable sells, a sell lacks a price, or any required FX rate is missing (never-mix). When a sell spans multiple currencies (cross-currency sale), amount and currency reflect the base currency; baseCcyEquivalent is always the authoritative dual-FX figure
///
/// Properties:
/// * [amount] - Amount (Decimal string)
/// * [currency] - ISO 4217 currency
/// * [baseCcyEquivalent] - Converted to user base currency (Decimal string)
@BuiltValue()
abstract class HoldingPnlRowDtoRealizedPnl implements MonetaryDto, Built<HoldingPnlRowDtoRealizedPnl, HoldingPnlRowDtoRealizedPnlBuilder> {
  HoldingPnlRowDtoRealizedPnl._();

  factory HoldingPnlRowDtoRealizedPnl([void updates(HoldingPnlRowDtoRealizedPnlBuilder b)]) = _$HoldingPnlRowDtoRealizedPnl;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HoldingPnlRowDtoRealizedPnlBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HoldingPnlRowDtoRealizedPnl> get serializer => _$HoldingPnlRowDtoRealizedPnlSerializer();
}

class _$HoldingPnlRowDtoRealizedPnlSerializer implements PrimitiveSerializer<HoldingPnlRowDtoRealizedPnl> {
  @override
  final Iterable<Type> types = const [HoldingPnlRowDtoRealizedPnl, _$HoldingPnlRowDtoRealizedPnl];

  @override
  final String wireName = r'HoldingPnlRowDtoRealizedPnl';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HoldingPnlRowDtoRealizedPnl object, {
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
    if (object.baseCcyEquivalent != null) {
      yield r'baseCcyEquivalent';
      yield serializers.serialize(
        object.baseCcyEquivalent,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HoldingPnlRowDtoRealizedPnl object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HoldingPnlRowDtoRealizedPnlBuilder result,
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
        case r'baseCcyEquivalent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.baseCcyEquivalent = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HoldingPnlRowDtoRealizedPnl deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HoldingPnlRowDtoRealizedPnlBuilder();
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

