// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_create_transaction_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchCreateTransactionDto extends BatchCreateTransactionDto {
  @override
  final BuiltList<CreateTransactionDto> transactions;

  factory _$BatchCreateTransactionDto(
          [void Function(BatchCreateTransactionDtoBuilder)? updates]) =>
      (new BatchCreateTransactionDtoBuilder()..update(updates))._build();

  _$BatchCreateTransactionDto._({required this.transactions}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        transactions, r'BatchCreateTransactionDto', 'transactions');
  }

  @override
  BatchCreateTransactionDto rebuild(
          void Function(BatchCreateTransactionDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchCreateTransactionDtoBuilder toBuilder() =>
      new BatchCreateTransactionDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchCreateTransactionDto &&
        transactions == other.transactions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transactions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BatchCreateTransactionDto')
          ..add('transactions', transactions))
        .toString();
  }
}

class BatchCreateTransactionDtoBuilder
    implements
        Builder<BatchCreateTransactionDto, BatchCreateTransactionDtoBuilder> {
  _$BatchCreateTransactionDto? _$v;

  ListBuilder<CreateTransactionDto>? _transactions;
  ListBuilder<CreateTransactionDto> get transactions =>
      _$this._transactions ??= new ListBuilder<CreateTransactionDto>();
  set transactions(ListBuilder<CreateTransactionDto>? transactions) =>
      _$this._transactions = transactions;

  BatchCreateTransactionDtoBuilder() {
    BatchCreateTransactionDto._defaults(this);
  }

  BatchCreateTransactionDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transactions = $v.transactions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchCreateTransactionDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchCreateTransactionDto;
  }

  @override
  void update(void Function(BatchCreateTransactionDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchCreateTransactionDto build() => _build();

  _$BatchCreateTransactionDto _build() {
    _$BatchCreateTransactionDto _$result;
    try {
      _$result = _$v ??
          new _$BatchCreateTransactionDto._(transactions: transactions.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transactions';
        transactions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchCreateTransactionDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
