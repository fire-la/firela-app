// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nlp_source_transaction_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NlpSourceTransactionDto extends NlpSourceTransactionDto {
  @override
  final String date;
  @override
  final String amount;
  @override
  final String currency;
  @override
  final String narration;
  @override
  final String? payee;

  factory _$NlpSourceTransactionDto(
          [void Function(NlpSourceTransactionDtoBuilder)? updates]) =>
      (new NlpSourceTransactionDtoBuilder()..update(updates))._build();

  _$NlpSourceTransactionDto._(
      {required this.date,
      required this.amount,
      required this.currency,
      required this.narration,
      this.payee})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        date, r'NlpSourceTransactionDto', 'date');
    BuiltValueNullFieldError.checkNotNull(
        amount, r'NlpSourceTransactionDto', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'NlpSourceTransactionDto', 'currency');
    BuiltValueNullFieldError.checkNotNull(
        narration, r'NlpSourceTransactionDto', 'narration');
  }

  @override
  NlpSourceTransactionDto rebuild(
          void Function(NlpSourceTransactionDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NlpSourceTransactionDtoBuilder toBuilder() =>
      new NlpSourceTransactionDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NlpSourceTransactionDto &&
        date == other.date &&
        amount == other.amount &&
        currency == other.currency &&
        narration == other.narration &&
        payee == other.payee;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, narration.hashCode);
    _$hash = $jc(_$hash, payee.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NlpSourceTransactionDto')
          ..add('date', date)
          ..add('amount', amount)
          ..add('currency', currency)
          ..add('narration', narration)
          ..add('payee', payee))
        .toString();
  }
}

class NlpSourceTransactionDtoBuilder
    implements
        Builder<NlpSourceTransactionDto, NlpSourceTransactionDtoBuilder> {
  _$NlpSourceTransactionDto? _$v;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _amount;
  String? get amount => _$this._amount;
  set amount(String? amount) => _$this._amount = amount;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _narration;
  String? get narration => _$this._narration;
  set narration(String? narration) => _$this._narration = narration;

  String? _payee;
  String? get payee => _$this._payee;
  set payee(String? payee) => _$this._payee = payee;

  NlpSourceTransactionDtoBuilder() {
    NlpSourceTransactionDto._defaults(this);
  }

  NlpSourceTransactionDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _amount = $v.amount;
      _currency = $v.currency;
      _narration = $v.narration;
      _payee = $v.payee;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NlpSourceTransactionDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NlpSourceTransactionDto;
  }

  @override
  void update(void Function(NlpSourceTransactionDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NlpSourceTransactionDto build() => _build();

  _$NlpSourceTransactionDto _build() {
    final _$result = _$v ??
        new _$NlpSourceTransactionDto._(
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'NlpSourceTransactionDto', 'date'),
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'NlpSourceTransactionDto', 'amount'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'NlpSourceTransactionDto', 'currency'),
            narration: BuiltValueNullFieldError.checkNotNull(
                narration, r'NlpSourceTransactionDto', 'narration'),
            payee: payee);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
