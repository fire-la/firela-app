// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expected_transaction_list_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExpectedTransactionListResponseDto
    extends ExpectedTransactionListResponseDto {
  @override
  final BuiltList<ExpectedTransactionResponseDto> items;
  @override
  final num total;

  factory _$ExpectedTransactionListResponseDto(
          [void Function(ExpectedTransactionListResponseDtoBuilder)?
              updates]) =>
      (new ExpectedTransactionListResponseDtoBuilder()..update(updates))
          ._build();

  _$ExpectedTransactionListResponseDto._(
      {required this.items, required this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        items, r'ExpectedTransactionListResponseDto', 'items');
    BuiltValueNullFieldError.checkNotNull(
        total, r'ExpectedTransactionListResponseDto', 'total');
  }

  @override
  ExpectedTransactionListResponseDto rebuild(
          void Function(ExpectedTransactionListResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExpectedTransactionListResponseDtoBuilder toBuilder() =>
      new ExpectedTransactionListResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExpectedTransactionListResponseDto &&
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
    return (newBuiltValueToStringHelper(r'ExpectedTransactionListResponseDto')
          ..add('items', items)
          ..add('total', total))
        .toString();
  }
}

class ExpectedTransactionListResponseDtoBuilder
    implements
        Builder<ExpectedTransactionListResponseDto,
            ExpectedTransactionListResponseDtoBuilder> {
  _$ExpectedTransactionListResponseDto? _$v;

  ListBuilder<ExpectedTransactionResponseDto>? _items;
  ListBuilder<ExpectedTransactionResponseDto> get items =>
      _$this._items ??= new ListBuilder<ExpectedTransactionResponseDto>();
  set items(ListBuilder<ExpectedTransactionResponseDto>? items) =>
      _$this._items = items;

  num? _total;
  num? get total => _$this._total;
  set total(num? total) => _$this._total = total;

  ExpectedTransactionListResponseDtoBuilder() {
    ExpectedTransactionListResponseDto._defaults(this);
  }

  ExpectedTransactionListResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExpectedTransactionListResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExpectedTransactionListResponseDto;
  }

  @override
  void update(
      void Function(ExpectedTransactionListResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExpectedTransactionListResponseDto build() => _build();

  _$ExpectedTransactionListResponseDto _build() {
    _$ExpectedTransactionListResponseDto _$result;
    try {
      _$result = _$v ??
          new _$ExpectedTransactionListResponseDto._(
              items: items.build(),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'ExpectedTransactionListResponseDto', 'total'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExpectedTransactionListResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
