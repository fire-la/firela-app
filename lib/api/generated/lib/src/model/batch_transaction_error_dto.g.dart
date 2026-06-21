// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_transaction_error_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchTransactionErrorDto extends BatchTransactionErrorDto {
  @override
  final num index;
  @override
  final String error;
  @override
  final String? errorCode;

  factory _$BatchTransactionErrorDto(
          [void Function(BatchTransactionErrorDtoBuilder)? updates]) =>
      (new BatchTransactionErrorDtoBuilder()..update(updates))._build();

  _$BatchTransactionErrorDto._(
      {required this.index, required this.error, this.errorCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        index, r'BatchTransactionErrorDto', 'index');
    BuiltValueNullFieldError.checkNotNull(
        error, r'BatchTransactionErrorDto', 'error');
  }

  @override
  BatchTransactionErrorDto rebuild(
          void Function(BatchTransactionErrorDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchTransactionErrorDtoBuilder toBuilder() =>
      new BatchTransactionErrorDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchTransactionErrorDto &&
        index == other.index &&
        error == other.error &&
        errorCode == other.errorCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, errorCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BatchTransactionErrorDto')
          ..add('index', index)
          ..add('error', error)
          ..add('errorCode', errorCode))
        .toString();
  }
}

class BatchTransactionErrorDtoBuilder
    implements
        Builder<BatchTransactionErrorDto, BatchTransactionErrorDtoBuilder> {
  _$BatchTransactionErrorDto? _$v;

  num? _index;
  num? get index => _$this._index;
  set index(num? index) => _$this._index = index;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _errorCode;
  String? get errorCode => _$this._errorCode;
  set errorCode(String? errorCode) => _$this._errorCode = errorCode;

  BatchTransactionErrorDtoBuilder() {
    BatchTransactionErrorDto._defaults(this);
  }

  BatchTransactionErrorDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _error = $v.error;
      _errorCode = $v.errorCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchTransactionErrorDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchTransactionErrorDto;
  }

  @override
  void update(void Function(BatchTransactionErrorDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchTransactionErrorDto build() => _build();

  _$BatchTransactionErrorDto _build() {
    final _$result = _$v ??
        new _$BatchTransactionErrorDto._(
            index: BuiltValueNullFieldError.checkNotNull(
                index, r'BatchTransactionErrorDto', 'index'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'BatchTransactionErrorDto', 'error'),
            errorCode: errorCode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
