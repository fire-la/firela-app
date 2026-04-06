// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commodity_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CommodityListResponse extends CommodityListResponse {
  @override
  final BuiltList<CommodityResponse> items;
  @override
  final int total;

  factory _$CommodityListResponse(
          [void Function(CommodityListResponseBuilder)? updates]) =>
      (new CommodityListResponseBuilder()..update(updates))._build();

  _$CommodityListResponse._({required this.items, required this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        items, r'CommodityListResponse', 'items');
    BuiltValueNullFieldError.checkNotNull(
        total, r'CommodityListResponse', 'total');
  }

  @override
  CommodityListResponse rebuild(
          void Function(CommodityListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommodityListResponseBuilder toBuilder() =>
      new CommodityListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommodityListResponse &&
        items == other.items &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommodityListResponse')
          ..add('items', items)
          ..add('total', total))
        .toString();
  }
}

class CommodityListResponseBuilder
    implements Builder<CommodityListResponse, CommodityListResponseBuilder> {
  _$CommodityListResponse? _$v;

  ListBuilder<CommodityResponse>? _items;
  ListBuilder<CommodityResponse> get items =>
      _$this._items ??= new ListBuilder<CommodityResponse>();
  set items(ListBuilder<CommodityResponse>? items) => _$this._items = items;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  CommodityListResponseBuilder() {
    CommodityListResponse._defaults(this);
  }

  CommodityListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommodityListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommodityListResponse;
  }

  @override
  void update(void Function(CommodityListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommodityListResponse build() => _build();

  _$CommodityListResponse _build() {
    _$CommodityListResponse _$result;
    try {
      _$result = _$v ??
          new _$CommodityListResponse._(
              items: items.build(),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'CommodityListResponse', 'total'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CommodityListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
