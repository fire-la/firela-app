// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reconciliation_record_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReconciliationRecordDto extends ReconciliationRecordDto {
  @override
  final String id;
  @override
  final String accountId;
  @override
  final String date;
  @override
  final String amount;
  @override
  final String currency;
  @override
  final String? tolerance;
  @override
  final String? diffAmount;
  @override
  final String? diffCurrency;
  @override
  final String createdAt;

  factory _$ReconciliationRecordDto(
          [void Function(ReconciliationRecordDtoBuilder)? updates]) =>
      (new ReconciliationRecordDtoBuilder()..update(updates))._build();

  _$ReconciliationRecordDto._(
      {required this.id,
      required this.accountId,
      required this.date,
      required this.amount,
      required this.currency,
      this.tolerance,
      this.diffAmount,
      this.diffCurrency,
      required this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'ReconciliationRecordDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        accountId, r'ReconciliationRecordDto', 'accountId');
    BuiltValueNullFieldError.checkNotNull(
        date, r'ReconciliationRecordDto', 'date');
    BuiltValueNullFieldError.checkNotNull(
        amount, r'ReconciliationRecordDto', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'ReconciliationRecordDto', 'currency');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'ReconciliationRecordDto', 'createdAt');
  }

  @override
  ReconciliationRecordDto rebuild(
          void Function(ReconciliationRecordDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReconciliationRecordDtoBuilder toBuilder() =>
      new ReconciliationRecordDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReconciliationRecordDto &&
        id == other.id &&
        accountId == other.accountId &&
        date == other.date &&
        amount == other.amount &&
        currency == other.currency &&
        tolerance == other.tolerance &&
        diffAmount == other.diffAmount &&
        diffCurrency == other.diffCurrency &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, tolerance.hashCode);
    _$hash = $jc(_$hash, diffAmount.hashCode);
    _$hash = $jc(_$hash, diffCurrency.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReconciliationRecordDto')
          ..add('id', id)
          ..add('accountId', accountId)
          ..add('date', date)
          ..add('amount', amount)
          ..add('currency', currency)
          ..add('tolerance', tolerance)
          ..add('diffAmount', diffAmount)
          ..add('diffCurrency', diffCurrency)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class ReconciliationRecordDtoBuilder
    implements
        Builder<ReconciliationRecordDto, ReconciliationRecordDtoBuilder> {
  _$ReconciliationRecordDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _amount;
  String? get amount => _$this._amount;
  set amount(String? amount) => _$this._amount = amount;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _tolerance;
  String? get tolerance => _$this._tolerance;
  set tolerance(String? tolerance) => _$this._tolerance = tolerance;

  String? _diffAmount;
  String? get diffAmount => _$this._diffAmount;
  set diffAmount(String? diffAmount) => _$this._diffAmount = diffAmount;

  String? _diffCurrency;
  String? get diffCurrency => _$this._diffCurrency;
  set diffCurrency(String? diffCurrency) => _$this._diffCurrency = diffCurrency;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  ReconciliationRecordDtoBuilder() {
    ReconciliationRecordDto._defaults(this);
  }

  ReconciliationRecordDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _accountId = $v.accountId;
      _date = $v.date;
      _amount = $v.amount;
      _currency = $v.currency;
      _tolerance = $v.tolerance;
      _diffAmount = $v.diffAmount;
      _diffCurrency = $v.diffCurrency;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReconciliationRecordDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReconciliationRecordDto;
  }

  @override
  void update(void Function(ReconciliationRecordDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReconciliationRecordDto build() => _build();

  _$ReconciliationRecordDto _build() {
    final _$result = _$v ??
        new _$ReconciliationRecordDto._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ReconciliationRecordDto', 'id'),
            accountId: BuiltValueNullFieldError.checkNotNull(
                accountId, r'ReconciliationRecordDto', 'accountId'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'ReconciliationRecordDto', 'date'),
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'ReconciliationRecordDto', 'amount'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'ReconciliationRecordDto', 'currency'),
            tolerance: tolerance,
            diffAmount: diffAmount,
            diffCurrency: diffCurrency,
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'ReconciliationRecordDto', 'createdAt'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
