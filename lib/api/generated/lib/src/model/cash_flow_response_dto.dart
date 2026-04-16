//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/cash_flow_by_currency_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/exchange_rate_warning_dto.dart';
import 'package:firela_api/src/model/converted_cash_flow_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cash_flow_response_dto.g.dart';

/// CashFlowResponseDto
///
/// Properties:
/// * [period] - Period identifier (YYYY-MM)
/// * [income] - Total income for the period (converted)
/// * [expense] - Total expenses for the period (converted)
/// * [netSavings] - Net savings (income - expense, converted)
/// * [savingsRate] - Savings rate percentage (netSavings / income * 100)
/// * [currency] - Base currency code
/// * [byCurrency]
/// * [converted]
/// * [warnings] - Exchange rate warnings
@BuiltValue()
abstract class CashFlowResponseDto
    implements Built<CashFlowResponseDto, CashFlowResponseDtoBuilder> {
  /// Period identifier (YYYY-MM)
  @BuiltValueField(wireName: r'period')
  String get period;

  /// Total income for the period (converted)
  @BuiltValueField(wireName: r'income')
  String get income;

  /// Total expenses for the period (converted)
  @BuiltValueField(wireName: r'expense')
  String get expense;

  /// Net savings (income - expense, converted)
  @BuiltValueField(wireName: r'netSavings')
  String get netSavings;

  /// Savings rate percentage (netSavings / income * 100)
  @BuiltValueField(wireName: r'savingsRate')
  String get savingsRate;

  /// Base currency code
  @BuiltValueField(wireName: r'currency')
  String get currency;

  @BuiltValueField(wireName: r'byCurrency')
  CashFlowByCurrencyDto? get byCurrency;

  @BuiltValueField(wireName: r'converted')
  ConvertedCashFlowDto? get converted;

  /// Exchange rate warnings
  @BuiltValueField(wireName: r'warnings')
  BuiltList<ExchangeRateWarningDto>? get warnings;

  CashFlowResponseDto._();

  factory CashFlowResponseDto([void updates(CashFlowResponseDtoBuilder b)]) =
      _$CashFlowResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CashFlowResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CashFlowResponseDto> get serializer =>
      _$CashFlowResponseDtoSerializer();
}

class _$CashFlowResponseDtoSerializer
    implements PrimitiveSerializer<CashFlowResponseDto> {
  @override
  final Iterable<Type> types = const [
    CashFlowResponseDto,
    _$CashFlowResponseDto
  ];

  @override
  final String wireName = r'CashFlowResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CashFlowResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'period';
    yield serializers.serialize(
      object.period,
      specifiedType: const FullType(String),
    );
    yield r'income';
    yield serializers.serialize(
      object.income,
      specifiedType: const FullType(String),
    );
    yield r'expense';
    yield serializers.serialize(
      object.expense,
      specifiedType: const FullType(String),
    );
    yield r'netSavings';
    yield serializers.serialize(
      object.netSavings,
      specifiedType: const FullType(String),
    );
    yield r'savingsRate';
    yield serializers.serialize(
      object.savingsRate,
      specifiedType: const FullType(String),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    if (object.byCurrency != null) {
      yield r'byCurrency';
      yield serializers.serialize(
        object.byCurrency,
        specifiedType: const FullType(CashFlowByCurrencyDto),
      );
    }
    if (object.converted != null) {
      yield r'converted';
      yield serializers.serialize(
        object.converted,
        specifiedType: const FullType(ConvertedCashFlowDto),
      );
    }
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType:
            const FullType(BuiltList, [FullType(ExchangeRateWarningDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CashFlowResponseDto object, {
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
    required CashFlowResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.period = valueDes;
          break;
        case r'income':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.income = valueDes;
          break;
        case r'expense':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expense = valueDes;
          break;
        case r'netSavings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.netSavings = valueDes;
          break;
        case r'savingsRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.savingsRate = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'byCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CashFlowByCurrencyDto),
          ) as CashFlowByCurrencyDto;
          result.byCurrency.replace(valueDes);
          break;
        case r'converted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ConvertedCashFlowDto),
          ) as ConvertedCashFlowDto;
          result.converted.replace(valueDes);
          break;
        case r'warnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(ExchangeRateWarningDto)]),
          ) as BuiltList<ExchangeRateWarningDto>;
          result.warnings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CashFlowResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CashFlowResponseDtoBuilder();
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
