//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/exchange_rate_warning_dto.dart';
import 'package:firela_api/src/model/balance_by_currency_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transaction_list_summary_dto.g.dart';

/// TransactionListSummaryDto
///
/// Properties:
/// * [totalAmount] - Partial converted total in base currency (rated currencies only, raw Beancount sign). When warnings is non-empty this excludes currencies missing an FX rate; may be \"0.00\" if ALL non-base currencies lack a rate. Converted at the dateTo (or current) available rate.
/// * [currency] - Base currency (ISO 4217)
/// * [balanceByCurrency] - Raw (unconverted) balance per currency
/// * [warnings] - Currencies missing an FX rate (omitted when empty)
@BuiltValue()
abstract class TransactionListSummaryDto implements Built<TransactionListSummaryDto, TransactionListSummaryDtoBuilder> {
  /// Partial converted total in base currency (rated currencies only, raw Beancount sign). When warnings is non-empty this excludes currencies missing an FX rate; may be \"0.00\" if ALL non-base currencies lack a rate. Converted at the dateTo (or current) available rate.
  @BuiltValueField(wireName: r'totalAmount')
  String get totalAmount;

  /// Base currency (ISO 4217)
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Raw (unconverted) balance per currency
  @BuiltValueField(wireName: r'balanceByCurrency')
  BuiltList<BalanceByCurrencyDto> get balanceByCurrency;

  /// Currencies missing an FX rate (omitted when empty)
  @BuiltValueField(wireName: r'warnings')
  BuiltList<ExchangeRateWarningDto>? get warnings;

  TransactionListSummaryDto._();

  factory TransactionListSummaryDto([void updates(TransactionListSummaryDtoBuilder b)]) = _$TransactionListSummaryDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TransactionListSummaryDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TransactionListSummaryDto> get serializer => _$TransactionListSummaryDtoSerializer();
}

class _$TransactionListSummaryDtoSerializer implements PrimitiveSerializer<TransactionListSummaryDto> {
  @override
  final Iterable<Type> types = const [TransactionListSummaryDto, _$TransactionListSummaryDto];

  @override
  final String wireName = r'TransactionListSummaryDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TransactionListSummaryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'totalAmount';
    yield serializers.serialize(
      object.totalAmount,
      specifiedType: const FullType(String),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    yield r'balanceByCurrency';
    yield serializers.serialize(
      object.balanceByCurrency,
      specifiedType: const FullType(BuiltList, [FullType(BalanceByCurrencyDto)]),
    );
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(ExchangeRateWarningDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TransactionListSummaryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TransactionListSummaryDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'totalAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.totalAmount = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'balanceByCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BalanceByCurrencyDto)]),
          ) as BuiltList<BalanceByCurrencyDto>;
          result.balanceByCurrency.replace(valueDes);
          break;
        case r'warnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExchangeRateWarningDto)]),
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
  TransactionListSummaryDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransactionListSummaryDtoBuilder();
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

