//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/fx_rate_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'holding_pnl_row_dto_cost_fx_rate.g.dart';

/// Historical FX rate applied to cost basis
///
/// Properties:
/// * [from] 
/// * [to] 
/// * [rate] - FX rate (Decimal string)
/// * [date] - Rate date (ISO 8601)
@BuiltValue()
abstract class HoldingPnlRowDtoCostFxRate implements FxRateDto, Built<HoldingPnlRowDtoCostFxRate, HoldingPnlRowDtoCostFxRateBuilder> {
  HoldingPnlRowDtoCostFxRate._();

  factory HoldingPnlRowDtoCostFxRate([void updates(HoldingPnlRowDtoCostFxRateBuilder b)]) = _$HoldingPnlRowDtoCostFxRate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HoldingPnlRowDtoCostFxRateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HoldingPnlRowDtoCostFxRate> get serializer => _$HoldingPnlRowDtoCostFxRateSerializer();
}

class _$HoldingPnlRowDtoCostFxRateSerializer implements PrimitiveSerializer<HoldingPnlRowDtoCostFxRate> {
  @override
  final Iterable<Type> types = const [HoldingPnlRowDtoCostFxRate, _$HoldingPnlRowDtoCostFxRate];

  @override
  final String wireName = r'HoldingPnlRowDtoCostFxRate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HoldingPnlRowDtoCostFxRate object, {
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
    HoldingPnlRowDtoCostFxRate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HoldingPnlRowDtoCostFxRateBuilder result,
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
  HoldingPnlRowDtoCostFxRate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HoldingPnlRowDtoCostFxRateBuilder();
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

