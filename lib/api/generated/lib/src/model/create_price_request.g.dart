// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_price_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePriceRequest extends CreatePriceRequest {
  @override
  final String currency;
  @override
  final String quoteCurrency;
  @override
  final num amount;
  @override
  final Date date;
  @override
  final BuiltMap<String, JsonObject?>? metadata;

  factory _$CreatePriceRequest(
          [void Function(CreatePriceRequestBuilder)? updates]) =>
      (new CreatePriceRequestBuilder()..update(updates))._build();

  _$CreatePriceRequest._(
      {required this.currency,
      required this.quoteCurrency,
      required this.amount,
      required this.date,
      this.metadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        currency, r'CreatePriceRequest', 'currency');
    BuiltValueNullFieldError.checkNotNull(
        quoteCurrency, r'CreatePriceRequest', 'quoteCurrency');
    BuiltValueNullFieldError.checkNotNull(
        amount, r'CreatePriceRequest', 'amount');
    BuiltValueNullFieldError.checkNotNull(date, r'CreatePriceRequest', 'date');
  }

  @override
  CreatePriceRequest rebuild(
          void Function(CreatePriceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePriceRequestBuilder toBuilder() =>
      new CreatePriceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePriceRequest &&
        currency == other.currency &&
        quoteCurrency == other.quoteCurrency &&
        amount == other.amount &&
        date == other.date &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, quoteCurrency.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreatePriceRequest')
          ..add('currency', currency)
          ..add('quoteCurrency', quoteCurrency)
          ..add('amount', amount)
          ..add('date', date)
          ..add('metadata', metadata))
        .toString();
  }
}

class CreatePriceRequestBuilder
    implements Builder<CreatePriceRequest, CreatePriceRequestBuilder> {
  _$CreatePriceRequest? _$v;

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

  MapBuilder<String, JsonObject?>? _metadata;
  MapBuilder<String, JsonObject?> get metadata =>
      _$this._metadata ??= new MapBuilder<String, JsonObject?>();
  set metadata(MapBuilder<String, JsonObject?>? metadata) =>
      _$this._metadata = metadata;

  CreatePriceRequestBuilder() {
    CreatePriceRequest._defaults(this);
  }

  CreatePriceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currency = $v.currency;
      _quoteCurrency = $v.quoteCurrency;
      _amount = $v.amount;
      _date = $v.date;
      _metadata = $v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePriceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreatePriceRequest;
  }

  @override
  void update(void Function(CreatePriceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePriceRequest build() => _build();

  _$CreatePriceRequest _build() {
    _$CreatePriceRequest _$result;
    try {
      _$result = _$v ??
          new _$CreatePriceRequest._(
              currency: BuiltValueNullFieldError.checkNotNull(
                  currency, r'CreatePriceRequest', 'currency'),
              quoteCurrency: BuiltValueNullFieldError.checkNotNull(
                  quoteCurrency, r'CreatePriceRequest', 'quoteCurrency'),
              amount: BuiltValueNullFieldError.checkNotNull(
                  amount, r'CreatePriceRequest', 'amount'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'CreatePriceRequest', 'date'),
              metadata: _metadata?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreatePriceRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
