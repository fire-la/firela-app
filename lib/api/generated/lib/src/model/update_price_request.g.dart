// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_price_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdatePriceRequest extends UpdatePriceRequest {
  @override
  final num? amount;
  @override
  final BuiltMap<String, JsonObject?>? metadata;

  factory _$UpdatePriceRequest(
          [void Function(UpdatePriceRequestBuilder)? updates]) =>
      (new UpdatePriceRequestBuilder()..update(updates))._build();

  _$UpdatePriceRequest._({this.amount, this.metadata}) : super._();

  @override
  UpdatePriceRequest rebuild(
          void Function(UpdatePriceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdatePriceRequestBuilder toBuilder() =>
      new UpdatePriceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdatePriceRequest &&
        amount == other.amount &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdatePriceRequest')
          ..add('amount', amount)
          ..add('metadata', metadata))
        .toString();
  }
}

class UpdatePriceRequestBuilder
    implements Builder<UpdatePriceRequest, UpdatePriceRequestBuilder> {
  _$UpdatePriceRequest? _$v;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(num? amount) => _$this._amount = amount;

  MapBuilder<String, JsonObject?>? _metadata;
  MapBuilder<String, JsonObject?> get metadata =>
      _$this._metadata ??= new MapBuilder<String, JsonObject?>();
  set metadata(MapBuilder<String, JsonObject?>? metadata) =>
      _$this._metadata = metadata;

  UpdatePriceRequestBuilder() {
    UpdatePriceRequest._defaults(this);
  }

  UpdatePriceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _metadata = $v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdatePriceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdatePriceRequest;
  }

  @override
  void update(void Function(UpdatePriceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdatePriceRequest build() => _build();

  _$UpdatePriceRequest _build() {
    _$UpdatePriceRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdatePriceRequest._(
              amount: amount, metadata: _metadata?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdatePriceRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
