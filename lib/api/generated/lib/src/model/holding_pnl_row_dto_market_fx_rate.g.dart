// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holding_pnl_row_dto_market_fx_rate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HoldingPnlRowDtoMarketFxRate extends HoldingPnlRowDtoMarketFxRate {
  @override
  final String from;
  @override
  final String to;
  @override
  final String rate;
  @override
  final String date;

  factory _$HoldingPnlRowDtoMarketFxRate(
          [void Function(HoldingPnlRowDtoMarketFxRateBuilder)? updates]) =>
      (new HoldingPnlRowDtoMarketFxRateBuilder()..update(updates))._build();

  _$HoldingPnlRowDtoMarketFxRate._(
      {required this.from,
      required this.to,
      required this.rate,
      required this.date})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        from, r'HoldingPnlRowDtoMarketFxRate', 'from');
    BuiltValueNullFieldError.checkNotNull(
        to, r'HoldingPnlRowDtoMarketFxRate', 'to');
    BuiltValueNullFieldError.checkNotNull(
        rate, r'HoldingPnlRowDtoMarketFxRate', 'rate');
    BuiltValueNullFieldError.checkNotNull(
        date, r'HoldingPnlRowDtoMarketFxRate', 'date');
  }

  @override
  HoldingPnlRowDtoMarketFxRate rebuild(
          void Function(HoldingPnlRowDtoMarketFxRateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HoldingPnlRowDtoMarketFxRateBuilder toBuilder() =>
      new HoldingPnlRowDtoMarketFxRateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HoldingPnlRowDtoMarketFxRate &&
        from == other.from &&
        to == other.to &&
        rate == other.rate &&
        date == other.date;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, rate.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HoldingPnlRowDtoMarketFxRate')
          ..add('from', from)
          ..add('to', to)
          ..add('rate', rate)
          ..add('date', date))
        .toString();
  }
}

class HoldingPnlRowDtoMarketFxRateBuilder
    implements
        Builder<HoldingPnlRowDtoMarketFxRate,
            HoldingPnlRowDtoMarketFxRateBuilder>,
        FxRateDtoBuilder {
  _$HoldingPnlRowDtoMarketFxRate? _$v;

  String? _from;
  String? get from => _$this._from;
  set from(covariant String? from) => _$this._from = from;

  String? _to;
  String? get to => _$this._to;
  set to(covariant String? to) => _$this._to = to;

  String? _rate;
  String? get rate => _$this._rate;
  set rate(covariant String? rate) => _$this._rate = rate;

  String? _date;
  String? get date => _$this._date;
  set date(covariant String? date) => _$this._date = date;

  HoldingPnlRowDtoMarketFxRateBuilder() {
    HoldingPnlRowDtoMarketFxRate._defaults(this);
  }

  HoldingPnlRowDtoMarketFxRateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _rate = $v.rate;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant HoldingPnlRowDtoMarketFxRate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HoldingPnlRowDtoMarketFxRate;
  }

  @override
  void update(void Function(HoldingPnlRowDtoMarketFxRateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HoldingPnlRowDtoMarketFxRate build() => _build();

  _$HoldingPnlRowDtoMarketFxRate _build() {
    final _$result = _$v ??
        new _$HoldingPnlRowDtoMarketFxRate._(
            from: BuiltValueNullFieldError.checkNotNull(
                from, r'HoldingPnlRowDtoMarketFxRate', 'from'),
            to: BuiltValueNullFieldError.checkNotNull(
                to, r'HoldingPnlRowDtoMarketFxRate', 'to'),
            rate: BuiltValueNullFieldError.checkNotNull(
                rate, r'HoldingPnlRowDtoMarketFxRate', 'rate'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'HoldingPnlRowDtoMarketFxRate', 'date'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
