// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_rule_list_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactionRuleListResponseDto extends TransactionRuleListResponseDto {
  @override
  final BuiltList<TransactionRuleResponseDto> data;
  @override
  final num total;
  @override
  final num limit;
  @override
  final num offset;

  factory _$TransactionRuleListResponseDto(
          [void Function(TransactionRuleListResponseDtoBuilder)? updates]) =>
      (new TransactionRuleListResponseDtoBuilder()..update(updates))._build();

  _$TransactionRuleListResponseDto._(
      {required this.data,
      required this.total,
      required this.limit,
      required this.offset})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        data, r'TransactionRuleListResponseDto', 'data');
    BuiltValueNullFieldError.checkNotNull(
        total, r'TransactionRuleListResponseDto', 'total');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'TransactionRuleListResponseDto', 'limit');
    BuiltValueNullFieldError.checkNotNull(
        offset, r'TransactionRuleListResponseDto', 'offset');
  }

  @override
  TransactionRuleListResponseDto rebuild(
          void Function(TransactionRuleListResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionRuleListResponseDtoBuilder toBuilder() =>
      new TransactionRuleListResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionRuleListResponseDto &&
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
    return (newBuiltValueToStringHelper(r'TransactionRuleListResponseDto')
          ..add('data', data)
          ..add('total', total)
          ..add('limit', limit)
          ..add('offset', offset))
        .toString();
  }
}

class TransactionRuleListResponseDtoBuilder
    implements
        Builder<TransactionRuleListResponseDto,
            TransactionRuleListResponseDtoBuilder> {
  _$TransactionRuleListResponseDto? _$v;

  ListBuilder<TransactionRuleResponseDto>? _data;
  ListBuilder<TransactionRuleResponseDto> get data =>
      _$this._data ??= new ListBuilder<TransactionRuleResponseDto>();
  set data(ListBuilder<TransactionRuleResponseDto>? data) =>
      _$this._data = data;

  num? _total;
  num? get total => _$this._total;
  set total(num? total) => _$this._total = total;

  num? _limit;
  num? get limit => _$this._limit;
  set limit(num? limit) => _$this._limit = limit;

  num? _offset;
  num? get offset => _$this._offset;
  set offset(num? offset) => _$this._offset = offset;

  TransactionRuleListResponseDtoBuilder() {
    TransactionRuleListResponseDto._defaults(this);
  }

  TransactionRuleListResponseDtoBuilder get _$this {
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
  void replace(TransactionRuleListResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionRuleListResponseDto;
  }

  @override
  void update(void Function(TransactionRuleListResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionRuleListResponseDto build() => _build();

  _$TransactionRuleListResponseDto _build() {
    _$TransactionRuleListResponseDto _$result;
    try {
      _$result = _$v ??
          new _$TransactionRuleListResponseDto._(
              data: data.build(),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'TransactionRuleListResponseDto', 'total'),
              limit: BuiltValueNullFieldError.checkNotNull(
                  limit, r'TransactionRuleListResponseDto', 'limit'),
              offset: BuiltValueNullFieldError.checkNotNull(
                  offset, r'TransactionRuleListResponseDto', 'offset'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransactionRuleListResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
