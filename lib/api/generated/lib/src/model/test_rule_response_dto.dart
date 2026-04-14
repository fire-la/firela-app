//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'test_rule_response_dto.g.dart';

/// TestRuleResponseDto
///
/// Properties:
/// * [ruleId] - Rule ID that was tested
/// * [matches] - Whether the rule matched the test data
/// * [confidence] - Match confidence score (0-1)
/// * [matchDetails] - Details of which fields matched
@BuiltValue()
abstract class TestRuleResponseDto
    implements Built<TestRuleResponseDto, TestRuleResponseDtoBuilder> {
  /// Rule ID that was tested
  @BuiltValueField(wireName: r'ruleId')
  String get ruleId;

  /// Whether the rule matched the test data
  @BuiltValueField(wireName: r'matches')
  bool get matches;

  /// Match confidence score (0-1)
  @BuiltValueField(wireName: r'confidence')
  num get confidence;

  /// Details of which fields matched
  @BuiltValueField(wireName: r'matchDetails')
  JsonObject get matchDetails;

  TestRuleResponseDto._();

  factory TestRuleResponseDto([void updates(TestRuleResponseDtoBuilder b)]) =
      _$TestRuleResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TestRuleResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TestRuleResponseDto> get serializer =>
      _$TestRuleResponseDtoSerializer();
}

class _$TestRuleResponseDtoSerializer
    implements PrimitiveSerializer<TestRuleResponseDto> {
  @override
  final Iterable<Type> types = const [
    TestRuleResponseDto,
    _$TestRuleResponseDto
  ];

  @override
  final String wireName = r'TestRuleResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TestRuleResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ruleId';
    yield serializers.serialize(
      object.ruleId,
      specifiedType: const FullType(String),
    );
    yield r'matches';
    yield serializers.serialize(
      object.matches,
      specifiedType: const FullType(bool),
    );
    yield r'confidence';
    yield serializers.serialize(
      object.confidence,
      specifiedType: const FullType(num),
    );
    yield r'matchDetails';
    yield serializers.serialize(
      object.matchDetails,
      specifiedType: const FullType(JsonObject),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TestRuleResponseDto object, {
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
    required TestRuleResponseDtoBuilder result,
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
        case r'matches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.matches = valueDes;
          break;
        case r'confidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.confidence = valueDes;
          break;
        case r'matchDetails':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.matchDetails = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TestRuleResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestRuleResponseDtoBuilder();
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
