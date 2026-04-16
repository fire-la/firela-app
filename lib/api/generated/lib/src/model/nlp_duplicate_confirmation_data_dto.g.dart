// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nlp_duplicate_confirmation_data_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NlpDuplicateConfirmationDataDto
    extends NlpDuplicateConfirmationDataDto {
  @override
  final num confidence;
  @override
  final NlpSourceTransactionDto sourceTransaction;
  @override
  final NlpTargetTransactionDto targetTransaction;
  @override
  final NlpSimilarityDto similarity;
  @override
  final BuiltList<String> reasons;

  factory _$NlpDuplicateConfirmationDataDto(
          [void Function(NlpDuplicateConfirmationDataDtoBuilder)? updates]) =>
      (new NlpDuplicateConfirmationDataDtoBuilder()..update(updates))._build();

  _$NlpDuplicateConfirmationDataDto._(
      {required this.confidence,
      required this.sourceTransaction,
      required this.targetTransaction,
      required this.similarity,
      required this.reasons})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        confidence, r'NlpDuplicateConfirmationDataDto', 'confidence');
    BuiltValueNullFieldError.checkNotNull(sourceTransaction,
        r'NlpDuplicateConfirmationDataDto', 'sourceTransaction');
    BuiltValueNullFieldError.checkNotNull(targetTransaction,
        r'NlpDuplicateConfirmationDataDto', 'targetTransaction');
    BuiltValueNullFieldError.checkNotNull(
        similarity, r'NlpDuplicateConfirmationDataDto', 'similarity');
    BuiltValueNullFieldError.checkNotNull(
        reasons, r'NlpDuplicateConfirmationDataDto', 'reasons');
  }

  @override
  NlpDuplicateConfirmationDataDto rebuild(
          void Function(NlpDuplicateConfirmationDataDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NlpDuplicateConfirmationDataDtoBuilder toBuilder() =>
      new NlpDuplicateConfirmationDataDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NlpDuplicateConfirmationDataDto &&
        confidence == other.confidence &&
        sourceTransaction == other.sourceTransaction &&
        targetTransaction == other.targetTransaction &&
        similarity == other.similarity &&
        reasons == other.reasons;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, sourceTransaction.hashCode);
    _$hash = $jc(_$hash, targetTransaction.hashCode);
    _$hash = $jc(_$hash, similarity.hashCode);
    _$hash = $jc(_$hash, reasons.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NlpDuplicateConfirmationDataDto')
          ..add('confidence', confidence)
          ..add('sourceTransaction', sourceTransaction)
          ..add('targetTransaction', targetTransaction)
          ..add('similarity', similarity)
          ..add('reasons', reasons))
        .toString();
  }
}

class NlpDuplicateConfirmationDataDtoBuilder
    implements
        Builder<NlpDuplicateConfirmationDataDto,
            NlpDuplicateConfirmationDataDtoBuilder> {
  _$NlpDuplicateConfirmationDataDto? _$v;

  num? _confidence;
  num? get confidence => _$this._confidence;
  set confidence(num? confidence) => _$this._confidence = confidence;

  NlpSourceTransactionDtoBuilder? _sourceTransaction;
  NlpSourceTransactionDtoBuilder get sourceTransaction =>
      _$this._sourceTransaction ??= new NlpSourceTransactionDtoBuilder();
  set sourceTransaction(NlpSourceTransactionDtoBuilder? sourceTransaction) =>
      _$this._sourceTransaction = sourceTransaction;

  NlpTargetTransactionDtoBuilder? _targetTransaction;
  NlpTargetTransactionDtoBuilder get targetTransaction =>
      _$this._targetTransaction ??= new NlpTargetTransactionDtoBuilder();
  set targetTransaction(NlpTargetTransactionDtoBuilder? targetTransaction) =>
      _$this._targetTransaction = targetTransaction;

  NlpSimilarityDtoBuilder? _similarity;
  NlpSimilarityDtoBuilder get similarity =>
      _$this._similarity ??= new NlpSimilarityDtoBuilder();
  set similarity(NlpSimilarityDtoBuilder? similarity) =>
      _$this._similarity = similarity;

  ListBuilder<String>? _reasons;
  ListBuilder<String> get reasons =>
      _$this._reasons ??= new ListBuilder<String>();
  set reasons(ListBuilder<String>? reasons) => _$this._reasons = reasons;

  NlpDuplicateConfirmationDataDtoBuilder() {
    NlpDuplicateConfirmationDataDto._defaults(this);
  }

  NlpDuplicateConfirmationDataDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _confidence = $v.confidence;
      _sourceTransaction = $v.sourceTransaction.toBuilder();
      _targetTransaction = $v.targetTransaction.toBuilder();
      _similarity = $v.similarity.toBuilder();
      _reasons = $v.reasons.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NlpDuplicateConfirmationDataDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NlpDuplicateConfirmationDataDto;
  }

  @override
  void update(void Function(NlpDuplicateConfirmationDataDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NlpDuplicateConfirmationDataDto build() => _build();

  _$NlpDuplicateConfirmationDataDto _build() {
    _$NlpDuplicateConfirmationDataDto _$result;
    try {
      _$result = _$v ??
          new _$NlpDuplicateConfirmationDataDto._(
              confidence: BuiltValueNullFieldError.checkNotNull(
                  confidence, r'NlpDuplicateConfirmationDataDto', 'confidence'),
              sourceTransaction: sourceTransaction.build(),
              targetTransaction: targetTransaction.build(),
              similarity: similarity.build(),
              reasons: reasons.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sourceTransaction';
        sourceTransaction.build();
        _$failedField = 'targetTransaction';
        targetTransaction.build();
        _$failedField = 'similarity';
        similarity.build();
        _$failedField = 'reasons';
        reasons.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NlpDuplicateConfirmationDataDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
