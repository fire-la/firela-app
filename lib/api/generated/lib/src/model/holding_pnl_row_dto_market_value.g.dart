// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holding_pnl_row_dto_market_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HoldingPnlRowDtoMarketValue extends HoldingPnlRowDtoMarketValue {
  @override
  final String amount;
  @override
  final String currency;
  @override
  final JsonObject? baseCcyEquivalent;

  factory _$HoldingPnlRowDtoMarketValue(
          [void Function(HoldingPnlRowDtoMarketValueBuilder)? updates]) =>
      (new HoldingPnlRowDtoMarketValueBuilder()..update(updates))._build();

  _$HoldingPnlRowDtoMarketValue._(
      {required this.amount, required this.currency, this.baseCcyEquivalent})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        amount, r'HoldingPnlRowDtoMarketValue', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'HoldingPnlRowDtoMarketValue', 'currency');
  }

  @override
  HoldingPnlRowDtoMarketValue rebuild(
          void Function(HoldingPnlRowDtoMarketValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HoldingPnlRowDtoMarketValueBuilder toBuilder() =>
      new HoldingPnlRowDtoMarketValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HoldingPnlRowDtoMarketValue &&
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
    return (newBuiltValueToStringHelper(r'HoldingPnlRowDtoMarketValue')
          ..add('amount', amount)
          ..add('currency', currency)
          ..add('baseCcyEquivalent', baseCcyEquivalent))
        .toString();
  }
}

class HoldingPnlRowDtoMarketValueBuilder
    implements
        Builder<HoldingPnlRowDtoMarketValue,
            HoldingPnlRowDtoMarketValueBuilder>,
        MonetaryDtoBuilder {
  _$HoldingPnlRowDtoMarketValue? _$v;

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

  HoldingPnlRowDtoMarketValueBuilder() {
    HoldingPnlRowDtoMarketValue._defaults(this);
  }

  HoldingPnlRowDtoMarketValueBuilder get _$this {
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
  void replace(covariant HoldingPnlRowDtoMarketValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HoldingPnlRowDtoMarketValue;
  }

  @override
  void update(void Function(HoldingPnlRowDtoMarketValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HoldingPnlRowDtoMarketValue build() => _build();

  _$HoldingPnlRowDtoMarketValue _build() {
    final _$result = _$v ??
        new _$HoldingPnlRowDtoMarketValue._(
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'HoldingPnlRowDtoMarketValue', 'amount'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'HoldingPnlRowDtoMarketValue', 'currency'),
            baseCcyEquivalent: baseCcyEquivalent);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
