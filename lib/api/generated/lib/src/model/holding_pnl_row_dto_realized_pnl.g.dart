// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holding_pnl_row_dto_realized_pnl.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HoldingPnlRowDtoRealizedPnl extends HoldingPnlRowDtoRealizedPnl {
  @override
  final String amount;
  @override
  final String currency;
  @override
  final JsonObject? baseCcyEquivalent;

  factory _$HoldingPnlRowDtoRealizedPnl(
          [void Function(HoldingPnlRowDtoRealizedPnlBuilder)? updates]) =>
      (new HoldingPnlRowDtoRealizedPnlBuilder()..update(updates))._build();

  _$HoldingPnlRowDtoRealizedPnl._(
      {required this.amount, required this.currency, this.baseCcyEquivalent})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        amount, r'HoldingPnlRowDtoRealizedPnl', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'HoldingPnlRowDtoRealizedPnl', 'currency');
  }

  @override
  HoldingPnlRowDtoRealizedPnl rebuild(
          void Function(HoldingPnlRowDtoRealizedPnlBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HoldingPnlRowDtoRealizedPnlBuilder toBuilder() =>
      new HoldingPnlRowDtoRealizedPnlBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HoldingPnlRowDtoRealizedPnl &&
        amount == other.amount &&
        currency == other.currency &&
        baseCcyEquivalent == other.baseCcyEquivalent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, baseCcyEquivalent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HoldingPnlRowDtoRealizedPnl')
          ..add('amount', amount)
          ..add('currency', currency)
          ..add('baseCcyEquivalent', baseCcyEquivalent))
        .toString();
  }
}

class HoldingPnlRowDtoRealizedPnlBuilder
    implements
        Builder<HoldingPnlRowDtoRealizedPnl,
            HoldingPnlRowDtoRealizedPnlBuilder>,
        MonetaryDtoBuilder {
  _$HoldingPnlRowDtoRealizedPnl? _$v;

  String? _amount;
  String? get amount => _$this._amount;
  set amount(covariant String? amount) => _$this._amount = amount;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(covariant String? currency) => _$this._currency = currency;

  JsonObject? _baseCcyEquivalent;
  JsonObject? get baseCcyEquivalent => _$this._baseCcyEquivalent;
  set baseCcyEquivalent(covariant JsonObject? baseCcyEquivalent) =>
      _$this._baseCcyEquivalent = baseCcyEquivalent;

  HoldingPnlRowDtoRealizedPnlBuilder() {
    HoldingPnlRowDtoRealizedPnl._defaults(this);
  }

  HoldingPnlRowDtoRealizedPnlBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _currency = $v.currency;
      _baseCcyEquivalent = $v.baseCcyEquivalent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant HoldingPnlRowDtoRealizedPnl other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HoldingPnlRowDtoRealizedPnl;
  }

  @override
  void update(void Function(HoldingPnlRowDtoRealizedPnlBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HoldingPnlRowDtoRealizedPnl build() => _build();

  _$HoldingPnlRowDtoRealizedPnl _build() {
    final _$result = _$v ??
        new _$HoldingPnlRowDtoRealizedPnl._(
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'HoldingPnlRowDtoRealizedPnl', 'amount'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'HoldingPnlRowDtoRealizedPnl', 'currency'),
            baseCcyEquivalent: baseCcyEquivalent);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
