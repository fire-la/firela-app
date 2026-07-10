// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_bean_price_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateBeanPriceDto extends UpdateBeanPriceDto {
  @override
  final String? currency;
  @override
  final String? quoteCurrency;
  @override
  final num? amount;
  @override
  final String? date;
  @override
  final JsonObject? metadata;

  factory _$UpdateBeanPriceDto(
          [void Function(UpdateBeanPriceDtoBuilder)? updates]) =>
      (new UpdateBeanPriceDtoBuilder()..update(updates))._build();

  _$UpdateBeanPriceDto._(
      {this.currency,
      this.quoteCurrency,
      this.amount,
      this.date,
      this.metadata})
      : super._();

  @override
  UpdateBeanPriceDto rebuild(
          void Function(UpdateBeanPriceDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateBeanPriceDtoBuilder toBuilder() =>
      new UpdateBeanPriceDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateBeanPriceDto &&
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
    return (newBuiltValueToStringHelper(r'UpdateBeanPriceDto')
          ..add('currency', currency)
          ..add('quoteCurrency', quoteCurrency)
          ..add('amount', amount)
          ..add('date', date)
          ..add('metadata', metadata))
        .toString();
  }
}

class UpdateBeanPriceDtoBuilder
    implements Builder<UpdateBeanPriceDto, UpdateBeanPriceDtoBuilder> {
  _$UpdateBeanPriceDto? _$v;

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

  UpdateBeanPriceDtoBuilder() {
    UpdateBeanPriceDto._defaults(this);
  }

  UpdateBeanPriceDtoBuilder get _$this {
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
  void replace(UpdateBeanPriceDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateBeanPriceDto;
  }

  @override
  void update(void Function(UpdateBeanPriceDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateBeanPriceDto build() => _build();

  _$UpdateBeanPriceDto _build() {
    final _$result = _$v ??
        new _$UpdateBeanPriceDto._(
            currency: currency,
            quoteCurrency: quoteCurrency,
            amount: amount,
            date: date,
            metadata: metadata);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
