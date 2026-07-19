//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/cash_flow_trend_summary_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/exchange_rate_warning_dto.dart';
import 'package:firela_api/src/model/cash_flow_point_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cash_flow_trends_response_dto.g.dart';

/// CashFlowTrendsResponseDto
///
/// Properties:
/// * [series] - Monthly cash-flow series (fixed N-month window, zero-filled)
/// * [summary] 
/// * [period] - Period requested
/// * [granularity] - Data granularity (v1 returns month buckets)
/// * [currency] - Base currency for converted values
/// * [warnings] - Exchange rate warnings (e.g. missing rate for a currency)
@BuiltValue()
abstract class CashFlowTrendsResponseDto implements Built<CashFlowTrendsResponseDto, CashFlowTrendsResponseDtoBuilder> {
  /// Monthly cash-flow series (fixed N-month window, zero-filled)
  @BuiltValueField(wireName: r'series')
  BuiltList<CashFlowPointDto> get series;

  @BuiltValueField(wireName: r'summary')
  CashFlowTrendSummaryDto get summary;

  /// Period requested
  @BuiltValueField(wireName: r'period')
  String get period;

  /// Data granularity (v1 returns month buckets)
  @BuiltValueField(wireName: r'granularity')
  String get granularity;

  /// Base currency for converted values
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Exchange rate warnings (e.g. missing rate for a currency)
  @BuiltValueField(wireName: r'warnings')
  BuiltList<ExchangeRateWarningDto>? get warnings;

  CashFlowTrendsResponseDto._();

  factory CashFlowTrendsResponseDto([void updates(CashFlowTrendsResponseDtoBuilder b)]) = _$CashFlowTrendsResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CashFlowTrendsResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CashFlowTrendsResponseDto> get serializer => _$CashFlowTrendsResponseDtoSerializer();
}

class _$CashFlowTrendsResponseDtoSerializer implements PrimitiveSerializer<CashFlowTrendsResponseDto> {
  @override
  final Iterable<Type> types = const [CashFlowTrendsResponseDto, _$CashFlowTrendsResponseDto];

  @override
  final String wireName = r'CashFlowTrendsResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CashFlowTrendsResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'series';
    yield serializers.serialize(
      object.series,
      specifiedType: const FullType(BuiltList, [FullType(CashFlowPointDto)]),
    );
    yield r'summary';
    yield serializers.serialize(
      object.summary,
      specifiedType: const FullType(CashFlowTrendSummaryDto),
    );
    yield r'period';
    yield serializers.serialize(
      object.period,
      specifiedType: const FullType(String),
    );
    yield r'granularity';
    yield serializers.serialize(
      object.granularity,
      specifiedType: const FullType(String),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
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
    CashFlowTrendsResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CashFlowTrendsResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'series':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CashFlowPointDto)]),
          ) as BuiltList<CashFlowPointDto>;
          result.series.replace(valueDes);
          break;
        case r'summary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CashFlowTrendSummaryDto),
          ) as CashFlowTrendSummaryDto;
          result.summary.replace(valueDes);
          break;
        case r'period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.period = valueDes;
          break;
        case r'granularity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.granularity = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
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
  CashFlowTrendsResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CashFlowTrendsResponseDtoBuilder();
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

