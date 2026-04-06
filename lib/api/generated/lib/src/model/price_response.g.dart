// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PriceResponse extends PriceResponse {
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
  final BuiltMap<String, JsonObject?>? meta;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$PriceResponse([void Function(PriceResponseBuilder)? updates]) =>
      (new PriceResponseBuilder()..update(updates))._build();

  _$PriceResponse._(
      {required this.id,
      required this.userId,
      required this.currency,
      required this.quoteCurrency,
      required this.amount,
      required this.date,
      this.meta,
      this.createdAt,
      this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'PriceResponse', 'id');
    BuiltValueNullFieldError.checkNotNull(userId, r'PriceResponse', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'PriceResponse', 'currency');
    BuiltValueNullFieldError.checkNotNull(
        quoteCurrency, r'PriceResponse', 'quoteCurrency');
    BuiltValueNullFieldError.checkNotNull(amount, r'PriceResponse', 'amount');
    BuiltValueNullFieldError.checkNotNull(date, r'PriceResponse', 'date');
  }

  @override
  PriceResponse rebuild(void Function(PriceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PriceResponseBuilder toBuilder() => new PriceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PriceResponse &&
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
    return (newBuiltValueToStringHelper(r'PriceResponse')
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

class PriceResponseBuilder
    implements Builder<PriceResponse, PriceResponseBuilder> {
  _$PriceResponse? _$v;

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

  MapBuilder<String, JsonObject?>? _meta;
  MapBuilder<String, JsonObject?> get meta =>
      _$this._meta ??= new MapBuilder<String, JsonObject?>();
  set meta(MapBuilder<String, JsonObject?>? meta) => _$this._meta = meta;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  PriceResponseBuilder() {
    PriceResponse._defaults(this);
  }

  PriceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _currency = $v.currency;
      _quoteCurrency = $v.quoteCurrency;
      _amount = $v.amount;
      _date = $v.date;
      _meta = $v.meta?.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PriceResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PriceResponse;
  }

  @override
  void update(void Function(PriceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PriceResponse build() => _build();

  _$PriceResponse _build() {
    _$PriceResponse _$result;
    try {
      _$result = _$v ??
          new _$PriceResponse._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'PriceResponse', 'id'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'PriceResponse', 'userId'),
              currency: BuiltValueNullFieldError.checkNotNull(
                  currency, r'PriceResponse', 'currency'),
              quoteCurrency: BuiltValueNullFieldError.checkNotNull(
                  quoteCurrency, r'PriceResponse', 'quoteCurrency'),
              amount: BuiltValueNullFieldError.checkNotNull(
                  amount, r'PriceResponse', 'amount'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'PriceResponse', 'date'),
              meta: _meta?.build(),
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'meta';
        _meta?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PriceResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
