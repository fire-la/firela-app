// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PriceListResponse extends PriceListResponse {
  @override
  final BuiltList<PriceResponse> items;
  @override
  final int total;

  factory _$PriceListResponse(
          [void Function(PriceListResponseBuilder)? updates]) =>
      (new PriceListResponseBuilder()..update(updates))._build();

  _$PriceListResponse._({required this.items, required this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(items, r'PriceListResponse', 'items');
    BuiltValueNullFieldError.checkNotNull(total, r'PriceListResponse', 'total');
  }

  @override
  PriceListResponse rebuild(void Function(PriceListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PriceListResponseBuilder toBuilder() =>
      new PriceListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PriceListResponse &&
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
    return (newBuiltValueToStringHelper(r'PriceListResponse')
          ..add('items', items)
          ..add('total', total))
        .toString();
  }
}

class PriceListResponseBuilder
    implements Builder<PriceListResponse, PriceListResponseBuilder> {
  _$PriceListResponse? _$v;

  ListBuilder<PriceResponse>? _items;
  ListBuilder<PriceResponse> get items =>
      _$this._items ??= new ListBuilder<PriceResponse>();
  set items(ListBuilder<PriceResponse>? items) => _$this._items = items;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  PriceListResponseBuilder() {
    PriceListResponse._defaults(this);
  }

  PriceListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PriceListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PriceListResponse;
  }

  @override
  void update(void Function(PriceListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PriceListResponse build() => _build();

  _$PriceListResponse _build() {
    _$PriceListResponse _$result;
    try {
      _$result = _$v ??
          new _$PriceListResponse._(
              items: items.build(),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'PriceListResponse', 'total'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PriceListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
