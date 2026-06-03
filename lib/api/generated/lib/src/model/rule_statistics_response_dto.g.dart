// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_statistics_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RuleStatisticsResponseDtoPeriodEnum
    _$ruleStatisticsResponseDtoPeriodEnum_n7d =
    const RuleStatisticsResponseDtoPeriodEnum._('n7d');
const RuleStatisticsResponseDtoPeriodEnum
    _$ruleStatisticsResponseDtoPeriodEnum_n30d =
    const RuleStatisticsResponseDtoPeriodEnum._('n30d');
const RuleStatisticsResponseDtoPeriodEnum
    _$ruleStatisticsResponseDtoPeriodEnum_n90d =
    const RuleStatisticsResponseDtoPeriodEnum._('n90d');

RuleStatisticsResponseDtoPeriodEnum
    _$ruleStatisticsResponseDtoPeriodEnumValueOf(String name) {
  switch (name) {
    case 'n7d':
      return _$ruleStatisticsResponseDtoPeriodEnum_n7d;
    case 'n30d':
      return _$ruleStatisticsResponseDtoPeriodEnum_n30d;
    case 'n90d':
      return _$ruleStatisticsResponseDtoPeriodEnum_n90d;
    default:
      return _$ruleStatisticsResponseDtoPeriodEnum_n90d;
  }
}

final BuiltSet<RuleStatisticsResponseDtoPeriodEnum>
    _$ruleStatisticsResponseDtoPeriodEnumValues = new BuiltSet<
        RuleStatisticsResponseDtoPeriodEnum>(const <RuleStatisticsResponseDtoPeriodEnum>[
  _$ruleStatisticsResponseDtoPeriodEnum_n7d,
  _$ruleStatisticsResponseDtoPeriodEnum_n30d,
  _$ruleStatisticsResponseDtoPeriodEnum_n90d,
]);

Serializer<RuleStatisticsResponseDtoPeriodEnum>
    _$ruleStatisticsResponseDtoPeriodEnumSerializer =
    new _$RuleStatisticsResponseDtoPeriodEnumSerializer();

class _$RuleStatisticsResponseDtoPeriodEnumSerializer
    implements PrimitiveSerializer<RuleStatisticsResponseDtoPeriodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'n7d': '7d',
    'n30d': '30d',
    'n90d': '90d',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '7d': 'n7d',
    '30d': 'n30d',
    '90d': 'n90d',
  };

  @override
  final Iterable<Type> types = const <Type>[
    RuleStatisticsResponseDtoPeriodEnum
  ];
  @override
  final String wireName = 'RuleStatisticsResponseDtoPeriodEnum';

  @override
  Object serialize(
          Serializers serializers, RuleStatisticsResponseDtoPeriodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RuleStatisticsResponseDtoPeriodEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RuleStatisticsResponseDtoPeriodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RuleStatisticsResponseDto extends RuleStatisticsResponseDto {
  @override
  final RuleStatisticsResponseDtoPeriodEnum period;
  @override
  final num totalRules;
  @override
  final num rulesWithMatches;
  @override
  final num totalMatches;
  @override
  final num averageConfidence;
  @override
  final BuiltList<RuleStatisticsResponseDtoRuleStatsInner> ruleStats;

  factory _$RuleStatisticsResponseDto(
          [void Function(RuleStatisticsResponseDtoBuilder)? updates]) =>
      (new RuleStatisticsResponseDtoBuilder()..update(updates))._build();

  _$RuleStatisticsResponseDto._(
      {required this.period,
      required this.totalRules,
      required this.rulesWithMatches,
      required this.totalMatches,
      required this.averageConfidence,
      required this.ruleStats})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        period, r'RuleStatisticsResponseDto', 'period');
    BuiltValueNullFieldError.checkNotNull(
        totalRules, r'RuleStatisticsResponseDto', 'totalRules');
    BuiltValueNullFieldError.checkNotNull(
        rulesWithMatches, r'RuleStatisticsResponseDto', 'rulesWithMatches');
    BuiltValueNullFieldError.checkNotNull(
        totalMatches, r'RuleStatisticsResponseDto', 'totalMatches');
    BuiltValueNullFieldError.checkNotNull(
        averageConfidence, r'RuleStatisticsResponseDto', 'averageConfidence');
    BuiltValueNullFieldError.checkNotNull(
        ruleStats, r'RuleStatisticsResponseDto', 'ruleStats');
  }

  @override
  RuleStatisticsResponseDto rebuild(
          void Function(RuleStatisticsResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RuleStatisticsResponseDtoBuilder toBuilder() =>
      new RuleStatisticsResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleStatisticsResponseDto &&
        period == other.period &&
        totalRules == other.totalRules &&
        rulesWithMatches == other.rulesWithMatches &&
        totalMatches == other.totalMatches &&
        averageConfidence == other.averageConfidence &&
        ruleStats == other.ruleStats;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, totalRules.hashCode);
    _$hash = $jc(_$hash, rulesWithMatches.hashCode);
    _$hash = $jc(_$hash, totalMatches.hashCode);
    _$hash = $jc(_$hash, averageConfidence.hashCode);
    _$hash = $jc(_$hash, ruleStats.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleStatisticsResponseDto')
          ..add('period', period)
          ..add('totalRules', totalRules)
          ..add('rulesWithMatches', rulesWithMatches)
          ..add('totalMatches', totalMatches)
          ..add('averageConfidence', averageConfidence)
          ..add('ruleStats', ruleStats))
        .toString();
  }
}

