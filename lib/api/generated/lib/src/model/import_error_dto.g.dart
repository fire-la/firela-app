// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_error_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportErrorDto extends ImportErrorDto {
  @override
  final num index;
  @override
  final String error;

  factory _$ImportErrorDto([void Function(ImportErrorDtoBuilder)? updates]) =>
      (new ImportErrorDtoBuilder()..update(updates))._build();

  _$ImportErrorDto._({required this.index, required this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(index, r'ImportErrorDto', 'index');
    BuiltValueNullFieldError.checkNotNull(error, r'ImportErrorDto', 'error');
  }

  @override
  ImportErrorDto rebuild(void Function(ImportErrorDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportErrorDtoBuilder toBuilder() =>
      new ImportErrorDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportErrorDto &&
        index == other.index &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImportErrorDto')
          ..add('index', index)
          ..add('error', error))
        .toString();
  }
}

class ImportErrorDtoBuilder
    implements Builder<ImportErrorDto, ImportErrorDtoBuilder> {
  _$ImportErrorDto? _$v;

  num? _index;
  num? get index => _$this._index;
  set index(num? index) => _$this._index = index;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  ImportErrorDtoBuilder() {
    ImportErrorDto._defaults(this);
  }

  ImportErrorDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportErrorDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportErrorDto;
  }

  @override
  void update(void Function(ImportErrorDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportErrorDto build() => _build();

  _$ImportErrorDto _build() {
    final _$result = _$v ??
        new _$ImportErrorDto._(
            index: BuiltValueNullFieldError.checkNotNull(
                index, r'ImportErrorDto', 'index'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'ImportErrorDto', 'error'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
