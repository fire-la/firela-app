// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nlp_target_transaction_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NlpTargetTransactionDto extends NlpTargetTransactionDto {
  @override
  final String id;
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

  factory _$NlpTargetTransactionDto(
          [void Function(NlpTargetTransactionDtoBuilder)? updates]) =>
      (new NlpTargetTransactionDtoBuilder()..update(updates))._build();

  _$NlpTargetTransactionDto._(
      {required this.id,
      required this.date,
      required this.amount,
      required this.currency,
      required this.narration,
      this.payee})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'NlpTargetTransactionDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        date, r'NlpTargetTransactionDto', 'date');
    BuiltValueNullFieldError.checkNotNull(
        amount, r'NlpTargetTransactionDto', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'NlpTargetTransactionDto', 'currency');
    BuiltValueNullFieldError.checkNotNull(
        narration, r'NlpTargetTransactionDto', 'narration');
  }

  @override
  NlpTargetTransactionDto rebuild(
          void Function(NlpTargetTransactionDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NlpTargetTransactionDtoBuilder toBuilder() =>
      new NlpTargetTransactionDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NlpTargetTransactionDto &&
        id == other.id &&
        date == other.date &&
        amount == other.amount &&
        currency == other.currency &&
        narration == other.narration &&
        payee == other.payee;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
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
    return (newBuiltValueToStringHelper(r'NlpTargetTransactionDto')
          ..add('id', id)
          ..add('date', date)
          ..add('amount', amount)
          ..add('currency', currency)
          ..add('narration', narration)
          ..add('payee', payee))
        .toString();
  }
}

class NlpTargetTransactionDtoBuilder
    implements
        Builder<NlpTargetTransactionDto, NlpTargetTransactionDtoBuilder> {
  _$NlpTargetTransactionDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  NlpTargetTransactionDtoBuilder() {
    NlpTargetTransactionDto._defaults(this);
  }

  NlpTargetTransactionDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
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
  void replace(NlpTargetTransactionDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NlpTargetTransactionDto;
  }

  @override
  void update(void Function(NlpTargetTransactionDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NlpTargetTransactionDto build() => _build();

  _$NlpTargetTransactionDto _build() {
    final _$result = _$v ??
        new _$NlpTargetTransactionDto._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'NlpTargetTransactionDto', 'id'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'NlpTargetTransactionDto', 'date'),
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'NlpTargetTransactionDto', 'amount'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'NlpTargetTransactionDto', 'currency'),
            narration: BuiltValueNullFieldError.checkNotNull(
                narration, r'NlpTargetTransactionDto', 'narration'),
            payee: payee);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
