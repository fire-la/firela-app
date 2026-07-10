// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_list_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PriceListResponseDto extends PriceListResponseDto {
  @override
  final BuiltList<PriceResponseDto> items;
  @override
  final num total;

  factory _$PriceListResponseDto(
          [void Function(PriceListResponseDtoBuilder)? updates]) =>
      (new PriceListResponseDtoBuilder()..update(updates))._build();

  _$PriceListResponseDto._({required this.items, required this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        items, r'PriceListResponseDto', 'items');
    BuiltValueNullFieldError.checkNotNull(
        total, r'PriceListResponseDto', 'total');
  }

  @override
  PriceListResponseDto rebuild(
          void Function(PriceListResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PriceListResponseDtoBuilder toBuilder() =>
      new PriceListResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PriceListResponseDto &&
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
    return (newBuiltValueToStringHelper(r'PriceListResponseDto')
          ..add('items', items)
          ..add('total', total))
        .toString();
  }
}

class PriceListResponseDtoBuilder
    implements Builder<PriceListResponseDto, PriceListResponseDtoBuilder> {
  _$PriceListResponseDto? _$v;

  ListBuilder<PriceResponseDto>? _items;
  ListBuilder<PriceResponseDto> get items =>
      _$this._items ??= new ListBuilder<PriceResponseDto>();
  set items(ListBuilder<PriceResponseDto>? items) => _$this._items = items;

  num? _total;
  num? get total => _$this._total;
  set total(num? total) => _$this._total = total;

  PriceListResponseDtoBuilder() {
    PriceListResponseDto._defaults(this);
  }

  PriceListResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PriceListResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PriceListResponseDto;
  }

  @override
  void update(void Function(PriceListResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PriceListResponseDto build() => _build();

  _$PriceListResponseDto _build() {
    _$PriceListResponseDto _$result;
    try {
      _$result = _$v ??
          new _$PriceListResponseDto._(
              items: items.build(),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'PriceListResponseDto', 'total'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PriceListResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
