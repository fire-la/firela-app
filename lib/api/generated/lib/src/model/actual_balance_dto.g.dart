// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actual_balance_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ActualBalanceDto extends ActualBalanceDto {
  @override
  final String amount;
  @override
  final String ccy;

  factory _$ActualBalanceDto(
          [void Function(ActualBalanceDtoBuilder)? updates]) =>
      (new ActualBalanceDtoBuilder()..update(updates))._build();

  _$ActualBalanceDto._({required this.amount, required this.ccy}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        amount, r'ActualBalanceDto', 'amount');
    BuiltValueNullFieldError.checkNotNull(ccy, r'ActualBalanceDto', 'ccy');
  }

  @override
  ActualBalanceDto rebuild(void Function(ActualBalanceDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActualBalanceDtoBuilder toBuilder() =>
      new ActualBalanceDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActualBalanceDto &&
        amount == other.amount &&
        ccy == other.ccy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, ccy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActualBalanceDto')
          ..add('amount', amount)
          ..add('ccy', ccy))
        .toString();
  }
}

class ActualBalanceDtoBuilder
    implements Builder<ActualBalanceDto, ActualBalanceDtoBuilder> {
  _$ActualBalanceDto? _$v;

  String? _amount;
  String? get amount => _$this._amount;
  set amount(String? amount) => _$this._amount = amount;

  String? _ccy;
  String? get ccy => _$this._ccy;
  set ccy(String? ccy) => _$this._ccy = ccy;

  ActualBalanceDtoBuilder() {
    ActualBalanceDto._defaults(this);
  }

  ActualBalanceDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _ccy = $v.ccy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActualBalanceDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActualBalanceDto;
  }

  @override
  void update(void Function(ActualBalanceDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActualBalanceDto build() => _build();

  _$ActualBalanceDto _build() {
    final _$result = _$v ??
        new _$ActualBalanceDto._(
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'ActualBalanceDto', 'amount'),
            ccy: BuiltValueNullFieldError.checkNotNull(
                ccy, r'ActualBalanceDto', 'ccy'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
