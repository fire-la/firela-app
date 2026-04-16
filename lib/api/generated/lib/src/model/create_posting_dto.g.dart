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

  factory _$CreatePostingDto(
          [void Function(CreatePostingDtoBuilder)? updates]) =>
      (new CreatePostingDtoBuilder()..update(updates))._build();

  _$CreatePostingDto._(
      {required this.account, this.units, this.currency, this.meta})
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
        meta == other.meta;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, units.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreatePostingDto')
          ..add('account', account)
          ..add('units', units)
          ..add('currency', currency)
          ..add('meta', meta))
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
    final _$result = _$v ??
        new _$CreatePostingDto._(
            account: BuiltValueNullFieldError.checkNotNull(
                account, r'CreatePostingDto', 'account'),
            units: units,
            currency: currency,
            meta: meta);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
