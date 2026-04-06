// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_transaction_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTransactionRequest extends UpdateTransactionRequest {
  @override
  final String? payee;
  @override
  final String? narration;
  @override
  final BuiltList<String>? tags;
  @override
  final BuiltList<String>? links;
  @override
  final BuiltMap<String, JsonObject?>? meta;

  factory _$UpdateTransactionRequest(
          [void Function(UpdateTransactionRequestBuilder)? updates]) =>
      (new UpdateTransactionRequestBuilder()..update(updates))._build();

  _$UpdateTransactionRequest._(
      {this.payee, this.narration, this.tags, this.links, this.meta})
      : super._();

  @override
  UpdateTransactionRequest rebuild(
          void Function(UpdateTransactionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTransactionRequestBuilder toBuilder() =>
      new UpdateTransactionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTransactionRequest &&
        payee == other.payee &&
        narration == other.narration &&
        tags == other.tags &&
        links == other.links &&
        meta == other.meta;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, payee.hashCode);
    _$hash = $jc(_$hash, narration.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateTransactionRequest')
          ..add('payee', payee)
          ..add('narration', narration)
          ..add('tags', tags)
          ..add('links', links)
          ..add('meta', meta))
        .toString();
  }
}

class UpdateTransactionRequestBuilder
    implements
        Builder<UpdateTransactionRequest, UpdateTransactionRequestBuilder> {
  _$UpdateTransactionRequest? _$v;

  String? _payee;
  String? get payee => _$this._payee;
  set payee(String? payee) => _$this._payee = payee;

  String? _narration;
  String? get narration => _$this._narration;
  set narration(String? narration) => _$this._narration = narration;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  ListBuilder<String>? _links;
  ListBuilder<String> get links => _$this._links ??= new ListBuilder<String>();
  set links(ListBuilder<String>? links) => _$this._links = links;

  MapBuilder<String, JsonObject?>? _meta;
  MapBuilder<String, JsonObject?> get meta =>
      _$this._meta ??= new MapBuilder<String, JsonObject?>();
  set meta(MapBuilder<String, JsonObject?>? meta) => _$this._meta = meta;

  UpdateTransactionRequestBuilder() {
    UpdateTransactionRequest._defaults(this);
  }

  UpdateTransactionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payee = $v.payee;
      _narration = $v.narration;
      _tags = $v.tags?.toBuilder();
      _links = $v.links?.toBuilder();
      _meta = $v.meta?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTransactionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateTransactionRequest;
  }

  @override
  void update(void Function(UpdateTransactionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTransactionRequest build() => _build();

  _$UpdateTransactionRequest _build() {
    _$UpdateTransactionRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateTransactionRequest._(
              payee: payee,
              narration: narration,
              tags: _tags?.build(),
              links: _links?.build(),
              meta: _meta?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'links';
        _links?.build();
        _$failedField = 'meta';
        _meta?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateTransactionRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
