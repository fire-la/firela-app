// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parser_contribution_samples_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParserContributionSamplesDto extends ParserContributionSamplesDto {
  @override
  final BuiltList<JsonObject> rows;
  @override
  final BuiltList<String>? rawHeaders;

  factory _$ParserContributionSamplesDto(
          [void Function(ParserContributionSamplesDtoBuilder)? updates]) =>
      (new ParserContributionSamplesDtoBuilder()..update(updates))._build();

  _$ParserContributionSamplesDto._({required this.rows, this.rawHeaders})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        rows, r'ParserContributionSamplesDto', 'rows');
  }

  @override
  ParserContributionSamplesDto rebuild(
          void Function(ParserContributionSamplesDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParserContributionSamplesDtoBuilder toBuilder() =>
      new ParserContributionSamplesDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParserContributionSamplesDto &&
        rows == other.rows &&
        rawHeaders == other.rawHeaders;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rows.hashCode);
    _$hash = $jc(_$hash, rawHeaders.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParserContributionSamplesDto')
          ..add('rows', rows)
          ..add('rawHeaders', rawHeaders))
        .toString();
  }
}

class ParserContributionSamplesDtoBuilder
    implements
        Builder<ParserContributionSamplesDto,
            ParserContributionSamplesDtoBuilder> {
  _$ParserContributionSamplesDto? _$v;

  ListBuilder<JsonObject>? _rows;
  ListBuilder<JsonObject> get rows =>
      _$this._rows ??= new ListBuilder<JsonObject>();
  set rows(ListBuilder<JsonObject>? rows) => _$this._rows = rows;

  ListBuilder<String>? _rawHeaders;
  ListBuilder<String> get rawHeaders =>
      _$this._rawHeaders ??= new ListBuilder<String>();
  set rawHeaders(ListBuilder<String>? rawHeaders) =>
      _$this._rawHeaders = rawHeaders;

  ParserContributionSamplesDtoBuilder() {
    ParserContributionSamplesDto._defaults(this);
  }

  ParserContributionSamplesDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rows = $v.rows.toBuilder();
      _rawHeaders = $v.rawHeaders?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParserContributionSamplesDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParserContributionSamplesDto;
  }

  @override
  void update(void Function(ParserContributionSamplesDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParserContributionSamplesDto build() => _build();

  _$ParserContributionSamplesDto _build() {
    _$ParserContributionSamplesDto _$result;
    try {
      _$result = _$v ??
          new _$ParserContributionSamplesDto._(
              rows: rows.build(), rawHeaders: _rawHeaders?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rows';
        rows.build();
        _$failedField = 'rawHeaders';
        _rawHeaders?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ParserContributionSamplesDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
