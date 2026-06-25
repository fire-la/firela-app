// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_resolve_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchResolveResultDto extends BatchResolveResultDto {
  @override
  final num successCount;
  @override
  final num failedCount;
  @override
  final BuiltList<String> results;

  factory _$BatchResolveResultDto(
          [void Function(BatchResolveResultDtoBuilder)? updates]) =>
      (new BatchResolveResultDtoBuilder()..update(updates))._build();

  _$BatchResolveResultDto._(
      {required this.successCount,
      required this.failedCount,
      required this.results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        successCount, r'BatchResolveResultDto', 'successCount');
    BuiltValueNullFieldError.checkNotNull(
        failedCount, r'BatchResolveResultDto', 'failedCount');
    BuiltValueNullFieldError.checkNotNull(
        results, r'BatchResolveResultDto', 'results');
  }

  @override
  BatchResolveResultDto rebuild(
          void Function(BatchResolveResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchResolveResultDtoBuilder toBuilder() =>
      new BatchResolveResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchResolveResultDto &&
        successCount == other.successCount &&
        failedCount == other.failedCount &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, successCount.hashCode);
    _$hash = $jc(_$hash, failedCount.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BatchResolveResultDto')
          ..add('successCount', successCount)
          ..add('failedCount', failedCount)
          ..add('results', results))
        .toString();
  }
}

class BatchResolveResultDtoBuilder
    implements Builder<BatchResolveResultDto, BatchResolveResultDtoBuilder> {
  _$BatchResolveResultDto? _$v;

  num? _successCount;
  num? get successCount => _$this._successCount;
  set successCount(num? successCount) => _$this._successCount = successCount;

  num? _failedCount;
  num? get failedCount => _$this._failedCount;
  set failedCount(num? failedCount) => _$this._failedCount = failedCount;

  ListBuilder<String>? _results;
  ListBuilder<String> get results =>
      _$this._results ??= new ListBuilder<String>();
  set results(ListBuilder<String>? results) => _$this._results = results;

  BatchResolveResultDtoBuilder() {
    BatchResolveResultDto._defaults(this);
  }

  BatchResolveResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _successCount = $v.successCount;
      _failedCount = $v.failedCount;
      _results = $v.results.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchResolveResultDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchResolveResultDto;
  }

  @override
  void update(void Function(BatchResolveResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchResolveResultDto build() => _build();

  _$BatchResolveResultDto _build() {
    _$BatchResolveResultDto _$result;
    try {
      _$result = _$v ??
          new _$BatchResolveResultDto._(
              successCount: BuiltValueNullFieldError.checkNotNull(
                  successCount, r'BatchResolveResultDto', 'successCount'),
              failedCount: BuiltValueNullFieldError.checkNotNull(
                  failedCount, r'BatchResolveResultDto', 'failedCount'),
              results: results.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchResolveResultDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
