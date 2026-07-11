// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_posting_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePostingDto extends CreatePostingDto {
  @override
  final String account;
  @override
  final String? units;
  @override
  final String? currency;
  @override
  final JsonObject? meta;
  @override
  final CostSpecDto? cost;
  @override
  final AmountDto? price;

  factory _$CreatePostingDto(
          [void Function(CreatePostingDtoBuilder)? updates]) =>
      (new CreatePostingDtoBuilder()..update(updates))._build();

  _$CreatePostingDto._(
      {required this.account,
      this.units,
      this.currency,
      this.meta,
      this.cost,
      this.price})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        account, r'CreatePostingDto', 'account');
  }

  @override
  CreatePostingDto rebuild(void Function(CreatePostingDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePostingDtoBuilder toBuilder() =>
      new CreatePostingDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePostingDto &&
        account == other.account &&
        units == other.units &&
        currency == other.currency &&
        meta == other.meta &&
        cost == other.cost &&
        price == other.price;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, units.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jc(_$hash, cost.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreatePostingDto')
          ..add('account', account)
          ..add('units', units)
          ..add('currency', currency)
          ..add('meta', meta)
          ..add('cost', cost)
          ..add('price', price))
        .toString();
  }
}

class CreatePostingDtoBuilder
    implements Builder<CreatePostingDto, CreatePostingDtoBuilder> {
  _$CreatePostingDto? _$v;

  String? _account;
  String? get account => _$this._account;
  set account(String? account) => _$this._account = account;

  String? _units;
  String? get units => _$this._units;
  set units(String? units) => _$this._units = units;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  JsonObject? _meta;
  JsonObject? get meta => _$this._meta;
  set meta(JsonObject? meta) => _$this._meta = meta;

  CostSpecDtoBuilder? _cost;
  CostSpecDtoBuilder get cost => _$this._cost ??= new CostSpecDtoBuilder();
  set cost(CostSpecDtoBuilder? cost) => _$this._cost = cost;

  AmountDtoBuilder? _price;
  AmountDtoBuilder get price => _$this._price ??= new AmountDtoBuilder();
  set price(AmountDtoBuilder? price) => _$this._price = price;

  CreatePostingDtoBuilder() {
    CreatePostingDto._defaults(this);
  }

  CreatePostingDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _account = $v.account;
      _units = $v.units;
      _currency = $v.currency;
      _meta = $v.meta;
      _cost = $v.cost?.toBuilder();
      _price = $v.price?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePostingDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreatePostingDto;
  }

  @override
  void update(void Function(CreatePostingDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePostingDto build() => _build();

  _$CreatePostingDto _build() {
    _$CreatePostingDto _$result;
    try {
      _$result = _$v ??
          new _$CreatePostingDto._(
              account: BuiltValueNullFieldError.checkNotNull(
                  account, r'CreatePostingDto', 'account'),
              units: units,
              currency: currency,
              meta: meta,
              cost: _cost?.build(),
              price: _price?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cost';
        _cost?.build();
        _$failedField = 'price';
        _price?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreatePostingDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
