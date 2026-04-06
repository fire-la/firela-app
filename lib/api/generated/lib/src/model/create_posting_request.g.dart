// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_posting_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePostingRequest extends CreatePostingRequest {
  @override
  final String account;
  @override
  final String? units;
  @override
  final String? currency;
  @override
  final BuiltMap<String, JsonObject?>? meta;

  factory _$CreatePostingRequest(
          [void Function(CreatePostingRequestBuilder)? updates]) =>
      (new CreatePostingRequestBuilder()..update(updates))._build();

  _$CreatePostingRequest._(
      {required this.account, this.units, this.currency, this.meta})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        account, r'CreatePostingRequest', 'account');
  }

  @override
  CreatePostingRequest rebuild(
          void Function(CreatePostingRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePostingRequestBuilder toBuilder() =>
      new CreatePostingRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePostingRequest &&
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
    return (newBuiltValueToStringHelper(r'CreatePostingRequest')
          ..add('account', account)
          ..add('units', units)
          ..add('currency', currency)
          ..add('meta', meta))
        .toString();
  }
}

class CreatePostingRequestBuilder
    implements Builder<CreatePostingRequest, CreatePostingRequestBuilder> {
  _$CreatePostingRequest? _$v;

  String? _account;
  String? get account => _$this._account;
  set account(String? account) => _$this._account = account;

  String? _units;
  String? get units => _$this._units;
  set units(String? units) => _$this._units = units;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  MapBuilder<String, JsonObject?>? _meta;
  MapBuilder<String, JsonObject?> get meta =>
      _$this._meta ??= new MapBuilder<String, JsonObject?>();
  set meta(MapBuilder<String, JsonObject?>? meta) => _$this._meta = meta;

  CreatePostingRequestBuilder() {
    CreatePostingRequest._defaults(this);
  }

  CreatePostingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _account = $v.account;
      _units = $v.units;
      _currency = $v.currency;
      _meta = $v.meta?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePostingRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreatePostingRequest;
  }

  @override
  void update(void Function(CreatePostingRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePostingRequest build() => _build();

  _$CreatePostingRequest _build() {
    _$CreatePostingRequest _$result;
    try {
      _$result = _$v ??
          new _$CreatePostingRequest._(
              account: BuiltValueNullFieldError.checkNotNull(
                  account, r'CreatePostingRequest', 'account'),
              units: units,
              currency: currency,
              meta: _meta?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'meta';
        _meta?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreatePostingRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
