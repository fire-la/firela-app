// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_create_prices_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BulkCreatePricesRequest extends BulkCreatePricesRequest {
  @override
  final BuiltList<CreatePriceRequest> prices;

  factory _$BulkCreatePricesRequest(
          [void Function(BulkCreatePricesRequestBuilder)? updates]) =>
      (new BulkCreatePricesRequestBuilder()..update(updates))._build();

  _$BulkCreatePricesRequest._({required this.prices}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        prices, r'BulkCreatePricesRequest', 'prices');
  }

  @override
  BulkCreatePricesRequest rebuild(
          void Function(BulkCreatePricesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BulkCreatePricesRequestBuilder toBuilder() =>
      new BulkCreatePricesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BulkCreatePricesRequest && prices == other.prices;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, prices.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BulkCreatePricesRequest')
          ..add('prices', prices))
        .toString();
  }
}

class BulkCreatePricesRequestBuilder
    implements
        Builder<BulkCreatePricesRequest, BulkCreatePricesRequestBuilder> {
  _$BulkCreatePricesRequest? _$v;

  ListBuilder<CreatePriceRequest>? _prices;
  ListBuilder<CreatePriceRequest> get prices =>
      _$this._prices ??= new ListBuilder<CreatePriceRequest>();
  set prices(ListBuilder<CreatePriceRequest>? prices) =>
      _$this._prices = prices;

  BulkCreatePricesRequestBuilder() {
    BulkCreatePricesRequest._defaults(this);
  }

  BulkCreatePricesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prices = $v.prices.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BulkCreatePricesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BulkCreatePricesRequest;
  }

  @override
  void update(void Function(BulkCreatePricesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BulkCreatePricesRequest build() => _build();

  _$BulkCreatePricesRequest _build() {
    _$BulkCreatePricesRequest _$result;
    try {
      _$result = _$v ?? new _$BulkCreatePricesRequest._(prices: prices.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'prices';
        prices.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BulkCreatePricesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
