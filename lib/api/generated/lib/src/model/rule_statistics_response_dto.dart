//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/rule_statistics_response_dto_rule_stats_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_statistics_response_dto.g.dart';

/// RuleStatisticsResponseDto
///
/// Properties:
/// * [period] - Statistics time period
/// * [totalRules] - Total number of rules
/// * [rulesWithMatches] - Number of rules with at least one match
/// * [totalMatches] - Total number of matches across all rules
/// * [averageConfidence] - Average confidence score across all matches
/// * [ruleStats] - Per-rule statistics
@BuiltValue()
abstract class RuleStatisticsResponseDto
    implements
        Built<RuleStatisticsResponseDto, RuleStatisticsResponseDtoBuilder> {
  /// Statistics time period
  @BuiltValueField(wireName: r'period')
  RuleStatisticsResponseDtoPeriodEnum get period;
  // enum periodEnum {  7d,  30d,  90d,  };

  /// Total number of rules
  @BuiltValueField(wireName: r'totalRules')
  num get totalRules;

  /// Number of rules with at least one match
  @BuiltValueField(wireName: r'rulesWithMatches')
  num get rulesWithMatches;

  /// Total number of matches across all rules
  @BuiltValueField(wireName: r'totalMatches')
  num get totalMatches;

  /// Average confidence score across all matches
  @BuiltValueField(wireName: r'averageConfidence')
  num get averageConfidence;

  /// Per-rule statistics
  @BuiltValueField(wireName: r'ruleStats')
  BuiltList<RuleStatisticsResponseDtoRuleStatsInner> get ruleStats;

  RuleStatisticsResponseDto._();

  factory RuleStatisticsResponseDto(
          [void updates(RuleStatisticsResponseDtoBuilder b)]) =
      _$RuleStatisticsResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleStatisticsResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleStatisticsResponseDto> get serializer =>
      _$RuleStatisticsResponseDtoSerializer();
}

class _$RuleStatisticsResponseDtoSerializer
    implements PrimitiveSerializer<RuleStatisticsResponseDto> {
  @override
  final Iterable<Type> types = const [
    RuleStatisticsResponseDto,
    _$RuleStatisticsResponseDto
  ];

  @override
  final String wireName = r'RuleStatisticsResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleStatisticsResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'period';
    yield serializers.serialize(
      object.period,
      specifiedType: const FullType(RuleStatisticsResponseDtoPeriodEnum),
    );
    yield r'totalRules';
    yield serializers.serialize(
      object.totalRules,
      specifiedType: const FullType(num),
    );
    yield r'rulesWithMatches';
    yield serializers.serialize(
      object.rulesWithMatches,
      specifiedType: const FullType(num),
    );
    yield r'totalMatches';
    yield serializers.serialize(
      object.totalMatches,
      specifiedType: const FullType(num),
    );
    yield r'averageConfidence';
    yield serializers.serialize(
      object.averageConfidence,
      specifiedType: const FullType(num),
    );
    yield r'ruleStats';
    yield serializers.serialize(
      object.ruleStats,
      specifiedType: const FullType(
          BuiltList, [FullType(RuleStatisticsResponseDtoRuleStatsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleStatisticsResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RuleStatisticsResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RuleStatisticsResponseDtoPeriodEnum),
          ) as RuleStatisticsResponseDtoPeriodEnum;
          result.period = valueDes;
          break;
        case r'totalRules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalRules = valueDes;
          break;
        case r'rulesWithMatches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.rulesWithMatches = valueDes;
          break;
        case r'totalMatches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalMatches = valueDes;
          break;
        case r'averageConfidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.averageConfidence = valueDes;
          break;
        case r'ruleStats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(RuleStatisticsResponseDtoRuleStatsInner)]),
          ) as BuiltList<RuleStatisticsResponseDtoRuleStatsInner>;
          result.ruleStats.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuleStatisticsResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleStatisticsResponseDtoBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class RuleStatisticsResponseDtoPeriodEnum extends EnumClass {
  /// Statistics time period
  @BuiltValueEnumConst(wireName: r'7d')
  static const RuleStatisticsResponseDtoPeriodEnum n7d =
      _$ruleStatisticsResponseDtoPeriodEnum_n7d;

  /// Statistics time period
  @BuiltValueEnumConst(wireName: r'30d')
  static const RuleStatisticsResponseDtoPeriodEnum n30d =
      _$ruleStatisticsResponseDtoPeriodEnum_n30d;

  /// Statistics time period
  @BuiltValueEnumConst(wireName: r'90d', fallback: true)
  static const RuleStatisticsResponseDtoPeriodEnum n90d =
      _$ruleStatisticsResponseDtoPeriodEnum_n90d;

  static Serializer<RuleStatisticsResponseDtoPeriodEnum> get serializer =>
      _$ruleStatisticsResponseDtoPeriodEnumSerializer;

  const RuleStatisticsResponseDtoPeriodEnum._(String name) : super(name);

  static BuiltSet<RuleStatisticsResponseDtoPeriodEnum> get values =>
      _$ruleStatisticsResponseDtoPeriodEnumValues;
  static RuleStatisticsResponseDtoPeriodEnum valueOf(String name) =>
      _$ruleStatisticsResponseDtoPeriodEnumValueOf(name);
}
