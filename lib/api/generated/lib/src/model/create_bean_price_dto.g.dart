// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_bean_price_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateBeanPriceDto extends CreateBeanPriceDto {
  @override
  final String currency;
  @override
  final String quoteCurrency;
  @override
  final num amount;
  @override
  final String date;
  @override
  final JsonObject? metadata;

  factory _$CreateBeanPriceDto(
          [void Function(CreateBeanPriceDtoBuilder)? updates]) =>
      (new CreateBeanPriceDtoBuilder()..update(updates))._build();

  _$CreateBeanPriceDto._(
      {required this.currency,
      required this.quoteCurrency,
      required this.amount,
      required this.date,
      this.metadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        currency, r'CreateBeanPriceDto', 'currency');
    BuiltValueNullFieldError.checkNotNull(
        quoteCurrency, r'CreateBeanPriceDto', 'quoteCurrency');
    BuiltValueNullFieldError.checkNotNull(
        amount, r'CreateBeanPriceDto', 'amount');
    BuiltValueNullFieldError.checkNotNull(date, r'CreateBeanPriceDto', 'date');
  }

  @override
  CreateBeanPriceDto rebuild(
          void Function(CreateBeanPriceDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateBeanPriceDtoBuilder toBuilder() =>
      new CreateBeanPriceDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateBeanPriceDto &&
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
    return (newBuiltValueToStringHelper(r'CreateBeanPriceDto')
          ..add('currency', currency)
          ..add('quoteCurrency', quoteCurrency)
          ..add('amount', amount)
          ..add('date', date)
          ..add('metadata', metadata))
        .toString();
  }
}

class CreateBeanPriceDtoBuilder
    implements Builder<CreateBeanPriceDto, CreateBeanPriceDtoBuilder> {
  _$CreateBeanPriceDto? _$v;

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

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  JsonObject? _metadata;
  JsonObject? get metadata => _$this._metadata;
  set metadata(JsonObject? metadata) => _$this._metadata = metadata;

  CreateBeanPriceDtoBuilder() {
    CreateBeanPriceDto._defaults(this);
  }

  CreateBeanPriceDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currency = $v.currency;
      _quoteCurrency = $v.quoteCurrency;
      _amount = $v.amount;
      _date = $v.date;
      _metadata = $v.metadata;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateBeanPriceDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateBeanPriceDto;
  }

  @override
  void update(void Function(CreateBeanPriceDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateBeanPriceDto build() => _build();

  _$CreateBeanPriceDto _build() {
    final _$result = _$v ??
        new _$CreateBeanPriceDto._(
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'CreateBeanPriceDto', 'currency'),
            quoteCurrency: BuiltValueNullFieldError.checkNotNull(
                quoteCurrency, r'CreateBeanPriceDto', 'quoteCurrency'),
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'CreateBeanPriceDto', 'amount'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'CreateBeanPriceDto', 'date'),
            metadata: metadata);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
