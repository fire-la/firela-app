// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PriceResponseDto extends PriceResponseDto {
  @override
  final String id;
  @override
  final String userId;
  @override
  final String currency;
  @override
  final String quoteCurrency;
  @override
  final num amount;
  @override
  final Date date;
  @override
  final JsonObject meta;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$PriceResponseDto(
          [void Function(PriceResponseDtoBuilder)? updates]) =>
      (new PriceResponseDtoBuilder()..update(updates))._build();

  _$PriceResponseDto._(
      {required this.id,
      required this.userId,
      required this.currency,
      required this.quoteCurrency,
      required this.amount,
      required this.date,
      required this.meta,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'PriceResponseDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'PriceResponseDto', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'PriceResponseDto', 'currency');
    BuiltValueNullFieldError.checkNotNull(
        quoteCurrency, r'PriceResponseDto', 'quoteCurrency');
    BuiltValueNullFieldError.checkNotNull(
        amount, r'PriceResponseDto', 'amount');
    BuiltValueNullFieldError.checkNotNull(date, r'PriceResponseDto', 'date');
    BuiltValueNullFieldError.checkNotNull(meta, r'PriceResponseDto', 'meta');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'PriceResponseDto', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'PriceResponseDto', 'updatedAt');
  }

  @override
  PriceResponseDto rebuild(void Function(PriceResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PriceResponseDtoBuilder toBuilder() =>
      new PriceResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PriceResponseDto &&
        id == other.id &&
        userId == other.userId &&
        currency == other.currency &&
        quoteCurrency == other.quoteCurrency &&
        amount == other.amount &&
        date == other.date &&
        meta == other.meta &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, quoteCurrency.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PriceResponseDto')
          ..add('id', id)
          ..add('userId', userId)
          ..add('currency', currency)
          ..add('quoteCurrency', quoteCurrency)
          ..add('amount', amount)
          ..add('date', date)
          ..add('meta', meta)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PriceResponseDtoBuilder
    implements Builder<PriceResponseDto, PriceResponseDtoBuilder> {
  _$PriceResponseDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _quoteCurrency;
  String? get quoteCurrency => _$this._quoteCurrency;
  set quoteCurrency(String? quoteCurrency) =>
      _$this._quoteCurrency = quoteCurrency;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(num? amount) => _$this._amount = amount;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  JsonObject? _meta;
  JsonObject? get meta => _$this._meta;
  set meta(JsonObject? meta) => _$this._meta = meta;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  PriceResponseDtoBuilder() {
    PriceResponseDto._defaults(this);
  }

  PriceResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _currency = $v.currency;
      _quoteCurrency = $v.quoteCurrency;
      _amount = $v.amount;
      _date = $v.date;
      _meta = $v.meta;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PriceResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PriceResponseDto;
  }

  @override
  void update(void Function(PriceResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PriceResponseDto build() => _build();

  _$PriceResponseDto _build() {
    final _$result = _$v ??
        new _$PriceResponseDto._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'PriceResponseDto', 'id'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'PriceResponseDto', 'userId'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'PriceResponseDto', 'currency'),
            quoteCurrency: BuiltValueNullFieldError.checkNotNull(
                quoteCurrency, r'PriceResponseDto', 'quoteCurrency'),
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'PriceResponseDto', 'amount'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'PriceResponseDto', 'date'),
            meta: BuiltValueNullFieldError.checkNotNull(
                meta, r'PriceResponseDto', 'meta'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'PriceResponseDto', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'PriceResponseDto', 'updatedAt'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
