// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commodity_list_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CommodityListResponseDto extends CommodityListResponseDto {
  @override
  final BuiltList<CommodityResponseDto> items;
  @override
  final num total;

  factory _$CommodityListResponseDto(
          [void Function(CommodityListResponseDtoBuilder)? updates]) =>
      (new CommodityListResponseDtoBuilder()..update(updates))._build();

  _$CommodityListResponseDto._({required this.items, required this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        items, r'CommodityListResponseDto', 'items');
    BuiltValueNullFieldError.checkNotNull(
        total, r'CommodityListResponseDto', 'total');
  }

  @override
  CommodityListResponseDto rebuild(
          void Function(CommodityListResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommodityListResponseDtoBuilder toBuilder() =>
      new CommodityListResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommodityListResponseDto &&
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
    return (newBuiltValueToStringHelper(r'CommodityListResponseDto')
          ..add('items', items)
          ..add('total', total))
        .toString();
  }
}

class CommodityListResponseDtoBuilder
    implements
        Builder<CommodityListResponseDto, CommodityListResponseDtoBuilder> {
  _$CommodityListResponseDto? _$v;

  ListBuilder<CommodityResponseDto>? _items;
  ListBuilder<CommodityResponseDto> get items =>
      _$this._items ??= new ListBuilder<CommodityResponseDto>();
  set items(ListBuilder<CommodityResponseDto>? items) => _$this._items = items;

  num? _total;
  num? get total => _$this._total;
  set total(num? total) => _$this._total = total;

  CommodityListResponseDtoBuilder() {
    CommodityListResponseDto._defaults(this);
  }

  CommodityListResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommodityListResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommodityListResponseDto;
  }

  @override
  void update(void Function(CommodityListResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommodityListResponseDto build() => _build();

  _$CommodityListResponseDto _build() {
    _$CommodityListResponseDto _$result;
    try {
      _$result = _$v ??
          new _$CommodityListResponseDto._(
              items: items.build(),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'CommodityListResponseDto', 'total'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CommodityListResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
