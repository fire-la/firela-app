// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastResponseDto extends ForecastResponseDto {
  @override
  final BuiltList<MonthlyForecastDto> forecast;
  @override
  final num totalOutflow;
  @override
  final JsonObject totalByCurrency;
  @override
  final num rulesCount;
  @override
  final String periodStart;
  @override
  final String periodEnd;

  factory _$ForecastResponseDto(
          [void Function(ForecastResponseDtoBuilder)? updates]) =>
      (new ForecastResponseDtoBuilder()..update(updates))._build();

  _$ForecastResponseDto._(
      {required this.forecast,
      required this.totalOutflow,
      required this.totalByCurrency,
      required this.rulesCount,
      required this.periodStart,
      required this.periodEnd})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        forecast, r'ForecastResponseDto', 'forecast');
    BuiltValueNullFieldError.checkNotNull(
        totalOutflow, r'ForecastResponseDto', 'totalOutflow');
    BuiltValueNullFieldError.checkNotNull(
        totalByCurrency, r'ForecastResponseDto', 'totalByCurrency');
    BuiltValueNullFieldError.checkNotNull(
        rulesCount, r'ForecastResponseDto', 'rulesCount');
    BuiltValueNullFieldError.checkNotNull(
        periodStart, r'ForecastResponseDto', 'periodStart');
    BuiltValueNullFieldError.checkNotNull(
        periodEnd, r'ForecastResponseDto', 'periodEnd');
  }

  @override
  ForecastResponseDto rebuild(
          void Function(ForecastResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastResponseDtoBuilder toBuilder() =>
      new ForecastResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastResponseDto &&
        forecast == other.forecast &&
        totalOutflow == other.totalOutflow &&
        totalByCurrency == other.totalByCurrency &&
        rulesCount == other.rulesCount &&
        periodStart == other.periodStart &&
        periodEnd == other.periodEnd;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, forecast.hashCode);
    _$hash = $jc(_$hash, totalOutflow.hashCode);
    _$hash = $jc(_$hash, totalByCurrency.hashCode);
    _$hash = $jc(_$hash, rulesCount.hashCode);
    _$hash = $jc(_$hash, periodStart.hashCode);
    _$hash = $jc(_$hash, periodEnd.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastResponseDto')
          ..add('forecast', forecast)
          ..add('totalOutflow', totalOutflow)
          ..add('totalByCurrency', totalByCurrency)
          ..add('rulesCount', rulesCount)
          ..add('periodStart', periodStart)
          ..add('periodEnd', periodEnd))
        .toString();
  }
}

class ForecastResponseDtoBuilder
    implements Builder<ForecastResponseDto, ForecastResponseDtoBuilder> {
  _$ForecastResponseDto? _$v;

  ListBuilder<MonthlyForecastDto>? _forecast;
  ListBuilder<MonthlyForecastDto> get forecast =>
      _$this._forecast ??= new ListBuilder<MonthlyForecastDto>();
  set forecast(ListBuilder<MonthlyForecastDto>? forecast) =>
      _$this._forecast = forecast;

  num? _totalOutflow;
  num? get totalOutflow => _$this._totalOutflow;
  set totalOutflow(num? totalOutflow) => _$this._totalOutflow = totalOutflow;

  JsonObject? _totalByCurrency;
  JsonObject? get totalByCurrency => _$this._totalByCurrency;
  set totalByCurrency(JsonObject? totalByCurrency) =>
      _$this._totalByCurrency = totalByCurrency;

  num? _rulesCount;
  num? get rulesCount => _$this._rulesCount;
  set rulesCount(num? rulesCount) => _$this._rulesCount = rulesCount;

  String? _periodStart;
  String? get periodStart => _$this._periodStart;
  set periodStart(String? periodStart) => _$this._periodStart = periodStart;

  String? _periodEnd;
  String? get periodEnd => _$this._periodEnd;
  set periodEnd(String? periodEnd) => _$this._periodEnd = periodEnd;

  ForecastResponseDtoBuilder() {
    ForecastResponseDto._defaults(this);
  }

  ForecastResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _forecast = $v.forecast.toBuilder();
      _totalOutflow = $v.totalOutflow;
      _totalByCurrency = $v.totalByCurrency;
      _rulesCount = $v.rulesCount;
      _periodStart = $v.periodStart;
      _periodEnd = $v.periodEnd;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ForecastResponseDto;
  }

  @override
  void update(void Function(ForecastResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastResponseDto build() => _build();

  _$ForecastResponseDto _build() {
    _$ForecastResponseDto _$result;
    try {
      _$result = _$v ??
          new _$ForecastResponseDto._(
              forecast: forecast.build(),
              totalOutflow: BuiltValueNullFieldError.checkNotNull(
                  totalOutflow, r'ForecastResponseDto', 'totalOutflow'),
              totalByCurrency: BuiltValueNullFieldError.checkNotNull(
                  totalByCurrency, r'ForecastResponseDto', 'totalByCurrency'),
              rulesCount: BuiltValueNullFieldError.checkNotNull(
                  rulesCount, r'ForecastResponseDto', 'rulesCount'),
              periodStart: BuiltValueNullFieldError.checkNotNull(
                  periodStart, r'ForecastResponseDto', 'periodStart'),
              periodEnd: BuiltValueNullFieldError.checkNotNull(
                  periodEnd, r'ForecastResponseDto', 'periodEnd'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'forecast';
        forecast.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ForecastResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
