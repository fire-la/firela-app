// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_series_point_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeSeriesPointDto extends TimeSeriesPointDto {
  @override
  final String date;
  @override
  final String value;
  @override
  final JsonObject? change;
  @override
  final BuiltList<CurrencyBalanceDto>? byCurrency;

  factory _$TimeSeriesPointDto(
          [void Function(TimeSeriesPointDtoBuilder)? updates]) =>
      (new TimeSeriesPointDtoBuilder()..update(updates))._build();

  _$TimeSeriesPointDto._(
      {required this.date, required this.value, this.change, this.byCurrency})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(date, r'TimeSeriesPointDto', 'date');
    BuiltValueNullFieldError.checkNotNull(
        value, r'TimeSeriesPointDto', 'value');
  }

  @override
  TimeSeriesPointDto rebuild(
          void Function(TimeSeriesPointDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeSeriesPointDtoBuilder toBuilder() =>
      new TimeSeriesPointDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeSeriesPointDto &&
        date == other.date &&
        value == other.value &&
        change == other.change &&
        byCurrency == other.byCurrency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, change.hashCode);
    _$hash = $jc(_$hash, byCurrency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeSeriesPointDto')
          ..add('date', date)
          ..add('value', value)
          ..add('change', change)
          ..add('byCurrency', byCurrency))
        .toString();
  }
}

class TimeSeriesPointDtoBuilder
    implements Builder<TimeSeriesPointDto, TimeSeriesPointDtoBuilder> {
  _$TimeSeriesPointDto? _$v;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  JsonObject? _change;
  JsonObject? get change => _$this._change;
  set change(JsonObject? change) => _$this._change = change;

  ListBuilder<CurrencyBalanceDto>? _byCurrency;
  ListBuilder<CurrencyBalanceDto> get byCurrency =>
      _$this._byCurrency ??= new ListBuilder<CurrencyBalanceDto>();
  set byCurrency(ListBuilder<CurrencyBalanceDto>? byCurrency) =>
      _$this._byCurrency = byCurrency;

  TimeSeriesPointDtoBuilder() {
    TimeSeriesPointDto._defaults(this);
  }

  TimeSeriesPointDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _value = $v.value;
      _change = $v.change;
      _byCurrency = $v.byCurrency?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeSeriesPointDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimeSeriesPointDto;
  }

  @override
  void update(void Function(TimeSeriesPointDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeSeriesPointDto build() => _build();

  _$TimeSeriesPointDto _build() {
    _$TimeSeriesPointDto _$result;
    try {
      _$result = _$v ??
          new _$TimeSeriesPointDto._(
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'TimeSeriesPointDto', 'date'),
              value: BuiltValueNullFieldError.checkNotNull(
                  value, r'TimeSeriesPointDto', 'value'),
              change: change,
              byCurrency: _byCurrency?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'byCurrency';
        _byCurrency?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TimeSeriesPointDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
