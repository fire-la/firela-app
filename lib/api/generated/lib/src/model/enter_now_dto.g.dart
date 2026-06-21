// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enter_now_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnterNowDto extends EnterNowDto {
  @override
  final String? expenseAccount;
  @override
  final String? paymentAccount;
  @override
  final num? amount;
  @override
  final String? payee;
  @override
  final String? narration;

  factory _$EnterNowDto([void Function(EnterNowDtoBuilder)? updates]) =>
      (new EnterNowDtoBuilder()..update(updates))._build();

  _$EnterNowDto._(
      {this.expenseAccount,
      this.paymentAccount,
      this.amount,
      this.payee,
      this.narration})
      : super._();

  @override
  EnterNowDto rebuild(void Function(EnterNowDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnterNowDtoBuilder toBuilder() => new EnterNowDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnterNowDto &&
        expenseAccount == other.expenseAccount &&
        paymentAccount == other.paymentAccount &&
        amount == other.amount &&
        payee == other.payee &&
        narration == other.narration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expenseAccount.hashCode);
    _$hash = $jc(_$hash, paymentAccount.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, payee.hashCode);
    _$hash = $jc(_$hash, narration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnterNowDto')
          ..add('expenseAccount', expenseAccount)
          ..add('paymentAccount', paymentAccount)
          ..add('amount', amount)
          ..add('payee', payee)
          ..add('narration', narration))
        .toString();
  }
}

class EnterNowDtoBuilder implements Builder<EnterNowDto, EnterNowDtoBuilder> {
  _$EnterNowDto? _$v;

  String? _expenseAccount;
  String? get expenseAccount => _$this._expenseAccount;
  set expenseAccount(String? expenseAccount) =>
      _$this._expenseAccount = expenseAccount;

  String? _paymentAccount;
  String? get paymentAccount => _$this._paymentAccount;
  set paymentAccount(String? paymentAccount) =>
      _$this._paymentAccount = paymentAccount;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(num? amount) => _$this._amount = amount;

  String? _payee;
  String? get payee => _$this._payee;
  set payee(String? payee) => _$this._payee = payee;

  String? _narration;
  String? get narration => _$this._narration;
  set narration(String? narration) => _$this._narration = narration;

  EnterNowDtoBuilder() {
    EnterNowDto._defaults(this);
  }

  EnterNowDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expenseAccount = $v.expenseAccount;
      _paymentAccount = $v.paymentAccount;
      _amount = $v.amount;
      _payee = $v.payee;
      _narration = $v.narration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnterNowDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnterNowDto;
  }

  @override
  void update(void Function(EnterNowDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnterNowDto build() => _build();

  _$EnterNowDto _build() {
    final _$result = _$v ??
        new _$EnterNowDto._(
            expenseAccount: expenseAccount,
            paymentAccount: paymentAccount,
            amount: amount,
            payee: payee,
            narration: narration);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
