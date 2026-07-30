// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_account_link_list_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExternalAccountLinkListResponseDto
    extends ExternalAccountLinkListResponseDto {
  @override
  final BuiltList<ExternalAccountLinkResponseDto> items;
  @override
  final num total;
  @override
  final String? provider;

  factory _$ExternalAccountLinkListResponseDto(
          [void Function(ExternalAccountLinkListResponseDtoBuilder)?
              updates]) =>
      (new ExternalAccountLinkListResponseDtoBuilder()..update(updates))
          ._build();

  _$ExternalAccountLinkListResponseDto._(
      {required this.items, required this.total, this.provider})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        items, r'ExternalAccountLinkListResponseDto', 'items');
    BuiltValueNullFieldError.checkNotNull(
        total, r'ExternalAccountLinkListResponseDto', 'total');
  }

  @override
  ExternalAccountLinkListResponseDto rebuild(
          void Function(ExternalAccountLinkListResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExternalAccountLinkListResponseDtoBuilder toBuilder() =>
      new ExternalAccountLinkListResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalAccountLinkListResponseDto &&
        items == other.items &&
        total == other.total &&
        provider == other.provider;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExternalAccountLinkListResponseDto')
          ..add('items', items)
          ..add('total', total)
          ..add('provider', provider))
        .toString();
  }
}

class ExternalAccountLinkListResponseDtoBuilder
    implements
        Builder<ExternalAccountLinkListResponseDto,
            ExternalAccountLinkListResponseDtoBuilder> {
  _$ExternalAccountLinkListResponseDto? _$v;

  ListBuilder<ExternalAccountLinkResponseDto>? _items;
  ListBuilder<ExternalAccountLinkResponseDto> get items =>
      _$this._items ??= new ListBuilder<ExternalAccountLinkResponseDto>();
  set items(ListBuilder<ExternalAccountLinkResponseDto>? items) =>
      _$this._items = items;

  num? _total;
  num? get total => _$this._total;
  set total(num? total) => _$this._total = total;

  String? _provider;
  String? get provider => _$this._provider;
  set provider(String? provider) => _$this._provider = provider;

  ExternalAccountLinkListResponseDtoBuilder() {
    ExternalAccountLinkListResponseDto._defaults(this);
  }

  ExternalAccountLinkListResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _total = $v.total;
      _provider = $v.provider;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExternalAccountLinkListResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExternalAccountLinkListResponseDto;
  }

  @override
  void update(
      void Function(ExternalAccountLinkListResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExternalAccountLinkListResponseDto build() => _build();

  _$ExternalAccountLinkListResponseDto _build() {
    _$ExternalAccountLinkListResponseDto _$result;
    try {
      _$result = _$v ??
          new _$ExternalAccountLinkListResponseDto._(
              items: items.build(),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'ExternalAccountLinkListResponseDto', 'total'),
              provider: provider);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExternalAccountLinkListResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
