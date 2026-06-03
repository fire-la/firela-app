// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_rule_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestRuleResponseDto extends TestRuleResponseDto {
  @override
  final String ruleId;
  @override
  final bool matches;
  @override
  final num confidence;
  @override
  final JsonObject matchDetails;

  factory _$TestRuleResponseDto(
          [void Function(TestRuleResponseDtoBuilder)? updates]) =>
      (new TestRuleResponseDtoBuilder()..update(updates))._build();

  _$TestRuleResponseDto._(
      {required this.ruleId,
      required this.matches,
      required this.confidence,
      required this.matchDetails})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        ruleId, r'TestRuleResponseDto', 'ruleId');
    BuiltValueNullFieldError.checkNotNull(
        matches, r'TestRuleResponseDto', 'matches');
    BuiltValueNullFieldError.checkNotNull(
        confidence, r'TestRuleResponseDto', 'confidence');
    BuiltValueNullFieldError.checkNotNull(
        matchDetails, r'TestRuleResponseDto', 'matchDetails');
  }

  @override
  TestRuleResponseDto rebuild(
          void Function(TestRuleResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestRuleResponseDtoBuilder toBuilder() =>
      new TestRuleResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestRuleResponseDto &&
        ruleId == other.ruleId &&
        matches == other.matches &&
        confidence == other.confidence &&
        matchDetails == other.matchDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, matches.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, matchDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TestRuleResponseDto')
          ..add('ruleId', ruleId)
          ..add('matches', matches)
          ..add('confidence', confidence)
          ..add('matchDetails', matchDetails))
        .toString();
  }
}

class TestRuleResponseDtoBuilder
    implements Builder<TestRuleResponseDto, TestRuleResponseDtoBuilder> {
  _$TestRuleResponseDto? _$v;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  bool? _matches;
  bool? get matches => _$this._matches;
  set matches(bool? matches) => _$this._matches = matches;

  num? _confidence;
  num? get confidence => _$this._confidence;
  set confidence(num? confidence) => _$this._confidence = confidence;

  JsonObject? _matchDetails;
  JsonObject? get matchDetails => _$this._matchDetails;
  set matchDetails(JsonObject? matchDetails) =>
      _$this._matchDetails = matchDetails;

  TestRuleResponseDtoBuilder() {
    TestRuleResponseDto._defaults(this);
  }

  TestRuleResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ruleId = $v.ruleId;
      _matches = $v.matches;
      _confidence = $v.confidence;
      _matchDetails = $v.matchDetails;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestRuleResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestRuleResponseDto;
  }

  @override
  void update(void Function(TestRuleResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestRuleResponseDto build() => _build();

  _$TestRuleResponseDto _build() {
    final _$result = _$v ??
        new _$TestRuleResponseDto._(
            ruleId: BuiltValueNullFieldError.checkNotNull(
                ruleId, r'TestRuleResponseDto', 'ruleId'),
            matches: BuiltValueNullFieldError.checkNotNull(
                matches, r'TestRuleResponseDto', 'matches'),
            confidence: BuiltValueNullFieldError.checkNotNull(
                confidence, r'TestRuleResponseDto', 'confidence'),
            matchDetails: BuiltValueNullFieldError.checkNotNull(
                matchDetails, r'TestRuleResponseDto', 'matchDetails'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
