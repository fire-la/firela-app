// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_standard_list_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountStandardListResponseDto extends AccountStandardListResponseDto {
  @override
  final BuiltList<AccountStandardResponseDto> items;
  @override
  final num total;
  @override
  final String region;

  factory _$AccountStandardListResponseDto(
          [void Function(AccountStandardListResponseDtoBuilder)? updates]) =>
      (new AccountStandardListResponseDtoBuilder()..update(updates))._build();

  _$AccountStandardListResponseDto._(
      {required this.items, required this.total, required this.region})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        items, r'AccountStandardListResponseDto', 'items');
    BuiltValueNullFieldError.checkNotNull(
        total, r'AccountStandardListResponseDto', 'total');
    BuiltValueNullFieldError.checkNotNull(
        region, r'AccountStandardListResponseDto', 'region');
  }

  @override
  AccountStandardListResponseDto rebuild(
          void Function(AccountStandardListResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountStandardListResponseDtoBuilder toBuilder() =>
      new AccountStandardListResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountStandardListResponseDto &&
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
    return (newBuiltValueToStringHelper(r'AccountStandardListResponseDto')
          ..add('items', items)
          ..add('total', total)
          ..add('region', region))
        .toString();
  }
}

class AccountStandardListResponseDtoBuilder
    implements
        Builder<AccountStandardListResponseDto,
            AccountStandardListResponseDtoBuilder> {
  _$AccountStandardListResponseDto? _$v;

  ListBuilder<AccountStandardResponseDto>? _items;
  ListBuilder<AccountStandardResponseDto> get items =>
      _$this._items ??= new ListBuilder<AccountStandardResponseDto>();
  set items(ListBuilder<AccountStandardResponseDto>? items) =>
      _$this._items = items;

  num? _total;
  num? get total => _$this._total;
  set total(num? total) => _$this._total = total;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  AccountStandardListResponseDtoBuilder() {
    AccountStandardListResponseDto._defaults(this);
  }

  AccountStandardListResponseDtoBuilder get _$this {
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
  void replace(AccountStandardListResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountStandardListResponseDto;
  }

  @override
  void update(void Function(AccountStandardListResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountStandardListResponseDto build() => _build();

  _$AccountStandardListResponseDto _build() {
    _$AccountStandardListResponseDto _$result;
    try {
      _$result = _$v ??
          new _$AccountStandardListResponseDto._(
              items: items.build(),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'AccountStandardListResponseDto', 'total'),
              region: BuiltValueNullFieldError.checkNotNull(
                  region, r'AccountStandardListResponseDto', 'region'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AccountStandardListResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
