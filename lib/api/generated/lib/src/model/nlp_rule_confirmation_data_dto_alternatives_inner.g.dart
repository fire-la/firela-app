// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nlp_rule_confirmation_data_dto_alternatives_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NlpRuleConfirmationDataDtoAlternativesInner
    extends NlpRuleConfirmationDataDtoAlternativesInner {
  @override
  final String? ruleId;
  @override
  final String? ruleName;
  @override
  final num? confidence;

  factory _$NlpRuleConfirmationDataDtoAlternativesInner(
          [void Function(NlpRuleConfirmationDataDtoAlternativesInnerBuilder)?
              updates]) =>
      (new NlpRuleConfirmationDataDtoAlternativesInnerBuilder()
            ..update(updates))
          ._build();

  _$NlpRuleConfirmationDataDtoAlternativesInner._(
      {this.ruleId, this.ruleName, this.confidence})
      : super._();

  @override
  NlpRuleConfirmationDataDtoAlternativesInner rebuild(
          void Function(NlpRuleConfirmationDataDtoAlternativesInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NlpRuleConfirmationDataDtoAlternativesInnerBuilder toBuilder() =>
      new NlpRuleConfirmationDataDtoAlternativesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NlpRuleConfirmationDataDtoAlternativesInner &&
        ruleId == other.ruleId &&
        ruleName == other.ruleName &&
        confidence == other.confidence;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, ruleName.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'NlpRuleConfirmationDataDtoAlternativesInner')
          ..add('ruleId', ruleId)
          ..add('ruleName', ruleName)
          ..add('confidence', confidence))
        .toString();
  }
}

class NlpRuleConfirmationDataDtoAlternativesInnerBuilder
    implements
        Builder<NlpRuleConfirmationDataDtoAlternativesInner,
            NlpRuleConfirmationDataDtoAlternativesInnerBuilder> {
  _$NlpRuleConfirmationDataDtoAlternativesInner? _$v;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  String? _ruleName;
  String? get ruleName => _$this._ruleName;
  set ruleName(String? ruleName) => _$this._ruleName = ruleName;

  num? _confidence;
  num? get confidence => _$this._confidence;
  set confidence(num? confidence) => _$this._confidence = confidence;

  NlpRuleConfirmationDataDtoAlternativesInnerBuilder() {
    NlpRuleConfirmationDataDtoAlternativesInner._defaults(this);
  }

  NlpRuleConfirmationDataDtoAlternativesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ruleId = $v.ruleId;
      _ruleName = $v.ruleName;
      _confidence = $v.confidence;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NlpRuleConfirmationDataDtoAlternativesInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NlpRuleConfirmationDataDtoAlternativesInner;
  }

  @override
  void update(
      void Function(NlpRuleConfirmationDataDtoAlternativesInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  NlpRuleConfirmationDataDtoAlternativesInner build() => _build();

  _$NlpRuleConfirmationDataDtoAlternativesInner _build() {
    final _$result = _$v ??
        new _$NlpRuleConfirmationDataDtoAlternativesInner._(
            ruleId: ruleId, ruleName: ruleName, confidence: confidence);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
