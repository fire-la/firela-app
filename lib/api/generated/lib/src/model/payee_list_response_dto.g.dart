// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payee_list_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PayeeListResponseDto extends PayeeListResponseDto {
  @override
  final BuiltList<PayeeResponseDto> items;
  @override
  final num total;

  factory _$PayeeListResponseDto(
          [void Function(PayeeListResponseDtoBuilder)? updates]) =>
      (new PayeeListResponseDtoBuilder()..update(updates))._build();

  _$PayeeListResponseDto._({required this.items, required this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        items, r'PayeeListResponseDto', 'items');
    BuiltValueNullFieldError.checkNotNull(
        total, r'PayeeListResponseDto', 'total');
  }

  @override
  PayeeListResponseDto rebuild(
          void Function(PayeeListResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PayeeListResponseDtoBuilder toBuilder() =>
      new PayeeListResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PayeeListResponseDto &&
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
    return (newBuiltValueToStringHelper(r'PayeeListResponseDto')
          ..add('items', items)
          ..add('total', total))
        .toString();
  }
}

class PayeeListResponseDtoBuilder
    implements Builder<PayeeListResponseDto, PayeeListResponseDtoBuilder> {
  _$PayeeListResponseDto? _$v;

  ListBuilder<PayeeResponseDto>? _items;
  ListBuilder<PayeeResponseDto> get items =>
      _$this._items ??= new ListBuilder<PayeeResponseDto>();
  set items(ListBuilder<PayeeResponseDto>? items) => _$this._items = items;

  num? _total;
  num? get total => _$this._total;
  set total(num? total) => _$this._total = total;

  PayeeListResponseDtoBuilder() {
    PayeeListResponseDto._defaults(this);
  }

  PayeeListResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PayeeListResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PayeeListResponseDto;
  }

  @override
  void update(void Function(PayeeListResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PayeeListResponseDto build() => _build();

  _$PayeeListResponseDto _build() {
    _$PayeeListResponseDto _$result;
    try {
      _$result = _$v ??
          new _$PayeeListResponseDto._(
              items: items.build(),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'PayeeListResponseDto', 'total'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PayeeListResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
