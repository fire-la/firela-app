// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holding_pnl_row_dto_cost_basis.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HoldingPnlRowDtoCostBasis extends HoldingPnlRowDtoCostBasis {
  @override
  final String amount;
  @override
  final String currency;
  @override
  final JsonObject? baseCcyEquivalent;

  factory _$HoldingPnlRowDtoCostBasis(
          [void Function(HoldingPnlRowDtoCostBasisBuilder)? updates]) =>
      (new HoldingPnlRowDtoCostBasisBuilder()..update(updates))._build();

  _$HoldingPnlRowDtoCostBasis._(
      {required this.amount, required this.currency, this.baseCcyEquivalent})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        amount, r'HoldingPnlRowDtoCostBasis', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'HoldingPnlRowDtoCostBasis', 'currency');
  }

  @override
  HoldingPnlRowDtoCostBasis rebuild(
          void Function(HoldingPnlRowDtoCostBasisBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HoldingPnlRowDtoCostBasisBuilder toBuilder() =>
      new HoldingPnlRowDtoCostBasisBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HoldingPnlRowDtoCostBasis &&
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
    return (newBuiltValueToStringHelper(r'HoldingPnlRowDtoCostBasis')
          ..add('amount', amount)
          ..add('currency', currency)
          ..add('baseCcyEquivalent', baseCcyEquivalent))
        .toString();
  }
}

class HoldingPnlRowDtoCostBasisBuilder
    implements
        Builder<HoldingPnlRowDtoCostBasis, HoldingPnlRowDtoCostBasisBuilder>,
        MonetaryDtoBuilder {
  _$HoldingPnlRowDtoCostBasis? _$v;

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

  HoldingPnlRowDtoCostBasisBuilder() {
    HoldingPnlRowDtoCostBasis._defaults(this);
  }

  HoldingPnlRowDtoCostBasisBuilder get _$this {
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
  void replace(covariant HoldingPnlRowDtoCostBasis other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HoldingPnlRowDtoCostBasis;
  }

  @override
  void update(void Function(HoldingPnlRowDtoCostBasisBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HoldingPnlRowDtoCostBasis build() => _build();

  _$HoldingPnlRowDtoCostBasis _build() {
    final _$result = _$v ??
        new _$HoldingPnlRowDtoCostBasis._(
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'HoldingPnlRowDtoCostBasis', 'amount'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'HoldingPnlRowDtoCostBasis', 'currency'),
            baseCcyEquivalent: baseCcyEquivalent);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
