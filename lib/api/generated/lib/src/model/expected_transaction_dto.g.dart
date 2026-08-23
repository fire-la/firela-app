// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expected_transaction_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExpectedTransactionDto extends ExpectedTransactionDto {
  @override
  final String date;
  @override
  final num amount;
  @override
  final String description;
  @override
  final String? payee;
  @override
  final String? category;

  factory _$ExpectedTransactionDto(
          [void Function(ExpectedTransactionDtoBuilder)? updates]) =>
      (new ExpectedTransactionDtoBuilder()..update(updates))._build();

  _$ExpectedTransactionDto._(
      {required this.date,
      required this.amount,
      required this.description,
      this.payee,
      this.category})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        date, r'ExpectedTransactionDto', 'date');
    BuiltValueNullFieldError.checkNotNull(
        amount, r'ExpectedTransactionDto', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        description, r'ExpectedTransactionDto', 'description');
  }

  @override
  ExpectedTransactionDto rebuild(
          void Function(ExpectedTransactionDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExpectedTransactionDtoBuilder toBuilder() =>
      new ExpectedTransactionDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExpectedTransactionDto &&
        date == other.date &&
        amount == other.amount &&
        description == other.description &&
        payee == other.payee &&
        category == other.category;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, payee.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExpectedTransactionDto')
          ..add('date', date)
          ..add('amount', amount)
          ..add('description', description)
          ..add('payee', payee)
          ..add('category', category))
        .toString();
  }
}

class ExpectedTransactionDtoBuilder
    implements Builder<ExpectedTransactionDto, ExpectedTransactionDtoBuilder> {
  _$ExpectedTransactionDto? _$v;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(num? amount) => _$this._amount = amount;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _payee;
  String? get payee => _$this._payee;
  set payee(String? payee) => _$this._payee = payee;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  ExpectedTransactionDtoBuilder() {
    ExpectedTransactionDto._defaults(this);
  }

  ExpectedTransactionDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _amount = $v.amount;
      _description = $v.description;
      _payee = $v.payee;
      _category = $v.category;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExpectedTransactionDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExpectedTransactionDto;
  }

  @override
  void update(void Function(ExpectedTransactionDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExpectedTransactionDto build() => _build();

  _$ExpectedTransactionDto _build() {
    final _$result = _$v ??
        new _$ExpectedTransactionDto._(
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'ExpectedTransactionDto', 'date'),
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'ExpectedTransactionDto', 'amount'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'ExpectedTransactionDto', 'description'),
            payee: payee,
            category: category);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
