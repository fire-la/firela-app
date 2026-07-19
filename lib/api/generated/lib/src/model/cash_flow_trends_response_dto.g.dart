// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_flow_trends_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CashFlowTrendsResponseDto extends CashFlowTrendsResponseDto {
  @override
  final BuiltList<CashFlowPointDto> series;
  @override
  final CashFlowTrendSummaryDto summary;
  @override
  final String period;
  @override
  final String granularity;
  @override
  final String currency;
  @override
  final BuiltList<ExchangeRateWarningDto>? warnings;

  factory _$CashFlowTrendsResponseDto(
          [void Function(CashFlowTrendsResponseDtoBuilder)? updates]) =>
      (new CashFlowTrendsResponseDtoBuilder()..update(updates))._build();

  _$CashFlowTrendsResponseDto._(
      {required this.series,
      required this.summary,
      required this.period,
      required this.granularity,
      required this.currency,
      this.warnings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        series, r'CashFlowTrendsResponseDto', 'series');
    BuiltValueNullFieldError.checkNotNull(
        summary, r'CashFlowTrendsResponseDto', 'summary');
    BuiltValueNullFieldError.checkNotNull(
        period, r'CashFlowTrendsResponseDto', 'period');
    BuiltValueNullFieldError.checkNotNull(
        granularity, r'CashFlowTrendsResponseDto', 'granularity');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'CashFlowTrendsResponseDto', 'currency');
  }

  @override
  CashFlowTrendsResponseDto rebuild(
          void Function(CashFlowTrendsResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CashFlowTrendsResponseDtoBuilder toBuilder() =>
      new CashFlowTrendsResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CashFlowTrendsResponseDto &&
        series == other.series &&
        summary == other.summary &&
        period == other.period &&
        granularity == other.granularity &&
        currency == other.currency &&
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
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CashFlowTrendsResponseDto')
          ..add('series', series)
          ..add('summary', summary)
          ..add('period', period)
          ..add('granularity', granularity)
          ..add('currency', currency)
          ..add('warnings', warnings))
        .toString();
  }
}

class CashFlowTrendsResponseDtoBuilder
    implements
        Builder<CashFlowTrendsResponseDto, CashFlowTrendsResponseDtoBuilder> {
  _$CashFlowTrendsResponseDto? _$v;

  ListBuilder<CashFlowPointDto>? _series;
  ListBuilder<CashFlowPointDto> get series =>
      _$this._series ??= new ListBuilder<CashFlowPointDto>();
  set series(ListBuilder<CashFlowPointDto>? series) => _$this._series = series;

  CashFlowTrendSummaryDtoBuilder? _summary;
  CashFlowTrendSummaryDtoBuilder get summary =>
      _$this._summary ??= new CashFlowTrendSummaryDtoBuilder();
  set summary(CashFlowTrendSummaryDtoBuilder? summary) =>
      _$this._summary = summary;

  String? _period;
  String? get period => _$this._period;
  set period(String? period) => _$this._period = period;

  String? _granularity;
  String? get granularity => _$this._granularity;
  set granularity(String? granularity) => _$this._granularity = granularity;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  ListBuilder<ExchangeRateWarningDto>? _warnings;
  ListBuilder<ExchangeRateWarningDto> get warnings =>
      _$this._warnings ??= new ListBuilder<ExchangeRateWarningDto>();
  set warnings(ListBuilder<ExchangeRateWarningDto>? warnings) =>
      _$this._warnings = warnings;

  CashFlowTrendsResponseDtoBuilder() {
    CashFlowTrendsResponseDto._defaults(this);
  }

  CashFlowTrendsResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _series = $v.series.toBuilder();
      _summary = $v.summary.toBuilder();
      _period = $v.period;
      _granularity = $v.granularity;
      _currency = $v.currency;
      _warnings = $v.warnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CashFlowTrendsResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CashFlowTrendsResponseDto;
  }

  @override
  void update(void Function(CashFlowTrendsResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CashFlowTrendsResponseDto build() => _build();

  _$CashFlowTrendsResponseDto _build() {
    _$CashFlowTrendsResponseDto _$result;
    try {
      _$result = _$v ??
          new _$CashFlowTrendsResponseDto._(
              series: series.build(),
              summary: summary.build(),
              period: BuiltValueNullFieldError.checkNotNull(
                  period, r'CashFlowTrendsResponseDto', 'period'),
              granularity: BuiltValueNullFieldError.checkNotNull(
                  granularity, r'CashFlowTrendsResponseDto', 'granularity'),
              currency: BuiltValueNullFieldError.checkNotNull(
                  currency, r'CashFlowTrendsResponseDto', 'currency'),
              warnings: _warnings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'series';
        series.build();
        _$failedField = 'summary';
        summary.build();

        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CashFlowTrendsResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
