//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/monetary_dto.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'holding_pnl_row_dto_average_cost_per_unit.g.dart';

/// Average cost per unit; null when cost currency conflicts or no cost
///
/// Properties:
/// * [amount] - Amount (Decimal string)
/// * [currency] - ISO 4217 currency
/// * [baseCcyEquivalent] - Converted to user base currency (Decimal string)
@BuiltValue()
abstract class HoldingPnlRowDtoAverageCostPerUnit implements MonetaryDto, Built<HoldingPnlRowDtoAverageCostPerUnit, HoldingPnlRowDtoAverageCostPerUnitBuilder> {
  HoldingPnlRowDtoAverageCostPerUnit._();

  factory HoldingPnlRowDtoAverageCostPerUnit([void updates(HoldingPnlRowDtoAverageCostPerUnitBuilder b)]) = _$HoldingPnlRowDtoAverageCostPerUnit;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HoldingPnlRowDtoAverageCostPerUnitBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HoldingPnlRowDtoAverageCostPerUnit> get serializer => _$HoldingPnlRowDtoAverageCostPerUnitSerializer();
}

class _$HoldingPnlRowDtoAverageCostPerUnitSerializer implements PrimitiveSerializer<HoldingPnlRowDtoAverageCostPerUnit> {
  @override
  final Iterable<Type> types = const [HoldingPnlRowDtoAverageCostPerUnit, _$HoldingPnlRowDtoAverageCostPerUnit];

  @override
  final String wireName = r'HoldingPnlRowDtoAverageCostPerUnit';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HoldingPnlRowDtoAverageCostPerUnit object, {
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
    HoldingPnlRowDtoAverageCostPerUnit object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HoldingPnlRowDtoAverageCostPerUnitBuilder result,
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
  HoldingPnlRowDtoAverageCostPerUnit deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HoldingPnlRowDtoAverageCostPerUnitBuilder();
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

