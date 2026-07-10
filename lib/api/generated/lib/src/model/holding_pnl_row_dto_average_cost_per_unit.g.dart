// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holding_pnl_row_dto_average_cost_per_unit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HoldingPnlRowDtoAverageCostPerUnit
    extends HoldingPnlRowDtoAverageCostPerUnit {
  @override
  final String amount;
  @override
  final String currency;
  @override
  final JsonObject? baseCcyEquivalent;

  factory _$HoldingPnlRowDtoAverageCostPerUnit(
          [void Function(HoldingPnlRowDtoAverageCostPerUnitBuilder)?
              updates]) =>
      (new HoldingPnlRowDtoAverageCostPerUnitBuilder()..update(updates))
          ._build();

  _$HoldingPnlRowDtoAverageCostPerUnit._(
      {required this.amount, required this.currency, this.baseCcyEquivalent})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        amount, r'HoldingPnlRowDtoAverageCostPerUnit', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'HoldingPnlRowDtoAverageCostPerUnit', 'currency');
  }

  @override
  HoldingPnlRowDtoAverageCostPerUnit rebuild(
          void Function(HoldingPnlRowDtoAverageCostPerUnitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HoldingPnlRowDtoAverageCostPerUnitBuilder toBuilder() =>
      new HoldingPnlRowDtoAverageCostPerUnitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HoldingPnlRowDtoAverageCostPerUnit &&
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
    return (newBuiltValueToStringHelper(r'HoldingPnlRowDtoAverageCostPerUnit')
          ..add('amount', amount)
          ..add('currency', currency)
          ..add('baseCcyEquivalent', baseCcyEquivalent))
        .toString();
  }
}

class HoldingPnlRowDtoAverageCostPerUnitBuilder
    implements
        Builder<HoldingPnlRowDtoAverageCostPerUnit,
            HoldingPnlRowDtoAverageCostPerUnitBuilder>,
        MonetaryDtoBuilder {
  _$HoldingPnlRowDtoAverageCostPerUnit? _$v;

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

  HoldingPnlRowDtoAverageCostPerUnitBuilder() {
    HoldingPnlRowDtoAverageCostPerUnit._defaults(this);
  }

  HoldingPnlRowDtoAverageCostPerUnitBuilder get _$this {
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
  void replace(covariant HoldingPnlRowDtoAverageCostPerUnit other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HoldingPnlRowDtoAverageCostPerUnit;
  }

  @override
  void update(
      void Function(HoldingPnlRowDtoAverageCostPerUnitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HoldingPnlRowDtoAverageCostPerUnit build() => _build();

  _$HoldingPnlRowDtoAverageCostPerUnit _build() {
    final _$result = _$v ??
        new _$HoldingPnlRowDtoAverageCostPerUnit._(
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'HoldingPnlRowDtoAverageCostPerUnit', 'amount'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'HoldingPnlRowDtoAverageCostPerUnit', 'currency'),
            baseCcyEquivalent: baseCcyEquivalent);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
