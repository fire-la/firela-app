// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_void_transactions_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchVoidTransactionsDto extends BatchVoidTransactionsDto {
  @override
  final BuiltList<String> ids;

  factory _$BatchVoidTransactionsDto(
          [void Function(BatchVoidTransactionsDtoBuilder)? updates]) =>
      (new BatchVoidTransactionsDtoBuilder()..update(updates))._build();

  _$BatchVoidTransactionsDto._({required this.ids}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        ids, r'BatchVoidTransactionsDto', 'ids');
  }

  @override
  BatchVoidTransactionsDto rebuild(
          void Function(BatchVoidTransactionsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchVoidTransactionsDtoBuilder toBuilder() =>
      new BatchVoidTransactionsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchVoidTransactionsDto && ids == other.ids;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ids.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BatchVoidTransactionsDto')
          ..add('ids', ids))
        .toString();
  }
}

class BatchVoidTransactionsDtoBuilder
    implements
        Builder<BatchVoidTransactionsDto, BatchVoidTransactionsDtoBuilder> {
  _$BatchVoidTransactionsDto? _$v;

  ListBuilder<String>? _ids;
  ListBuilder<String> get ids => _$this._ids ??= new ListBuilder<String>();
  set ids(ListBuilder<String>? ids) => _$this._ids = ids;

  BatchVoidTransactionsDtoBuilder() {
    BatchVoidTransactionsDto._defaults(this);
  }

  BatchVoidTransactionsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ids = $v.ids.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchVoidTransactionsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchVoidTransactionsDto;
  }

  @override
  void update(void Function(BatchVoidTransactionsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchVoidTransactionsDto build() => _build();

  _$BatchVoidTransactionsDto _build() {
    _$BatchVoidTransactionsDto _$result;
    try {
      _$result = _$v ?? new _$BatchVoidTransactionsDto._(ids: ids.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ids';
        ids.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchVoidTransactionsDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
