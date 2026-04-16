// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nlp_transaction_info_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NlpTransactionInfoDto extends NlpTransactionInfoDto {
  @override
  final String id;
  @override
  final String date;
  @override
  final num amount;
  @override
  final String currency;
  @override
  final String? payee;
  @override
  final String? narration;
  @override
  final String? warning;

  factory _$NlpTransactionInfoDto(
          [void Function(NlpTransactionInfoDtoBuilder)? updates]) =>
      (new NlpTransactionInfoDtoBuilder()..update(updates))._build();

  _$NlpTransactionInfoDto._(
      {required this.id,
      required this.date,
      required this.amount,
      required this.currency,
      this.payee,
      this.narration,
      this.warning})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'NlpTransactionInfoDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        date, r'NlpTransactionInfoDto', 'date');
    BuiltValueNullFieldError.checkNotNull(
        amount, r'NlpTransactionInfoDto', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'NlpTransactionInfoDto', 'currency');
  }

  @override
  NlpTransactionInfoDto rebuild(
          void Function(NlpTransactionInfoDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NlpTransactionInfoDtoBuilder toBuilder() =>
      new NlpTransactionInfoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NlpTransactionInfoDto &&
        id == other.id &&
        date == other.date &&
        amount == other.amount &&
        currency == other.currency &&
        payee == other.payee &&
        narration == other.narration &&
        warning == other.warning;
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
    _$hash = $jc(_$hash, warning.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NlpTransactionInfoDto')
          ..add('id', id)
          ..add('date', date)
          ..add('amount', amount)
          ..add('currency', currency)
          ..add('payee', payee)
          ..add('narration', narration)
          ..add('warning', warning))
        .toString();
  }
}

class NlpTransactionInfoDtoBuilder
    implements Builder<NlpTransactionInfoDto, NlpTransactionInfoDtoBuilder> {
  _$NlpTransactionInfoDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(num? amount) => _$this._amount = amount;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _payee;
  String? get payee => _$this._payee;
  set payee(String? payee) => _$this._payee = payee;

  String? _narration;
  String? get narration => _$this._narration;
  set narration(String? narration) => _$this._narration = narration;

  String? _warning;
  String? get warning => _$this._warning;
  set warning(String? warning) => _$this._warning = warning;

  NlpTransactionInfoDtoBuilder() {
    NlpTransactionInfoDto._defaults(this);
  }

  NlpTransactionInfoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _date = $v.date;
      _amount = $v.amount;
      _currency = $v.currency;
      _payee = $v.payee;
      _narration = $v.narration;
      _warning = $v.warning;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NlpTransactionInfoDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NlpTransactionInfoDto;
  }

  @override
  void update(void Function(NlpTransactionInfoDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NlpTransactionInfoDto build() => _build();

  _$NlpTransactionInfoDto _build() {
    final _$result = _$v ??
        new _$NlpTransactionInfoDto._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'NlpTransactionInfoDto', 'id'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'NlpTransactionInfoDto', 'date'),
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'NlpTransactionInfoDto', 'amount'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'NlpTransactionInfoDto', 'currency'),
            payee: payee,
            narration: narration,
            warning: warning);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
