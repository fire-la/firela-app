// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holding_pnl_row_dto_cost_fx_rate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HoldingPnlRowDtoCostFxRate extends HoldingPnlRowDtoCostFxRate {
  @override
  final String from;
  @override
  final String to;
  @override
  final String rate;
  @override
  final String date;

  factory _$HoldingPnlRowDtoCostFxRate(
          [void Function(HoldingPnlRowDtoCostFxRateBuilder)? updates]) =>
      (new HoldingPnlRowDtoCostFxRateBuilder()..update(updates))._build();

  _$HoldingPnlRowDtoCostFxRate._(
      {required this.from,
      required this.to,
      required this.rate,
      required this.date})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        from, r'HoldingPnlRowDtoCostFxRate', 'from');
    BuiltValueNullFieldError.checkNotNull(
        to, r'HoldingPnlRowDtoCostFxRate', 'to');
    BuiltValueNullFieldError.checkNotNull(
        rate, r'HoldingPnlRowDtoCostFxRate', 'rate');
    BuiltValueNullFieldError.checkNotNull(
        date, r'HoldingPnlRowDtoCostFxRate', 'date');
  }

  @override
  HoldingPnlRowDtoCostFxRate rebuild(
          void Function(HoldingPnlRowDtoCostFxRateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HoldingPnlRowDtoCostFxRateBuilder toBuilder() =>
      new HoldingPnlRowDtoCostFxRateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HoldingPnlRowDtoCostFxRate &&
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
    return (newBuiltValueToStringHelper(r'HoldingPnlRowDtoCostFxRate')
          ..add('from', from)
          ..add('to', to)
          ..add('rate', rate)
          ..add('date', date))
        .toString();
  }
}

class HoldingPnlRowDtoCostFxRateBuilder
    implements
        Builder<HoldingPnlRowDtoCostFxRate, HoldingPnlRowDtoCostFxRateBuilder>,
        FxRateDtoBuilder {
  _$HoldingPnlRowDtoCostFxRate? _$v;

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

  HoldingPnlRowDtoCostFxRateBuilder() {
    HoldingPnlRowDtoCostFxRate._defaults(this);
  }

  HoldingPnlRowDtoCostFxRateBuilder get _$this {
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
  void replace(covariant HoldingPnlRowDtoCostFxRate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HoldingPnlRowDtoCostFxRate;
  }

  @override
  void update(void Function(HoldingPnlRowDtoCostFxRateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HoldingPnlRowDtoCostFxRate build() => _build();

  _$HoldingPnlRowDtoCostFxRate _build() {
    final _$result = _$v ??
        new _$HoldingPnlRowDtoCostFxRate._(
            from: BuiltValueNullFieldError.checkNotNull(
                from, r'HoldingPnlRowDtoCostFxRate', 'from'),
            to: BuiltValueNullFieldError.checkNotNull(
                to, r'HoldingPnlRowDtoCostFxRate', 'to'),
            rate: BuiltValueNullFieldError.checkNotNull(
                rate, r'HoldingPnlRowDtoCostFxRate', 'rate'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'HoldingPnlRowDtoCostFxRate', 'date'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
