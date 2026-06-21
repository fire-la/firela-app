// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_transaction_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchTransactionResponseDto extends BatchTransactionResponseDto {
  @override
  final BuiltList<TransactionResponseDto> succeeded;
  @override
  final BuiltList<BatchTransactionErrorDto> failed;

  factory _$BatchTransactionResponseDto(
          [void Function(BatchTransactionResponseDtoBuilder)? updates]) =>
      (new BatchTransactionResponseDtoBuilder()..update(updates))._build();

  _$BatchTransactionResponseDto._(
      {required this.succeeded, required this.failed})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        succeeded, r'BatchTransactionResponseDto', 'succeeded');
    BuiltValueNullFieldError.checkNotNull(
        failed, r'BatchTransactionResponseDto', 'failed');
  }

  @override
  BatchTransactionResponseDto rebuild(
          void Function(BatchTransactionResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchTransactionResponseDtoBuilder toBuilder() =>
      new BatchTransactionResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchTransactionResponseDto &&
        succeeded == other.succeeded &&
        failed == other.failed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, succeeded.hashCode);
    _$hash = $jc(_$hash, failed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BatchTransactionResponseDto')
          ..add('succeeded', succeeded)
          ..add('failed', failed))
        .toString();
  }
}

class BatchTransactionResponseDtoBuilder
    implements
        Builder<BatchTransactionResponseDto,
            BatchTransactionResponseDtoBuilder> {
  _$BatchTransactionResponseDto? _$v;

  ListBuilder<TransactionResponseDto>? _succeeded;
  ListBuilder<TransactionResponseDto> get succeeded =>
      _$this._succeeded ??= new ListBuilder<TransactionResponseDto>();
  set succeeded(ListBuilder<TransactionResponseDto>? succeeded) =>
      _$this._succeeded = succeeded;

  ListBuilder<BatchTransactionErrorDto>? _failed;
  ListBuilder<BatchTransactionErrorDto> get failed =>
      _$this._failed ??= new ListBuilder<BatchTransactionErrorDto>();
  set failed(ListBuilder<BatchTransactionErrorDto>? failed) =>
      _$this._failed = failed;

  BatchTransactionResponseDtoBuilder() {
    BatchTransactionResponseDto._defaults(this);
  }

  BatchTransactionResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _succeeded = $v.succeeded.toBuilder();
      _failed = $v.failed.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchTransactionResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchTransactionResponseDto;
  }

  @override
  void update(void Function(BatchTransactionResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchTransactionResponseDto build() => _build();

  _$BatchTransactionResponseDto _build() {
    _$BatchTransactionResponseDto _$result;
    try {
      _$result = _$v ??
          new _$BatchTransactionResponseDto._(
              succeeded: succeeded.build(), failed: failed.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'succeeded';
        succeeded.build();
        _$failedField = 'failed';
        failed.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchTransactionResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
