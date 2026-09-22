//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nlp_rule_confirmation_data_dto_alternatives_inner.g.dart';

/// NlpRuleConfirmationDataDtoAlternativesInner
///
/// Properties:
/// * [ruleId] 
/// * [ruleName] 
/// * [confidence] 
@BuiltValue()
abstract class NlpRuleConfirmationDataDtoAlternativesInner implements Built<NlpRuleConfirmationDataDtoAlternativesInner, NlpRuleConfirmationDataDtoAlternativesInnerBuilder> {
  @BuiltValueField(wireName: r'ruleId')
  String? get ruleId;

  @BuiltValueField(wireName: r'ruleName')
  String? get ruleName;

  @BuiltValueField(wireName: r'confidence')
  num? get confidence;

  NlpRuleConfirmationDataDtoAlternativesInner._();

  factory NlpRuleConfirmationDataDtoAlternativesInner([void updates(NlpRuleConfirmationDataDtoAlternativesInnerBuilder b)]) = _$NlpRuleConfirmationDataDtoAlternativesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NlpRuleConfirmationDataDtoAlternativesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NlpRuleConfirmationDataDtoAlternativesInner> get serializer => _$NlpRuleConfirmationDataDtoAlternativesInnerSerializer();
}

class _$NlpRuleConfirmationDataDtoAlternativesInnerSerializer implements PrimitiveSerializer<NlpRuleConfirmationDataDtoAlternativesInner> {
  @override
  final Iterable<Type> types = const [NlpRuleConfirmationDataDtoAlternativesInner, _$NlpRuleConfirmationDataDtoAlternativesInner];

  @override
  final String wireName = r'NlpRuleConfirmationDataDtoAlternativesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NlpRuleConfirmationDataDtoAlternativesInner object, {
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
    if (object.confidence != null) {
      yield r'confidence';
      yield serializers.serialize(
        object.confidence,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NlpRuleConfirmationDataDtoAlternativesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NlpRuleConfirmationDataDtoAlternativesInnerBuilder result,
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
        case r'confidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.confidence = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NlpRuleConfirmationDataDtoAlternativesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NlpRuleConfirmationDataDtoAlternativesInnerBuilder();
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

