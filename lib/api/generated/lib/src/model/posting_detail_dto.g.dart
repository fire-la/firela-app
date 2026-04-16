// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posting_detail_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostingDetailDto extends PostingDetailDto {
  @override
  final String id;
  @override
  final String accountId;
  @override
  final String accountName;
  @override
  final String? units;
  @override
  final String? currency;
  @override
  final String? costAmount;
  @override
  final String? costCurrency;
  @override
  final String? costDate;
  @override
  final String? priceAmount;
  @override
  final String? priceCurrency;
  @override
  final String? flag;
  @override
  final JsonObject? meta;

  factory _$PostingDetailDto(
          [void Function(PostingDetailDtoBuilder)? updates]) =>
      (new PostingDetailDtoBuilder()..update(updates))._build();

  _$PostingDetailDto._(
      {required this.id,
      required this.accountId,
      required this.accountName,
      this.units,
      this.currency,
      this.costAmount,
      this.costCurrency,
      this.costDate,
      this.priceAmount,
      this.priceCurrency,
      this.flag,
      this.meta})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'PostingDetailDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        accountId, r'PostingDetailDto', 'accountId');
    BuiltValueNullFieldError.checkNotNull(
        accountName, r'PostingDetailDto', 'accountName');
  }

  @override
  PostingDetailDto rebuild(void Function(PostingDetailDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostingDetailDtoBuilder toBuilder() =>
      new PostingDetailDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostingDetailDto &&
        id == other.id &&
        accountId == other.accountId &&
        accountName == other.accountName &&
        units == other.units &&
        currency == other.currency &&
        costAmount == other.costAmount &&
        costCurrency == other.costCurrency &&
        costDate == other.costDate &&
        priceAmount == other.priceAmount &&
        priceCurrency == other.priceCurrency &&
        flag == other.flag &&
        meta == other.meta;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, accountName.hashCode);
    _$hash = $jc(_$hash, units.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, costAmount.hashCode);
    _$hash = $jc(_$hash, costCurrency.hashCode);
    _$hash = $jc(_$hash, costDate.hashCode);
    _$hash = $jc(_$hash, priceAmount.hashCode);
    _$hash = $jc(_$hash, priceCurrency.hashCode);
    _$hash = $jc(_$hash, flag.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostingDetailDto')
          ..add('id', id)
          ..add('accountId', accountId)
          ..add('accountName', accountName)
          ..add('units', units)
          ..add('currency', currency)
          ..add('costAmount', costAmount)
          ..add('costCurrency', costCurrency)
          ..add('costDate', costDate)
          ..add('priceAmount', priceAmount)
          ..add('priceCurrency', priceCurrency)
          ..add('flag', flag)
          ..add('meta', meta))
        .toString();
  }
}

class PostingDetailDtoBuilder
    implements Builder<PostingDetailDto, PostingDetailDtoBuilder> {
  _$PostingDetailDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _accountName;
  String? get accountName => _$this._accountName;
  set accountName(String? accountName) => _$this._accountName = accountName;

  String? _units;
  String? get units => _$this._units;
  set units(String? units) => _$this._units = units;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _costAmount;
  String? get costAmount => _$this._costAmount;
  set costAmount(String? costAmount) => _$this._costAmount = costAmount;

  String? _costCurrency;
  String? get costCurrency => _$this._costCurrency;
  set costCurrency(String? costCurrency) => _$this._costCurrency = costCurrency;

  String? _costDate;
  String? get costDate => _$this._costDate;
  set costDate(String? costDate) => _$this._costDate = costDate;

  String? _priceAmount;
  String? get priceAmount => _$this._priceAmount;
  set priceAmount(String? priceAmount) => _$this._priceAmount = priceAmount;

  String? _priceCurrency;
  String? get priceCurrency => _$this._priceCurrency;
  set priceCurrency(String? priceCurrency) =>
      _$this._priceCurrency = priceCurrency;

  String? _flag;
  String? get flag => _$this._flag;
  set flag(String? flag) => _$this._flag = flag;

  JsonObject? _meta;
  JsonObject? get meta => _$this._meta;
  set meta(JsonObject? meta) => _$this._meta = meta;

  PostingDetailDtoBuilder() {
    PostingDetailDto._defaults(this);
  }

  PostingDetailDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _accountId = $v.accountId;
      _accountName = $v.accountName;
      _units = $v.units;
      _currency = $v.currency;
      _costAmount = $v.costAmount;
      _costCurrency = $v.costCurrency;
      _costDate = $v.costDate;
      _priceAmount = $v.priceAmount;
      _priceCurrency = $v.priceCurrency;
      _flag = $v.flag;
      _meta = $v.meta;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostingDetailDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostingDetailDto;
  }

  @override
  void update(void Function(PostingDetailDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostingDetailDto build() => _build();

  _$PostingDetailDto _build() {
    final _$result = _$v ??
        new _$PostingDetailDto._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'PostingDetailDto', 'id'),
            accountId: BuiltValueNullFieldError.checkNotNull(
                accountId, r'PostingDetailDto', 'accountId'),
            accountName: BuiltValueNullFieldError.checkNotNull(
                accountName, r'PostingDetailDto', 'accountName'),
            units: units,
            currency: currency,
            costAmount: costAmount,
            costCurrency: costCurrency,
            costDate: costDate,
            priceAmount: priceAmount,
            priceCurrency: priceCurrency,
            flag: flag,
            meta: meta);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
