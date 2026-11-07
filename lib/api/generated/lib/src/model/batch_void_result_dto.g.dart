// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_void_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchVoidResultDto extends BatchVoidResultDto {
  @override
  final num voided;
  @override
  final BuiltList<String> notFound;

  factory _$BatchVoidResultDto(
          [void Function(BatchVoidResultDtoBuilder)? updates]) =>
      (new BatchVoidResultDtoBuilder()..update(updates))._build();

  _$BatchVoidResultDto._({required this.voided, required this.notFound})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        voided, r'BatchVoidResultDto', 'voided');
    BuiltValueNullFieldError.checkNotNull(
        notFound, r'BatchVoidResultDto', 'notFound');
  }

  @override
  BatchVoidResultDto rebuild(
          void Function(BatchVoidResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchVoidResultDtoBuilder toBuilder() =>
      new BatchVoidResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchVoidResultDto &&
        voided == other.voided &&
        notFound == other.notFound;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, voided.hashCode);
    _$hash = $jc(_$hash, notFound.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BatchVoidResultDto')
          ..add('voided', voided)
          ..add('notFound', notFound))
        .toString();
  }
}

class BatchVoidResultDtoBuilder
    implements Builder<BatchVoidResultDto, BatchVoidResultDtoBuilder> {
  _$BatchVoidResultDto? _$v;

  num? _voided;
  num? get voided => _$this._voided;
  set voided(num? voided) => _$this._voided = voided;

  ListBuilder<String>? _notFound;
  ListBuilder<String> get notFound =>
      _$this._notFound ??= new ListBuilder<String>();
  set notFound(ListBuilder<String>? notFound) => _$this._notFound = notFound;

  BatchVoidResultDtoBuilder() {
    BatchVoidResultDto._defaults(this);
  }

  BatchVoidResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _voided = $v.voided;
      _notFound = $v.notFound.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchVoidResultDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchVoidResultDto;
  }

  @override
  void update(void Function(BatchVoidResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchVoidResultDto build() => _build();

  _$BatchVoidResultDto _build() {
    _$BatchVoidResultDto _$result;
    try {
      _$result = _$v ??
          new _$BatchVoidResultDto._(
              voided: BuiltValueNullFieldError.checkNotNull(
                  voided, r'BatchVoidResultDto', 'voided'),
              notFound: notFound.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'notFound';
        notFound.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchVoidResultDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
