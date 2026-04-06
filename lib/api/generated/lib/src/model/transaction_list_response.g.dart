// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactionListResponse extends TransactionListResponse {
  @override
  final BuiltList<TransactionDetail> data;
  @override
  final int total;
  @override
  final int? limit;
  @override
  final int? offset;

  factory _$TransactionListResponse(
          [void Function(TransactionListResponseBuilder)? updates]) =>
      (new TransactionListResponseBuilder()..update(updates))._build();

  _$TransactionListResponse._(
      {required this.data, required this.total, this.limit, this.offset})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        data, r'TransactionListResponse', 'data');
    BuiltValueNullFieldError.checkNotNull(
        total, r'TransactionListResponse', 'total');
  }

  @override
  TransactionListResponse rebuild(
          void Function(TransactionListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionListResponseBuilder toBuilder() =>
      new TransactionListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionListResponse &&
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
    return (newBuiltValueToStringHelper(r'TransactionListResponse')
          ..add('data', data)
          ..add('total', total)
          ..add('limit', limit)
          ..add('offset', offset))
        .toString();
  }
}

class TransactionListResponseBuilder
    implements
        Builder<TransactionListResponse, TransactionListResponseBuilder> {
  _$TransactionListResponse? _$v;

  ListBuilder<TransactionDetail>? _data;
  ListBuilder<TransactionDetail> get data =>
      _$this._data ??= new ListBuilder<TransactionDetail>();
  set data(ListBuilder<TransactionDetail>? data) => _$this._data = data;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  TransactionListResponseBuilder() {
    TransactionListResponse._defaults(this);
  }

  TransactionListResponseBuilder get _$this {
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
  void replace(TransactionListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionListResponse;
  }

  @override
  void update(void Function(TransactionListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionListResponse build() => _build();

  _$TransactionListResponse _build() {
    _$TransactionListResponse _$result;
    try {
      _$result = _$v ??
          new _$TransactionListResponse._(
              data: data.build(),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'TransactionListResponse', 'total'),
              limit: limit,
              offset: offset);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransactionListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
