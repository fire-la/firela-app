// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_summary_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class TransactionSummaryDtoBuilder {
  void replace(TransactionSummaryDto other);
  void update(void Function(TransactionSummaryDtoBuilder) updates);
  String? get id;
  set id(String? id);

  String? get date;
  set date(String? date);

  String? get amount;
  set amount(String? amount);

  String? get currency;
  set currency(String? currency);

  String? get payee;
  set payee(String? payee);

  String? get narration;
  set narration(String? narration);

  String? get accountName;
  set accountName(String? accountName);

  String? get sourceType;
  set sourceType(String? sourceType);

  String? get sourcePlatform;
  set sourcePlatform(String? sourcePlatform);
}

class _$$TransactionSummaryDto extends $TransactionSummaryDto {
  @override
  final String? id;
  @override
  final String date;
  @override
  final String amount;
  @override
  final String currency;
  @override
  final String? payee;
  @override
  final String narration;
  @override
  final String? accountName;
  @override
  final String? sourceType;
  @override
  final String? sourcePlatform;

  factory _$$TransactionSummaryDto(
          [void Function($TransactionSummaryDtoBuilder)? updates]) =>
      (new $TransactionSummaryDtoBuilder()..update(updates))._build();

  _$$TransactionSummaryDto._(
      {this.id,
      required this.date,
      required this.amount,
      required this.currency,
      this.payee,
      required this.narration,
      this.accountName,
      this.sourceType,
      this.sourcePlatform})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        date, r'$TransactionSummaryDto', 'date');
    BuiltValueNullFieldError.checkNotNull(
        amount, r'$TransactionSummaryDto', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'$TransactionSummaryDto', 'currency');
    BuiltValueNullFieldError.checkNotNull(
        narration, r'$TransactionSummaryDto', 'narration');
  }

  @override
  $TransactionSummaryDto rebuild(
          void Function($TransactionSummaryDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $TransactionSummaryDtoBuilder toBuilder() =>
      new $TransactionSummaryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $TransactionSummaryDto &&
        id == other.id &&
        date == other.date &&
        amount == other.amount &&
        currency == other.currency &&
        payee == other.payee &&
        narration == other.narration &&
        accountName == other.accountName &&
        sourceType == other.sourceType &&
        sourcePlatform == other.sourcePlatform;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, payee.hashCode);
    _$hash = $jc(_$hash, narration.hashCode);
    _$hash = $jc(_$hash, accountName.hashCode);
    _$hash = $jc(_$hash, sourceType.hashCode);
    _$hash = $jc(_$hash, sourcePlatform.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$TransactionSummaryDto')
          ..add('id', id)
          ..add('date', date)
          ..add('amount', amount)
          ..add('currency', currency)
          ..add('payee', payee)
          ..add('narration', narration)
          ..add('accountName', accountName)
          ..add('sourceType', sourceType)
          ..add('sourcePlatform', sourcePlatform))
        .toString();
  }
}

class $TransactionSummaryDtoBuilder
    implements
        Builder<$TransactionSummaryDto, $TransactionSummaryDtoBuilder>,
        TransactionSummaryDtoBuilder {
  _$$TransactionSummaryDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  String? _date;
  String? get date => _$this._date;
  set date(covariant String? date) => _$this._date = date;

  String? _amount;
  String? get amount => _$this._amount;
  set amount(covariant String? amount) => _$this._amount = amount;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(covariant String? currency) => _$this._currency = currency;

  String? _payee;
  String? get payee => _$this._payee;
  set payee(covariant String? payee) => _$this._payee = payee;

  String? _narration;
  String? get narration => _$this._narration;
  set narration(covariant String? narration) => _$this._narration = narration;

  String? _accountName;
  String? get accountName => _$this._accountName;
  set accountName(covariant String? accountName) =>
      _$this._accountName = accountName;

  String? _sourceType;
  String? get sourceType => _$this._sourceType;
  set sourceType(covariant String? sourceType) =>
      _$this._sourceType = sourceType;

  String? _sourcePlatform;
  String? get sourcePlatform => _$this._sourcePlatform;
  set sourcePlatform(covariant String? sourcePlatform) =>
      _$this._sourcePlatform = sourcePlatform;

  $TransactionSummaryDtoBuilder() {
    $TransactionSummaryDto._defaults(this);
  }

  $TransactionSummaryDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _date = $v.date;
      _amount = $v.amount;
      _currency = $v.currency;
      _payee = $v.payee;
      _narration = $v.narration;
      _accountName = $v.accountName;
      _sourceType = $v.sourceType;
      _sourcePlatform = $v.sourcePlatform;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $TransactionSummaryDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$TransactionSummaryDto;
  }

  @override
  void update(void Function($TransactionSummaryDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $TransactionSummaryDto build() => _build();

  _$$TransactionSummaryDto _build() {
    final _$result = _$v ??
        new _$$TransactionSummaryDto._(
            id: id,
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'$TransactionSummaryDto', 'date'),
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'$TransactionSummaryDto', 'amount'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'$TransactionSummaryDto', 'currency'),
            payee: payee,
            narration: BuiltValueNullFieldError.checkNotNull(
                narration, r'$TransactionSummaryDto', 'narration'),
            accountName: accountName,
            sourceType: sourceType,
            sourcePlatform: sourcePlatform);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
