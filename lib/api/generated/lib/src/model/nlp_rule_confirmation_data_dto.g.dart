// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nlp_rule_confirmation_data_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NlpRuleConfirmationDataDto extends NlpRuleConfirmationDataDto {
  @override
  final num confidence;
  @override
  final JsonObject matchedRule;
  @override
  final JsonObject suggestedAccounts;
  @override
  final BuiltList<dynamic> alternatives;
  @override
  final BuiltList<String> reasons;

  factory _$NlpRuleConfirmationDataDto(
          [void Function(NlpRuleConfirmationDataDtoBuilder)? updates]) =>
      (new NlpRuleConfirmationDataDtoBuilder()..update(updates))._build();

  _$NlpRuleConfirmationDataDto._(
      {required this.confidence,
      required this.matchedRule,
      required this.suggestedAccounts,
      required this.alternatives,
      required this.reasons})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        confidence, r'NlpRuleConfirmationDataDto', 'confidence');
    BuiltValueNullFieldError.checkNotNull(
        matchedRule, r'NlpRuleConfirmationDataDto', 'matchedRule');
    BuiltValueNullFieldError.checkNotNull(
        suggestedAccounts, r'NlpRuleConfirmationDataDto', 'suggestedAccounts');
    BuiltValueNullFieldError.checkNotNull(
        alternatives, r'NlpRuleConfirmationDataDto', 'alternatives');
    BuiltValueNullFieldError.checkNotNull(
        reasons, r'NlpRuleConfirmationDataDto', 'reasons');
  }

  @override
  NlpRuleConfirmationDataDto rebuild(
          void Function(NlpRuleConfirmationDataDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NlpRuleConfirmationDataDtoBuilder toBuilder() =>
      new NlpRuleConfirmationDataDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NlpRuleConfirmationDataDto &&
        confidence == other.confidence &&
        matchedRule == other.matchedRule &&
        suggestedAccounts == other.suggestedAccounts &&
        alternatives == other.alternatives &&
        reasons == other.reasons;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, matchedRule.hashCode);
    _$hash = $jc(_$hash, suggestedAccounts.hashCode);
    _$hash = $jc(_$hash, alternatives.hashCode);
    _$hash = $jc(_$hash, reasons.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NlpRuleConfirmationDataDto')
          ..add('confidence', confidence)
          ..add('matchedRule', matchedRule)
          ..add('suggestedAccounts', suggestedAccounts)
          ..add('alternatives', alternatives)
          ..add('reasons', reasons))
        .toString();
  }
}

class NlpRuleConfirmationDataDtoBuilder
    implements
        Builder<NlpRuleConfirmationDataDto, NlpRuleConfirmationDataDtoBuilder> {
  _$NlpRuleConfirmationDataDto? _$v;

  num? _confidence;
  num? get confidence => _$this._confidence;
  set confidence(num? confidence) => _$this._confidence = confidence;

  JsonObject? _matchedRule;
  JsonObject? get matchedRule => _$this._matchedRule;
  set matchedRule(JsonObject? matchedRule) => _$this._matchedRule = matchedRule;

  JsonObject? _suggestedAccounts;
  JsonObject? get suggestedAccounts => _$this._suggestedAccounts;
  set suggestedAccounts(JsonObject? suggestedAccounts) =>
      _$this._suggestedAccounts = suggestedAccounts;

  ListBuilder<dynamic>? _alternatives;
  ListBuilder<dynamic> get alternatives =>
      _$this._alternatives ??= new ListBuilder<dynamic>();
  set alternatives(ListBuilder<dynamic>? alternatives) =>
      _$this._alternatives = alternatives;

  ListBuilder<String>? _reasons;
  ListBuilder<String> get reasons =>
      _$this._reasons ??= new ListBuilder<String>();
  set reasons(ListBuilder<String>? reasons) => _$this._reasons = reasons;

  NlpRuleConfirmationDataDtoBuilder() {
    NlpRuleConfirmationDataDto._defaults(this);
  }

  NlpRuleConfirmationDataDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _confidence = $v.confidence;
      _matchedRule = $v.matchedRule;
      _suggestedAccounts = $v.suggestedAccounts;
      _alternatives = $v.alternatives.toBuilder();
      _reasons = $v.reasons.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NlpRuleConfirmationDataDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NlpRuleConfirmationDataDto;
  }

  @override
  void update(void Function(NlpRuleConfirmationDataDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NlpRuleConfirmationDataDto build() => _build();

  _$NlpRuleConfirmationDataDto _build() {
    _$NlpRuleConfirmationDataDto _$result;
    try {
      _$result = _$v ??
          new _$NlpRuleConfirmationDataDto._(
              confidence: BuiltValueNullFieldError.checkNotNull(
                  confidence, r'NlpRuleConfirmationDataDto', 'confidence'),
              matchedRule: BuiltValueNullFieldError.checkNotNull(
                  matchedRule, r'NlpRuleConfirmationDataDto', 'matchedRule'),
              suggestedAccounts: BuiltValueNullFieldError.checkNotNull(
                  suggestedAccounts,
                  r'NlpRuleConfirmationDataDto',
                  'suggestedAccounts'),
              alternatives: alternatives.build(),
              reasons: reasons.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'alternatives';
        alternatives.build();
        _$failedField = 'reasons';
        reasons.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NlpRuleConfirmationDataDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
