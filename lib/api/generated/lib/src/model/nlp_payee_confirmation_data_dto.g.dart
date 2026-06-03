// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nlp_payee_confirmation_data_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NlpPayeeConfirmationDataDto extends NlpPayeeConfirmationDataDto {
  @override
  final num confidence;
  @override
  final String originalPayee;
  @override
  final num similarity;
  @override
  final BuiltList<NlpAlternativePayeeDto> alternatives;
  @override
  final BuiltList<String> reasons;
  @override
  final NlpPayeeConfirmationDataDtoSuggestedPayee? suggestedPayee;

  factory _$NlpPayeeConfirmationDataDto(
          [void Function(NlpPayeeConfirmationDataDtoBuilder)? updates]) =>
      (new NlpPayeeConfirmationDataDtoBuilder()..update(updates))._build();

  _$NlpPayeeConfirmationDataDto._(
      {required this.confidence,
      required this.originalPayee,
      required this.similarity,
      required this.alternatives,
      required this.reasons,
      this.suggestedPayee})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        confidence, r'NlpPayeeConfirmationDataDto', 'confidence');
    BuiltValueNullFieldError.checkNotNull(
        originalPayee, r'NlpPayeeConfirmationDataDto', 'originalPayee');
    BuiltValueNullFieldError.checkNotNull(
        similarity, r'NlpPayeeConfirmationDataDto', 'similarity');
    BuiltValueNullFieldError.checkNotNull(
        alternatives, r'NlpPayeeConfirmationDataDto', 'alternatives');
    BuiltValueNullFieldError.checkNotNull(
        reasons, r'NlpPayeeConfirmationDataDto', 'reasons');
  }

  @override
  NlpPayeeConfirmationDataDto rebuild(
          void Function(NlpPayeeConfirmationDataDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NlpPayeeConfirmationDataDtoBuilder toBuilder() =>
      new NlpPayeeConfirmationDataDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NlpPayeeConfirmationDataDto &&
        confidence == other.confidence &&
        originalPayee == other.originalPayee &&
        similarity == other.similarity &&
        alternatives == other.alternatives &&
        reasons == other.reasons &&
        suggestedPayee == other.suggestedPayee;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, originalPayee.hashCode);
    _$hash = $jc(_$hash, similarity.hashCode);
    _$hash = $jc(_$hash, alternatives.hashCode);
    _$hash = $jc(_$hash, reasons.hashCode);
    _$hash = $jc(_$hash, suggestedPayee.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NlpPayeeConfirmationDataDto')
          ..add('confidence', confidence)
          ..add('originalPayee', originalPayee)
          ..add('similarity', similarity)
          ..add('alternatives', alternatives)
          ..add('reasons', reasons)
          ..add('suggestedPayee', suggestedPayee))
        .toString();
  }
}

class NlpPayeeConfirmationDataDtoBuilder
    implements
        Builder<NlpPayeeConfirmationDataDto,
            NlpPayeeConfirmationDataDtoBuilder> {
  _$NlpPayeeConfirmationDataDto? _$v;

  num? _confidence;
  num? get confidence => _$this._confidence;
  set confidence(num? confidence) => _$this._confidence = confidence;

  String? _originalPayee;
  String? get originalPayee => _$this._originalPayee;
  set originalPayee(String? originalPayee) =>
      _$this._originalPayee = originalPayee;

  num? _similarity;
  num? get similarity => _$this._similarity;
  set similarity(num? similarity) => _$this._similarity = similarity;

  ListBuilder<NlpAlternativePayeeDto>? _alternatives;
  ListBuilder<NlpAlternativePayeeDto> get alternatives =>
      _$this._alternatives ??= new ListBuilder<NlpAlternativePayeeDto>();
  set alternatives(ListBuilder<NlpAlternativePayeeDto>? alternatives) =>
      _$this._alternatives = alternatives;

  ListBuilder<String>? _reasons;
  ListBuilder<String> get reasons =>
      _$this._reasons ??= new ListBuilder<String>();
  set reasons(ListBuilder<String>? reasons) => _$this._reasons = reasons;

  NlpPayeeConfirmationDataDtoSuggestedPayeeBuilder? _suggestedPayee;
  NlpPayeeConfirmationDataDtoSuggestedPayeeBuilder get suggestedPayee =>
      _$this._suggestedPayee ??=
          new NlpPayeeConfirmationDataDtoSuggestedPayeeBuilder();
  set suggestedPayee(
          NlpPayeeConfirmationDataDtoSuggestedPayeeBuilder? suggestedPayee) =>
      _$this._suggestedPayee = suggestedPayee;

  NlpPayeeConfirmationDataDtoBuilder() {
    NlpPayeeConfirmationDataDto._defaults(this);
  }

  NlpPayeeConfirmationDataDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _confidence = $v.confidence;
      _originalPayee = $v.originalPayee;
      _similarity = $v.similarity;
      _alternatives = $v.alternatives.toBuilder();
      _reasons = $v.reasons.toBuilder();
      _suggestedPayee = $v.suggestedPayee?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NlpPayeeConfirmationDataDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NlpPayeeConfirmationDataDto;
  }

  @override
  void update(void Function(NlpPayeeConfirmationDataDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NlpPayeeConfirmationDataDto build() => _build();

  _$NlpPayeeConfirmationDataDto _build() {
    _$NlpPayeeConfirmationDataDto _$result;
    try {
      _$result = _$v ??
          new _$NlpPayeeConfirmationDataDto._(
              confidence: BuiltValueNullFieldError.checkNotNull(
                  confidence, r'NlpPayeeConfirmationDataDto', 'confidence'),
              originalPayee: BuiltValueNullFieldError.checkNotNull(
                  originalPayee,
                  r'NlpPayeeConfirmationDataDto',
                  'originalPayee'),
              similarity: BuiltValueNullFieldError.checkNotNull(
                  similarity, r'NlpPayeeConfirmationDataDto', 'similarity'),
              alternatives: alternatives.build(),
              reasons: reasons.build(),
              suggestedPayee: _suggestedPayee?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'alternatives';
        alternatives.build();
        _$failedField = 'reasons';
        reasons.build();
        _$failedField = 'suggestedPayee';
        _suggestedPayee?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NlpPayeeConfirmationDataDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
