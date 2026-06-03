//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nlp_rule_confirmation_data_dto.g.dart';

/// NlpRuleConfirmationDataDto
///
/// Properties:
/// * [confidence] - Rule match confidence score (0.5-0.74)
/// * [matchedRule] - Matched rule information
/// * [suggestedAccounts] - Suggested accounts from the rule
/// * [alternatives] - Alternative rules that also match
/// * [reasons] - Human-readable reasons for the match
@BuiltValue()
abstract class NlpRuleConfirmationDataDto
    implements
        Built<NlpRuleConfirmationDataDto, NlpRuleConfirmationDataDtoBuilder> {
  /// Rule match confidence score (0.5-0.74)
  @BuiltValueField(wireName: r'confidence')
  num get confidence;

  /// Matched rule information
  @BuiltValueField(wireName: r'matchedRule')
  JsonObject get matchedRule;

  /// Suggested accounts from the rule
  @BuiltValueField(wireName: r'suggestedAccounts')
  JsonObject get suggestedAccounts;

  /// Alternative rules that also match
  @BuiltValueField(wireName: r'alternatives')
  BuiltList get alternatives;

  /// Human-readable reasons for the match
  @BuiltValueField(wireName: r'reasons')
  BuiltList<String> get reasons;

  NlpRuleConfirmationDataDto._();

  factory NlpRuleConfirmationDataDto(
          [void updates(NlpRuleConfirmationDataDtoBuilder b)]) =
      _$NlpRuleConfirmationDataDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NlpRuleConfirmationDataDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NlpRuleConfirmationDataDto> get serializer =>
      _$NlpRuleConfirmationDataDtoSerializer();
}

class _$NlpRuleConfirmationDataDtoSerializer
    implements PrimitiveSerializer<NlpRuleConfirmationDataDto> {
  @override
  final Iterable<Type> types = const [
    NlpRuleConfirmationDataDto,
    _$NlpRuleConfirmationDataDto
  ];

  @override
  final String wireName = r'NlpRuleConfirmationDataDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NlpRuleConfirmationDataDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'confidence';
    yield serializers.serialize(
      object.confidence,
      specifiedType: const FullType(num),
    );
    yield r'matchedRule';
    yield serializers.serialize(
      object.matchedRule,
      specifiedType: const FullType(JsonObject),
    );
    yield r'suggestedAccounts';
    yield serializers.serialize(
      object.suggestedAccounts,
      specifiedType: const FullType(JsonObject),
    );
    yield r'alternatives';
    yield serializers.serialize(
      object.alternatives,
      specifiedType: const FullType(BuiltList),
    );
    yield r'reasons';
    yield serializers.serialize(
      object.reasons,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NlpRuleConfirmationDataDto object, {
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
    required NlpRuleConfirmationDataDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'confidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.confidence = valueDes;
          break;
        case r'matchedRule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.matchedRule = valueDes;
          break;
        case r'suggestedAccounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.suggestedAccounts = valueDes;
          break;
        case r'alternatives':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList),
          ) as BuiltList;
          result.alternatives.replace(valueDes);
          break;
        case r'reasons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.reasons.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NlpRuleConfirmationDataDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NlpRuleConfirmationDataDtoBuilder();
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
