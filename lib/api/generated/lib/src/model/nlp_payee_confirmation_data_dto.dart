//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/nlp_alternative_payee_dto.dart';
import 'package:firela_api/src/model/nlp_payee_confirmation_data_dto_suggested_payee.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nlp_payee_confirmation_data_dto.g.dart';

/// NlpPayeeConfirmationDataDto
///
/// Properties:
/// * [confidence] - Confidence score for the payee match (0-1)
/// * [originalPayee] - Original payee string from user input
/// * [similarity] - Similarity score between original and suggested (0-1)
/// * [alternatives] - Alternative payee options
/// * [reasons] - Human-readable reasons for the match
/// * [suggestedPayee]
@BuiltValue()
abstract class NlpPayeeConfirmationDataDto
    implements
        Built<NlpPayeeConfirmationDataDto, NlpPayeeConfirmationDataDtoBuilder> {
  /// Confidence score for the payee match (0-1)
  @BuiltValueField(wireName: r'confidence')
  num get confidence;

  /// Original payee string from user input
  @BuiltValueField(wireName: r'originalPayee')
  String get originalPayee;

  /// Similarity score between original and suggested (0-1)
  @BuiltValueField(wireName: r'similarity')
  num get similarity;

  /// Alternative payee options
  @BuiltValueField(wireName: r'alternatives')
  BuiltList<NlpAlternativePayeeDto> get alternatives;

  /// Human-readable reasons for the match
  @BuiltValueField(wireName: r'reasons')
  BuiltList<String> get reasons;

  @BuiltValueField(wireName: r'suggestedPayee')
  NlpPayeeConfirmationDataDtoSuggestedPayee? get suggestedPayee;

  NlpPayeeConfirmationDataDto._();

  factory NlpPayeeConfirmationDataDto(
          [void updates(NlpPayeeConfirmationDataDtoBuilder b)]) =
      _$NlpPayeeConfirmationDataDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NlpPayeeConfirmationDataDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NlpPayeeConfirmationDataDto> get serializer =>
      _$NlpPayeeConfirmationDataDtoSerializer();
}

class _$NlpPayeeConfirmationDataDtoSerializer
    implements PrimitiveSerializer<NlpPayeeConfirmationDataDto> {
  @override
  final Iterable<Type> types = const [
    NlpPayeeConfirmationDataDto,
    _$NlpPayeeConfirmationDataDto
  ];

  @override
  final String wireName = r'NlpPayeeConfirmationDataDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NlpPayeeConfirmationDataDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'confidence';
    yield serializers.serialize(
      object.confidence,
      specifiedType: const FullType(num),
    );
    yield r'originalPayee';
    yield serializers.serialize(
      object.originalPayee,
      specifiedType: const FullType(String),
    );
    yield r'similarity';
    yield serializers.serialize(
      object.similarity,
      specifiedType: const FullType(num),
    );
    yield r'alternatives';
    yield serializers.serialize(
      object.alternatives,
      specifiedType:
          const FullType(BuiltList, [FullType(NlpAlternativePayeeDto)]),
    );
    yield r'reasons';
    yield serializers.serialize(
      object.reasons,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.suggestedPayee != null) {
      yield r'suggestedPayee';
      yield serializers.serialize(
        object.suggestedPayee,
        specifiedType:
            const FullType.nullable(NlpPayeeConfirmationDataDtoSuggestedPayee),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NlpPayeeConfirmationDataDto object, {
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
    required NlpPayeeConfirmationDataDtoBuilder result,
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
        case r'originalPayee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.originalPayee = valueDes;
          break;
        case r'similarity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.similarity = valueDes;
          break;
        case r'alternatives':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(NlpAlternativePayeeDto)]),
          ) as BuiltList<NlpAlternativePayeeDto>;
          result.alternatives.replace(valueDes);
          break;
        case r'reasons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.reasons.replace(valueDes);
          break;
        case r'suggestedPayee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                NlpPayeeConfirmationDataDtoSuggestedPayee),
          ) as NlpPayeeConfirmationDataDtoSuggestedPayee?;
          if (valueDes == null) continue;
          result.suggestedPayee.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NlpPayeeConfirmationDataDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NlpPayeeConfirmationDataDtoBuilder();
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
