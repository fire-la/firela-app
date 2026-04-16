// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_rule_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestRuleDto extends TestRuleDto {
  @override
  final String narration;
  @override
  final String? payee;
  @override
  final String? categoryAccount;
  @override
  final num? amount;
  @override
  final String? currency;

  factory _$TestRuleDto([void Function(TestRuleDtoBuilder)? updates]) =>
      (new TestRuleDtoBuilder()..update(updates))._build();

  _$TestRuleDto._(
      {required this.narration,
      this.payee,
      this.categoryAccount,
      this.amount,
      this.currency})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        narration, r'TestRuleDto', 'narration');
  }

  @override
  TestRuleDto rebuild(void Function(TestRuleDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestRuleDtoBuilder toBuilder() => new TestRuleDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestRuleDto &&
        narration == other.narration &&
        payee == other.payee &&
        categoryAccount == other.categoryAccount &&
        amount == other.amount &&
        currency == other.currency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, narration.hashCode);
    _$hash = $jc(_$hash, payee.hashCode);
    _$hash = $jc(_$hash, categoryAccount.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TestRuleDto')
          ..add('narration', narration)
          ..add('payee', payee)
          ..add('categoryAccount', categoryAccount)
          ..add('amount', amount)
          ..add('currency', currency))
        .toString();
  }
}

class TestRuleDtoBuilder implements Builder<TestRuleDto, TestRuleDtoBuilder> {
  _$TestRuleDto? _$v;

  String? _narration;
  String? get narration => _$this._narration;
  set narration(String? narration) => _$this._narration = narration;

  String? _payee;
  String? get payee => _$this._payee;
  set payee(String? payee) => _$this._payee = payee;

  String? _categoryAccount;
  String? get categoryAccount => _$this._categoryAccount;
  set categoryAccount(String? categoryAccount) =>
      _$this._categoryAccount = categoryAccount;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(num? amount) => _$this._amount = amount;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  TestRuleDtoBuilder() {
    TestRuleDto._defaults(this);
  }

  TestRuleDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _narration = $v.narration;
      _payee = $v.payee;
      _categoryAccount = $v.categoryAccount;
      _amount = $v.amount;
      _currency = $v.currency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestRuleDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestRuleDto;
  }

  @override
  void update(void Function(TestRuleDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestRuleDto build() => _build();

  _$TestRuleDto _build() {
    final _$result = _$v ??
        new _$TestRuleDto._(
            narration: BuiltValueNullFieldError.checkNotNull(
                narration, r'TestRuleDto', 'narration'),
            payee: payee,
            categoryAccount: categoryAccount,
            amount: amount,
            currency: currency);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
