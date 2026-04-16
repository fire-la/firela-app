// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_list_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountListResponseDto extends AccountListResponseDto {
  @override
  final BuiltList<AccountResponseDto> items;
  @override
  final num total;

  factory _$AccountListResponseDto(
          [void Function(AccountListResponseDtoBuilder)? updates]) =>
      (new AccountListResponseDtoBuilder()..update(updates))._build();

  _$AccountListResponseDto._({required this.items, required this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        items, r'AccountListResponseDto', 'items');
    BuiltValueNullFieldError.checkNotNull(
        total, r'AccountListResponseDto', 'total');
  }

  @override
  AccountListResponseDto rebuild(
          void Function(AccountListResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountListResponseDtoBuilder toBuilder() =>
      new AccountListResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountListResponseDto &&
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
    return (newBuiltValueToStringHelper(r'AccountListResponseDto')
          ..add('items', items)
          ..add('total', total))
        .toString();
  }
}

class AccountListResponseDtoBuilder
    implements Builder<AccountListResponseDto, AccountListResponseDtoBuilder> {
  _$AccountListResponseDto? _$v;

  ListBuilder<AccountResponseDto>? _items;
  ListBuilder<AccountResponseDto> get items =>
      _$this._items ??= new ListBuilder<AccountResponseDto>();
  set items(ListBuilder<AccountResponseDto>? items) => _$this._items = items;

  num? _total;
  num? get total => _$this._total;
  set total(num? total) => _$this._total = total;

  AccountListResponseDtoBuilder() {
    AccountListResponseDto._defaults(this);
  }

  AccountListResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountListResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountListResponseDto;
  }

  @override
  void update(void Function(AccountListResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountListResponseDto build() => _build();

  _$AccountListResponseDto _build() {
    _$AccountListResponseDto _$result;
    try {
      _$result = _$v ??
          new _$AccountListResponseDto._(
              items: items.build(),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'AccountListResponseDto', 'total'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AccountListResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
