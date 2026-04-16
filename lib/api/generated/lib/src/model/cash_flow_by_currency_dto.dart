//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/balance_by_currency_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cash_flow_by_currency_dto.g.dart';

/// CashFlowByCurrencyDto
///
/// Properties:
/// * [income] - Income by currency
/// * [expense] - Expense by currency
/// * [netSavings] - Net savings by currency
@BuiltValue()
abstract class CashFlowByCurrencyDto
    implements Built<CashFlowByCurrencyDto, CashFlowByCurrencyDtoBuilder> {
  /// Income by currency
  @BuiltValueField(wireName: r'income')
  BuiltList<BalanceByCurrencyDto> get income;

  /// Expense by currency
  @BuiltValueField(wireName: r'expense')
  BuiltList<BalanceByCurrencyDto> get expense;

  /// Net savings by currency
  @BuiltValueField(wireName: r'netSavings')
  BuiltList<BalanceByCurrencyDto> get netSavings;

  CashFlowByCurrencyDto._();

  factory CashFlowByCurrencyDto(
      [void updates(CashFlowByCurrencyDtoBuilder b)]) = _$CashFlowByCurrencyDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CashFlowByCurrencyDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CashFlowByCurrencyDto> get serializer =>
      _$CashFlowByCurrencyDtoSerializer();
}

class _$CashFlowByCurrencyDtoSerializer
    implements PrimitiveSerializer<CashFlowByCurrencyDto> {
  @override
  final Iterable<Type> types = const [
    CashFlowByCurrencyDto,
    _$CashFlowByCurrencyDto
  ];

  @override
  final String wireName = r'CashFlowByCurrencyDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CashFlowByCurrencyDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'income';
    yield serializers.serialize(
      object.income,
      specifiedType:
          const FullType(BuiltList, [FullType(BalanceByCurrencyDto)]),
    );
    yield r'expense';
    yield serializers.serialize(
      object.expense,
      specifiedType:
          const FullType(BuiltList, [FullType(BalanceByCurrencyDto)]),
    );
    yield r'netSavings';
    yield serializers.serialize(
      object.netSavings,
      specifiedType:
          const FullType(BuiltList, [FullType(BalanceByCurrencyDto)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CashFlowByCurrencyDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CashFlowByCurrencyDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'income':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(BalanceByCurrencyDto)]),
          ) as BuiltList<BalanceByCurrencyDto>;
          result.income.replace(valueDes);
          break;
        case r'expense':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(BalanceByCurrencyDto)]),
          ) as BuiltList<BalanceByCurrencyDto>;
          result.expense.replace(valueDes);
          break;
        case r'netSavings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(BalanceByCurrencyDto)]),
          ) as BuiltList<BalanceByCurrencyDto>;
          result.netSavings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CashFlowByCurrencyDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CashFlowByCurrencyDtoBuilder();
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
