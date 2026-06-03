// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payee_profile_list_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PayeeProfileListResponseDto extends PayeeProfileListResponseDto {
  @override
  final BuiltList<PayeeProfileResponseDto> items;
  @override
  final num total;

  factory _$PayeeProfileListResponseDto(
          [void Function(PayeeProfileListResponseDtoBuilder)? updates]) =>
      (new PayeeProfileListResponseDtoBuilder()..update(updates))._build();

  _$PayeeProfileListResponseDto._({required this.items, required this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        items, r'PayeeProfileListResponseDto', 'items');
    BuiltValueNullFieldError.checkNotNull(
        total, r'PayeeProfileListResponseDto', 'total');
  }

  @override
  PayeeProfileListResponseDto rebuild(
          void Function(PayeeProfileListResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PayeeProfileListResponseDtoBuilder toBuilder() =>
      new PayeeProfileListResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PayeeProfileListResponseDto &&
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
    return (newBuiltValueToStringHelper(r'PayeeProfileListResponseDto')
          ..add('items', items)
          ..add('total', total))
        .toString();
  }
}

class PayeeProfileListResponseDtoBuilder
    implements
        Builder<PayeeProfileListResponseDto,
            PayeeProfileListResponseDtoBuilder> {
  _$PayeeProfileListResponseDto? _$v;

  ListBuilder<PayeeProfileResponseDto>? _items;
  ListBuilder<PayeeProfileResponseDto> get items =>
      _$this._items ??= new ListBuilder<PayeeProfileResponseDto>();
  set items(ListBuilder<PayeeProfileResponseDto>? items) =>
      _$this._items = items;

  num? _total;
  num? get total => _$this._total;
  set total(num? total) => _$this._total = total;

  PayeeProfileListResponseDtoBuilder() {
    PayeeProfileListResponseDto._defaults(this);
  }

  PayeeProfileListResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PayeeProfileListResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PayeeProfileListResponseDto;
  }

  @override
  void update(void Function(PayeeProfileListResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PayeeProfileListResponseDto build() => _build();

  _$PayeeProfileListResponseDto _build() {
    _$PayeeProfileListResponseDto _$result;
    try {
      _$result = _$v ??
          new _$PayeeProfileListResponseDto._(
              items: items.build(),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'PayeeProfileListResponseDto', 'total'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PayeeProfileListResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
