// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parser_contribution_request_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParserContributionRequestDto extends ParserContributionRequestDto {
  @override
  final ParserContributionMetaDto meta;
  @override
  final ParserContributionSamplesDto samples;
  @override
  final ParserContributionFieldHintsDto fieldHints;
  @override
  final ParserContributionExamplesDto? examples;

  factory _$ParserContributionRequestDto(
          [void Function(ParserContributionRequestDtoBuilder)? updates]) =>
      (new ParserContributionRequestDtoBuilder()..update(updates))._build();

  _$ParserContributionRequestDto._(
      {required this.meta,
      required this.samples,
      required this.fieldHints,
      this.examples})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        meta, r'ParserContributionRequestDto', 'meta');
    BuiltValueNullFieldError.checkNotNull(
        samples, r'ParserContributionRequestDto', 'samples');
    BuiltValueNullFieldError.checkNotNull(
        fieldHints, r'ParserContributionRequestDto', 'fieldHints');
  }

  @override
  ParserContributionRequestDto rebuild(
          void Function(ParserContributionRequestDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParserContributionRequestDtoBuilder toBuilder() =>
      new ParserContributionRequestDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParserContributionRequestDto &&
        meta == other.meta &&
        samples == other.samples &&
        fieldHints == other.fieldHints &&
        examples == other.examples;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jc(_$hash, samples.hashCode);
    _$hash = $jc(_$hash, fieldHints.hashCode);
    _$hash = $jc(_$hash, examples.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParserContributionRequestDto')
          ..add('meta', meta)
          ..add('samples', samples)
          ..add('fieldHints', fieldHints)
          ..add('examples', examples))
        .toString();
  }
}

class ParserContributionRequestDtoBuilder
    implements
        Builder<ParserContributionRequestDto,
            ParserContributionRequestDtoBuilder> {
  _$ParserContributionRequestDto? _$v;

  ParserContributionMetaDtoBuilder? _meta;
  ParserContributionMetaDtoBuilder get meta =>
      _$this._meta ??= new ParserContributionMetaDtoBuilder();
  set meta(ParserContributionMetaDtoBuilder? meta) => _$this._meta = meta;

  ParserContributionSamplesDtoBuilder? _samples;
  ParserContributionSamplesDtoBuilder get samples =>
      _$this._samples ??= new ParserContributionSamplesDtoBuilder();
  set samples(ParserContributionSamplesDtoBuilder? samples) =>
      _$this._samples = samples;

  ParserContributionFieldHintsDtoBuilder? _fieldHints;
  ParserContributionFieldHintsDtoBuilder get fieldHints =>
      _$this._fieldHints ??= new ParserContributionFieldHintsDtoBuilder();
  set fieldHints(ParserContributionFieldHintsDtoBuilder? fieldHints) =>
      _$this._fieldHints = fieldHints;

  ParserContributionExamplesDtoBuilder? _examples;
  ParserContributionExamplesDtoBuilder get examples =>
      _$this._examples ??= new ParserContributionExamplesDtoBuilder();
  set examples(ParserContributionExamplesDtoBuilder? examples) =>
      _$this._examples = examples;

  ParserContributionRequestDtoBuilder() {
    ParserContributionRequestDto._defaults(this);
  }

  ParserContributionRequestDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _meta = $v.meta.toBuilder();
      _samples = $v.samples.toBuilder();
      _fieldHints = $v.fieldHints.toBuilder();
      _examples = $v.examples?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParserContributionRequestDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParserContributionRequestDto;
  }

  @override
  void update(void Function(ParserContributionRequestDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParserContributionRequestDto build() => _build();

  _$ParserContributionRequestDto _build() {
    _$ParserContributionRequestDto _$result;
    try {
      _$result = _$v ??
          new _$ParserContributionRequestDto._(
              meta: meta.build(),
              samples: samples.build(),
              fieldHints: fieldHints.build(),
              examples: _examples?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'meta';
        meta.build();
        _$failedField = 'samples';
        samples.build();
        _$failedField = 'fieldHints';
        fieldHints.build();
        _$failedField = 'examples';
        _examples?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ParserContributionRequestDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
