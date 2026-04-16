// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_trends_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PortfolioTrendsResponseDto extends PortfolioTrendsResponseDto {
  @override
  final BuiltList<TimeSeriesPointDto> series;
  @override
  final TrendSummaryDto summary;
  @override
  final String period;
  @override
  final String granularity;
  @override
  final String currency;
  @override
  final BuiltList<MultiCurrencyPointDto>? byCurrency;
  @override
  final BuiltList<ExchangeRateWarningDto>? warnings;

  factory _$PortfolioTrendsResponseDto(
          [void Function(PortfolioTrendsResponseDtoBuilder)? updates]) =>
      (new PortfolioTrendsResponseDtoBuilder()..update(updates))._build();

  _$PortfolioTrendsResponseDto._(
      {required this.series,
      required this.summary,
      required this.period,
      required this.granularity,
      required this.currency,
      this.byCurrency,
      this.warnings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        series, r'PortfolioTrendsResponseDto', 'series');
    BuiltValueNullFieldError.checkNotNull(
        summary, r'PortfolioTrendsResponseDto', 'summary');
    BuiltValueNullFieldError.checkNotNull(
        period, r'PortfolioTrendsResponseDto', 'period');
    BuiltValueNullFieldError.checkNotNull(
        granularity, r'PortfolioTrendsResponseDto', 'granularity');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'PortfolioTrendsResponseDto', 'currency');
  }

  @override
  PortfolioTrendsResponseDto rebuild(
          void Function(PortfolioTrendsResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PortfolioTrendsResponseDtoBuilder toBuilder() =>
      new PortfolioTrendsResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PortfolioTrendsResponseDto &&
        series == other.series &&
        summary == other.summary &&
        period == other.period &&
        granularity == other.granularity &&
        currency == other.currency &&
        byCurrency == other.byCurrency &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, series.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, granularity.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, byCurrency.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PortfolioTrendsResponseDto')
          ..add('series', series)
          ..add('summary', summary)
          ..add('period', period)
          ..add('granularity', granularity)
          ..add('currency', currency)
          ..add('byCurrency', byCurrency)
          ..add('warnings', warnings))
        .toString();
  }
}

class PortfolioTrendsResponseDtoBuilder
    implements
        Builder<PortfolioTrendsResponseDto, PortfolioTrendsResponseDtoBuilder> {
  _$PortfolioTrendsResponseDto? _$v;

  ListBuilder<TimeSeriesPointDto>? _series;
  ListBuilder<TimeSeriesPointDto> get series =>
      _$this._series ??= new ListBuilder<TimeSeriesPointDto>();
  set series(ListBuilder<TimeSeriesPointDto>? series) =>
      _$this._series = series;

  TrendSummaryDtoBuilder? _summary;
  TrendSummaryDtoBuilder get summary =>
      _$this._summary ??= new TrendSummaryDtoBuilder();
  set summary(TrendSummaryDtoBuilder? summary) => _$this._summary = summary;

  String? _period;
  String? get period => _$this._period;
  set period(String? period) => _$this._period = period;

  String? _granularity;
  String? get granularity => _$this._granularity;
  set granularity(String? granularity) => _$this._granularity = granularity;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  ListBuilder<MultiCurrencyPointDto>? _byCurrency;
  ListBuilder<MultiCurrencyPointDto> get byCurrency =>
      _$this._byCurrency ??= new ListBuilder<MultiCurrencyPointDto>();
  set byCurrency(ListBuilder<MultiCurrencyPointDto>? byCurrency) =>
      _$this._byCurrency = byCurrency;

  ListBuilder<ExchangeRateWarningDto>? _warnings;
  ListBuilder<ExchangeRateWarningDto> get warnings =>
      _$this._warnings ??= new ListBuilder<ExchangeRateWarningDto>();
  set warnings(ListBuilder<ExchangeRateWarningDto>? warnings) =>
      _$this._warnings = warnings;

  PortfolioTrendsResponseDtoBuilder() {
    PortfolioTrendsResponseDto._defaults(this);
  }

  PortfolioTrendsResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _series = $v.series.toBuilder();
      _summary = $v.summary.toBuilder();
      _period = $v.period;
      _granularity = $v.granularity;
      _currency = $v.currency;
      _byCurrency = $v.byCurrency?.toBuilder();
      _warnings = $v.warnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PortfolioTrendsResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PortfolioTrendsResponseDto;
  }

  @override
  void update(void Function(PortfolioTrendsResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PortfolioTrendsResponseDto build() => _build();

  _$PortfolioTrendsResponseDto _build() {
    _$PortfolioTrendsResponseDto _$result;
    try {
      _$result = _$v ??
          new _$PortfolioTrendsResponseDto._(
              series: series.build(),
              summary: summary.build(),
              period: BuiltValueNullFieldError.checkNotNull(
                  period, r'PortfolioTrendsResponseDto', 'period'),
              granularity: BuiltValueNullFieldError.checkNotNull(
                  granularity, r'PortfolioTrendsResponseDto', 'granularity'),
              currency: BuiltValueNullFieldError.checkNotNull(
                  currency, r'PortfolioTrendsResponseDto', 'currency'),
              byCurrency: _byCurrency?.build(),
              warnings: _warnings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'series';
        series.build();
        _$failedField = 'summary';
        summary.build();

        _$failedField = 'byCurrency';
        _byCurrency?.build();
        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PortfolioTrendsResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
