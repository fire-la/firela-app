// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_list_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactionListResponseDto extends TransactionListResponseDto {
  @override
  final BuiltList<TransactionDetailDto> data;
  @override
  final num total;
  @override
  final num limit;
  @override
  final num offset;

  factory _$TransactionListResponseDto(
          [void Function(TransactionListResponseDtoBuilder)? updates]) =>
      (new TransactionListResponseDtoBuilder()..update(updates))._build();

  _$TransactionListResponseDto._(
      {required this.data,
      required this.total,
      required this.limit,
      required this.offset})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        data, r'TransactionListResponseDto', 'data');
    BuiltValueNullFieldError.checkNotNull(
        total, r'TransactionListResponseDto', 'total');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'TransactionListResponseDto', 'limit');
    BuiltValueNullFieldError.checkNotNull(
        offset, r'TransactionListResponseDto', 'offset');
  }

  @override
  TransactionListResponseDto rebuild(
          void Function(TransactionListResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionListResponseDtoBuilder toBuilder() =>
      new TransactionListResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionListResponseDto &&
        data == other.data &&
        total == other.total &&
        limit == other.limit &&
        offset == other.offset;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransactionListResponseDto')
          ..add('data', data)
          ..add('total', total)
          ..add('limit', limit)
          ..add('offset', offset))
        .toString();
  }
}

class TransactionListResponseDtoBuilder
    implements
        Builder<TransactionListResponseDto, TransactionListResponseDtoBuilder> {
  _$TransactionListResponseDto? _$v;

  ListBuilder<TransactionDetailDto>? _data;
  ListBuilder<TransactionDetailDto> get data =>
      _$this._data ??= new ListBuilder<TransactionDetailDto>();
  set data(ListBuilder<TransactionDetailDto>? data) => _$this._data = data;

  num? _total;
  num? get total => _$this._total;
  set total(num? total) => _$this._total = total;

  num? _limit;
  num? get limit => _$this._limit;
  set limit(num? limit) => _$this._limit = limit;

  num? _offset;
  num? get offset => _$this._offset;
  set offset(num? offset) => _$this._offset = offset;

  TransactionListResponseDtoBuilder() {
    TransactionListResponseDto._defaults(this);
  }

  TransactionListResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _total = $v.total;
      _limit = $v.limit;
      _offset = $v.offset;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionListResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionListResponseDto;
  }

  @override
  void update(void Function(TransactionListResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionListResponseDto build() => _build();

  _$TransactionListResponseDto _build() {
    _$TransactionListResponseDto _$result;
    try {
      _$result = _$v ??
          new _$TransactionListResponseDto._(
              data: data.build(),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'TransactionListResponseDto', 'total'),
              limit: BuiltValueNullFieldError.checkNotNull(
                  limit, r'TransactionListResponseDto', 'limit'),
              offset: BuiltValueNullFieldError.checkNotNull(
                  offset, r'TransactionListResponseDto', 'offset'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransactionListResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