class RuleStatisticsResponseDtoBuilder
    implements
        Builder<RuleStatisticsResponseDto, RuleStatisticsResponseDtoBuilder> {
  _$RuleStatisticsResponseDto? _$v;

  RuleStatisticsResponseDtoPeriodEnum? _period;
  RuleStatisticsResponseDtoPeriodEnum? get period => _$this._period;
  set period(RuleStatisticsResponseDtoPeriodEnum? period) =>
      _$this._period = period;

  num? _totalRules;
  num? get totalRules => _$this._totalRules;
  set totalRules(num? totalRules) => _$this._totalRules = totalRules;

  num? _rulesWithMatches;
  num? get rulesWithMatches => _$this._rulesWithMatches;
  set rulesWithMatches(num? rulesWithMatches) =>
      _$this._rulesWithMatches = rulesWithMatches;

  num? _totalMatches;
  num? get totalMatches => _$this._totalMatches;
  set totalMatches(num? totalMatches) => _$this._totalMatches = totalMatches;

  num? _averageConfidence;
  num? get averageConfidence => _$this._averageConfidence;
  set averageConfidence(num? averageConfidence) =>
      _$this._averageConfidence = averageConfidence;

  ListBuilder<RuleStatisticsResponseDtoRuleStatsInner>? _ruleStats;
  ListBuilder<RuleStatisticsResponseDtoRuleStatsInner> get ruleStats =>
      _$this._ruleStats ??=
          new ListBuilder<RuleStatisticsResponseDtoRuleStatsInner>();
  set ruleStats(
          ListBuilder<RuleStatisticsResponseDtoRuleStatsInner>? ruleStats) =>
      _$this._ruleStats = ruleStats;

  RuleStatisticsResponseDtoBuilder() {
    RuleStatisticsResponseDto._defaults(this);
  }

  RuleStatisticsResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _period = $v.period;
      _totalRules = $v.totalRules;
      _rulesWithMatches = $v.rulesWithMatches;
      _totalMatches = $v.totalMatches;
      _averageConfidence = $v.averageConfidence;
      _ruleStats = $v.ruleStats.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleStatisticsResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RuleStatisticsResponseDto;
  }

  @override
  void update(void Function(RuleStatisticsResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleStatisticsResponseDto build() => _build();

  _$RuleStatisticsResponseDto _build() {
    _$RuleStatisticsResponseDto _$result;
    try {
      _$result = _$v ??
          new _$RuleStatisticsResponseDto._(
              period: BuiltValueNullFieldError.checkNotNull(
                  period, r'RuleStatisticsResponseDto', 'period'),
              totalRules: BuiltValueNullFieldError.checkNotNull(
                  totalRules, r'RuleStatisticsResponseDto', 'totalRules'),
              rulesWithMatches: BuiltValueNullFieldError.checkNotNull(
                  rulesWithMatches,
                  r'RuleStatisticsResponseDto',
                  'rulesWithMatches'),
              totalMatches: BuiltValueNullFieldError.checkNotNull(
                  totalMatches, r'RuleStatisticsResponseDto', 'totalMatches'),
              averageConfidence: BuiltValueNullFieldError.checkNotNull(
                  averageConfidence,
                  r'RuleStatisticsResponseDto',
                  'averageConfidence'),
              ruleStats: ruleStats.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ruleStats';
        ruleStats.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RuleStatisticsResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
