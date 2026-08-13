// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_catalog_list_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryCatalogListResponseDto extends CategoryCatalogListResponseDto {
  @override
  final BuiltList<CategoryCatalogEntryDto> items;
  @override
  final num total;
  @override
  final String region;

  factory _$CategoryCatalogListResponseDto(
          [void Function(CategoryCatalogListResponseDtoBuilder)? updates]) =>
      (new CategoryCatalogListResponseDtoBuilder()..update(updates))._build();

  _$CategoryCatalogListResponseDto._(
      {required this.items, required this.total, required this.region})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        items, r'CategoryCatalogListResponseDto', 'items');
    BuiltValueNullFieldError.checkNotNull(
        total, r'CategoryCatalogListResponseDto', 'total');
    BuiltValueNullFieldError.checkNotNull(
        region, r'CategoryCatalogListResponseDto', 'region');
  }

  @override
  CategoryCatalogListResponseDto rebuild(
          void Function(CategoryCatalogListResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryCatalogListResponseDtoBuilder toBuilder() =>
      new CategoryCatalogListResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryCatalogListResponseDto &&
        items == other.items &&
        total == other.total &&
        region == other.region;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryCatalogListResponseDto')
          ..add('items', items)
          ..add('total', total)
          ..add('region', region))
        .toString();
  }
}

class CategoryCatalogListResponseDtoBuilder
    implements
        Builder<CategoryCatalogListResponseDto,
            CategoryCatalogListResponseDtoBuilder> {
  _$CategoryCatalogListResponseDto? _$v;

  ListBuilder<CategoryCatalogEntryDto>? _items;
  ListBuilder<CategoryCatalogEntryDto> get items =>
      _$this._items ??= new ListBuilder<CategoryCatalogEntryDto>();
  set items(ListBuilder<CategoryCatalogEntryDto>? items) =>
      _$this._items = items;

  num? _total;
  num? get total => _$this._total;
  set total(num? total) => _$this._total = total;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  CategoryCatalogListResponseDtoBuilder() {
    CategoryCatalogListResponseDto._defaults(this);
  }

  CategoryCatalogListResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _total = $v.total;
      _region = $v.region;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryCatalogListResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoryCatalogListResponseDto;
  }

  @override
  void update(void Function(CategoryCatalogListResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryCatalogListResponseDto build() => _build();

  _$CategoryCatalogListResponseDto _build() {
    _$CategoryCatalogListResponseDto _$result;
    try {
      _$result = _$v ??
          new _$CategoryCatalogListResponseDto._(
              items: items.build(),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'CategoryCatalogListResponseDto', 'total'),
              region: BuiltValueNullFieldError.checkNotNull(
                  region, r'CategoryCatalogListResponseDto', 'region'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CategoryCatalogListResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
