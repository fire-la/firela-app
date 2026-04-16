//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/trend_summary_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/exchange_rate_warning_dto.dart';
import 'package:firela_api/src/model/time_series_point_dto.dart';
import 'package:firela_api/src/model/multi_currency_point_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'portfolio_trends_response_dto.g.dart';

/// PortfolioTrendsResponseDto
///
/// Properties:
/// * [series] - Time series data points
/// * [summary]
/// * [period] - Period requested
/// * [granularity] - Data granularity
/// * [currency] - Base currency for converted values
/// * [byCurrency] - Multi-currency time series (each point has currency breakdown)
/// * [warnings] - Exchange rate warnings
@BuiltValue()
abstract class PortfolioTrendsResponseDto
    implements
        Built<PortfolioTrendsResponseDto, PortfolioTrendsResponseDtoBuilder> {
  /// Time series data points
  @BuiltValueField(wireName: r'series')
  BuiltList<TimeSeriesPointDto> get series;

  @BuiltValueField(wireName: r'summary')
  TrendSummaryDto get summary;

  /// Period requested
  @BuiltValueField(wireName: r'period')
  String get period;

  /// Data granularity
  @BuiltValueField(wireName: r'granularity')
  String get granularity;

  /// Base currency for converted values
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Multi-currency time series (each point has currency breakdown)
  @BuiltValueField(wireName: r'byCurrency')
  BuiltList<MultiCurrencyPointDto>? get byCurrency;

  /// Exchange rate warnings
  @BuiltValueField(wireName: r'warnings')
  BuiltList<ExchangeRateWarningDto>? get warnings;

  PortfolioTrendsResponseDto._();

  factory PortfolioTrendsResponseDto(
          [void updates(PortfolioTrendsResponseDtoBuilder b)]) =
      _$PortfolioTrendsResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PortfolioTrendsResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PortfolioTrendsResponseDto> get serializer =>
      _$PortfolioTrendsResponseDtoSerializer();
}

class _$PortfolioTrendsResponseDtoSerializer
    implements PrimitiveSerializer<PortfolioTrendsResponseDto> {
  @override
  final Iterable<Type> types = const [
    PortfolioTrendsResponseDto,
    _$PortfolioTrendsResponseDto
  ];

  @override
  final String wireName = r'PortfolioTrendsResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PortfolioTrendsResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'series';
    yield serializers.serialize(
      object.series,
      specifiedType: const FullType(BuiltList, [FullType(TimeSeriesPointDto)]),
    );
    yield r'summary';
    yield serializers.serialize(
      object.summary,
      specifiedType: const FullType(TrendSummaryDto),
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
    if (object.byCurrency != null) {
      yield r'byCurrency';
      yield serializers.serialize(
        object.byCurrency,
        specifiedType:
            const FullType(BuiltList, [FullType(MultiCurrencyPointDto)]),
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
    PortfolioTrendsResponseDto object, {
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
    required PortfolioTrendsResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'series':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(TimeSeriesPointDto)]),
          ) as BuiltList<TimeSeriesPointDto>;
          result.series.replace(valueDes);
          break;
        case r'summary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TrendSummaryDto),
          ) as TrendSummaryDto;
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
        case r'byCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(MultiCurrencyPointDto)]),
          ) as BuiltList<MultiCurrencyPointDto>;
          result.byCurrency.replace(valueDes);
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
  PortfolioTrendsResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PortfolioTrendsResponseDtoBuilder();
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
