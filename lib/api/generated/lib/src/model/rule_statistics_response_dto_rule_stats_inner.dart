//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_statistics_response_dto_rule_stats_inner.g.dart';

/// RuleStatisticsResponseDtoRuleStatsInner
///
/// Properties:
/// * [ruleId]
/// * [ruleName]
/// * [matchCount]
/// * [averageConfidence]
@BuiltValue()
abstract class RuleStatisticsResponseDtoRuleStatsInner
    implements
        Built<RuleStatisticsResponseDtoRuleStatsInner,
            RuleStatisticsResponseDtoRuleStatsInnerBuilder> {
  @BuiltValueField(wireName: r'ruleId')
  String? get ruleId;

  @BuiltValueField(wireName: r'ruleName')
  String? get ruleName;

  @BuiltValueField(wireName: r'matchCount')
  num? get matchCount;

  @BuiltValueField(wireName: r'averageConfidence')
  num? get averageConfidence;

  RuleStatisticsResponseDtoRuleStatsInner._();

  factory RuleStatisticsResponseDtoRuleStatsInner(
          [void updates(RuleStatisticsResponseDtoRuleStatsInnerBuilder b)]) =
      _$RuleStatisticsResponseDtoRuleStatsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleStatisticsResponseDtoRuleStatsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleStatisticsResponseDtoRuleStatsInner> get serializer =>
      _$RuleStatisticsResponseDtoRuleStatsInnerSerializer();
}

class _$RuleStatisticsResponseDtoRuleStatsInnerSerializer
    implements PrimitiveSerializer<RuleStatisticsResponseDtoRuleStatsInner> {
  @override
  final Iterable<Type> types = const [
    RuleStatisticsResponseDtoRuleStatsInner,
    _$RuleStatisticsResponseDtoRuleStatsInner
  ];

  @override
  final String wireName = r'RuleStatisticsResponseDtoRuleStatsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleStatisticsResponseDtoRuleStatsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ruleId != null) {
      yield r'ruleId';
      yield serializers.serialize(
        object.ruleId,
        specifiedType: const FullType(String),
      );
    }
    if (object.ruleName != null) {
      yield r'ruleName';
      yield serializers.serialize(
        object.ruleName,
        specifiedType: const FullType(String),
      );
    }
    if (object.matchCount != null) {
      yield r'matchCount';
      yield serializers.serialize(
        object.matchCount,
        specifiedType: const FullType(num),
      );
    }
    if (object.averageConfidence != null) {
      yield r'averageConfidence';
      yield serializers.serialize(
        object.averageConfidence,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleStatisticsResponseDtoRuleStatsInner object, {
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
    required RuleStatisticsResponseDtoRuleStatsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ruleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ruleId = valueDes;
          break;
        case r'ruleName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ruleName = valueDes;
          break;
        case r'matchCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.matchCount = valueDes;
          break;
        case r'averageConfidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.averageConfidence = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuleStatisticsResponseDtoRuleStatsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleStatisticsResponseDtoRuleStatsInnerBuilder();
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
