// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_statistics_response_dto_rule_stats_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleStatisticsResponseDtoRuleStatsInner
    extends RuleStatisticsResponseDtoRuleStatsInner {
  @override
  final String? ruleId;
  @override
  final String? ruleName;
  @override
  final num? matchCount;
  @override
  final num? averageConfidence;

  factory _$RuleStatisticsResponseDtoRuleStatsInner(
          [void Function(RuleStatisticsResponseDtoRuleStatsInnerBuilder)?
              updates]) =>
      (new RuleStatisticsResponseDtoRuleStatsInnerBuilder()..update(updates))
          ._build();

  _$RuleStatisticsResponseDtoRuleStatsInner._(
      {this.ruleId, this.ruleName, this.matchCount, this.averageConfidence})
      : super._();

  @override
  RuleStatisticsResponseDtoRuleStatsInner rebuild(
          void Function(RuleStatisticsResponseDtoRuleStatsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RuleStatisticsResponseDtoRuleStatsInnerBuilder toBuilder() =>
      new RuleStatisticsResponseDtoRuleStatsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleStatisticsResponseDtoRuleStatsInner &&
        ruleId == other.ruleId &&
        ruleName == other.ruleName &&
        matchCount == other.matchCount &&
        averageConfidence == other.averageConfidence;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, ruleName.hashCode);
    _$hash = $jc(_$hash, matchCount.hashCode);
    _$hash = $jc(_$hash, averageConfidence.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'RuleStatisticsResponseDtoRuleStatsInner')
          ..add('ruleId', ruleId)
          ..add('ruleName', ruleName)
          ..add('matchCount', matchCount)
          ..add('averageConfidence', averageConfidence))
        .toString();
  }
}

class RuleStatisticsResponseDtoRuleStatsInnerBuilder
    implements
        Builder<RuleStatisticsResponseDtoRuleStatsInner,
            RuleStatisticsResponseDtoRuleStatsInnerBuilder> {
  _$RuleStatisticsResponseDtoRuleStatsInner? _$v;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  String? _ruleName;
  String? get ruleName => _$this._ruleName;
  set ruleName(String? ruleName) => _$this._ruleName = ruleName;

  num? _matchCount;
  num? get matchCount => _$this._matchCount;
  set matchCount(num? matchCount) => _$this._matchCount = matchCount;

  num? _averageConfidence;
  num? get averageConfidence => _$this._averageConfidence;
  set averageConfidence(num? averageConfidence) =>
      _$this._averageConfidence = averageConfidence;

  RuleStatisticsResponseDtoRuleStatsInnerBuilder() {
    RuleStatisticsResponseDtoRuleStatsInner._defaults(this);
  }

  RuleStatisticsResponseDtoRuleStatsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ruleId = $v.ruleId;
      _ruleName = $v.ruleName;
      _matchCount = $v.matchCount;
      _averageConfidence = $v.averageConfidence;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleStatisticsResponseDtoRuleStatsInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RuleStatisticsResponseDtoRuleStatsInner;
  }

  @override
  void update(
      void Function(RuleStatisticsResponseDtoRuleStatsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleStatisticsResponseDtoRuleStatsInner build() => _build();

  _$RuleStatisticsResponseDtoRuleStatsInner _build() {
    final _$result = _$v ??
        new _$RuleStatisticsResponseDtoRuleStatsInner._(
            ruleId: ruleId,
            ruleName: ruleName,
            matchCount: matchCount,
            averageConfidence: averageConfidence);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
