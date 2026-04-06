// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_commodity_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateCommodityRequest extends UpdateCommodityRequest {
  @override
  final BuiltMap<String, JsonObject?>? metadata;
  @override
  final String? symbolProfileId;

  factory _$UpdateCommodityRequest(
          [void Function(UpdateCommodityRequestBuilder)? updates]) =>
      (new UpdateCommodityRequestBuilder()..update(updates))._build();

  _$UpdateCommodityRequest._({this.metadata, this.symbolProfileId}) : super._();

  @override
  UpdateCommodityRequest rebuild(
          void Function(UpdateCommodityRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateCommodityRequestBuilder toBuilder() =>
      new UpdateCommodityRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateCommodityRequest &&
        metadata == other.metadata &&
        symbolProfileId == other.symbolProfileId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, symbolProfileId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateCommodityRequest')
          ..add('metadata', metadata)
          ..add('symbolProfileId', symbolProfileId))
        .toString();
  }
}

class UpdateCommodityRequestBuilder
    implements Builder<UpdateCommodityRequest, UpdateCommodityRequestBuilder> {
  _$UpdateCommodityRequest? _$v;

  MapBuilder<String, JsonObject?>? _metadata;
  MapBuilder<String, JsonObject?> get metadata =>
      _$this._metadata ??= new MapBuilder<String, JsonObject?>();
  set metadata(MapBuilder<String, JsonObject?>? metadata) =>
      _$this._metadata = metadata;

  String? _symbolProfileId;
  String? get symbolProfileId => _$this._symbolProfileId;
  set symbolProfileId(String? symbolProfileId) =>
      _$this._symbolProfileId = symbolProfileId;

  UpdateCommodityRequestBuilder() {
    UpdateCommodityRequest._defaults(this);
  }

  UpdateCommodityRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _metadata = $v.metadata?.toBuilder();
      _symbolProfileId = $v.symbolProfileId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateCommodityRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateCommodityRequest;
  }

  @override
  void update(void Function(UpdateCommodityRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateCommodityRequest build() => _build();

  _$UpdateCommodityRequest _build() {
    _$UpdateCommodityRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateCommodityRequest._(
              metadata: _metadata?.build(), symbolProfileId: symbolProfileId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateCommodityRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
