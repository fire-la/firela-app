// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_create_commodities_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BulkCreateCommoditiesRequest extends BulkCreateCommoditiesRequest {
  @override
  final BuiltList<CreateCommodityRequest> commodities;

  factory _$BulkCreateCommoditiesRequest(
          [void Function(BulkCreateCommoditiesRequestBuilder)? updates]) =>
      (new BulkCreateCommoditiesRequestBuilder()..update(updates))._build();

  _$BulkCreateCommoditiesRequest._({required this.commodities}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        commodities, r'BulkCreateCommoditiesRequest', 'commodities');
  }

  @override
  BulkCreateCommoditiesRequest rebuild(
          void Function(BulkCreateCommoditiesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BulkCreateCommoditiesRequestBuilder toBuilder() =>
      new BulkCreateCommoditiesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BulkCreateCommoditiesRequest &&
        commodities == other.commodities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, commodities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BulkCreateCommoditiesRequest')
          ..add('commodities', commodities))
        .toString();
  }
}

class BulkCreateCommoditiesRequestBuilder
    implements
        Builder<BulkCreateCommoditiesRequest,
            BulkCreateCommoditiesRequestBuilder> {
  _$BulkCreateCommoditiesRequest? _$v;

  ListBuilder<CreateCommodityRequest>? _commodities;
  ListBuilder<CreateCommodityRequest> get commodities =>
      _$this._commodities ??= new ListBuilder<CreateCommodityRequest>();
  set commodities(ListBuilder<CreateCommodityRequest>? commodities) =>
      _$this._commodities = commodities;

  BulkCreateCommoditiesRequestBuilder() {
    BulkCreateCommoditiesRequest._defaults(this);
  }

  BulkCreateCommoditiesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _commodities = $v.commodities.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BulkCreateCommoditiesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BulkCreateCommoditiesRequest;
  }

  @override
  void update(void Function(BulkCreateCommoditiesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BulkCreateCommoditiesRequest build() => _build();

  _$BulkCreateCommoditiesRequest _build() {
    _$BulkCreateCommoditiesRequest _$result;
    try {
      _$result = _$v ??
          new _$BulkCreateCommoditiesRequest._(
              commodities: commodities.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'commodities';
        commodities.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BulkCreateCommoditiesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
