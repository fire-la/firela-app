//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/nlp_similarity_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/nlp_target_transaction_dto.dart';
import 'package:firela_api/src/model/nlp_source_transaction_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nlp_duplicate_confirmation_data_dto.g.dart';

/// NlpDuplicateConfirmationDataDto
///
/// Properties:
/// * [confidence] - Duplicate detection confidence score (0.5-0.89)
/// * [sourceTransaction]
/// * [targetTransaction]
/// * [similarity]
/// * [reasons] - Human-readable reasons for duplicate detection
@BuiltValue()
abstract class NlpDuplicateConfirmationDataDto
    implements
        Built<NlpDuplicateConfirmationDataDto,
            NlpDuplicateConfirmationDataDtoBuilder> {
  /// Duplicate detection confidence score (0.5-0.89)
  @BuiltValueField(wireName: r'confidence')
  num get confidence;

  @BuiltValueField(wireName: r'sourceTransaction')
  NlpSourceTransactionDto get sourceTransaction;

  @BuiltValueField(wireName: r'targetTransaction')
  NlpTargetTransactionDto get targetTransaction;

  @BuiltValueField(wireName: r'similarity')
  NlpSimilarityDto get similarity;

  /// Human-readable reasons for duplicate detection
  @BuiltValueField(wireName: r'reasons')
  BuiltList<String> get reasons;

  NlpDuplicateConfirmationDataDto._();

  factory NlpDuplicateConfirmationDataDto(
          [void updates(NlpDuplicateConfirmationDataDtoBuilder b)]) =
      _$NlpDuplicateConfirmationDataDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NlpDuplicateConfirmationDataDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NlpDuplicateConfirmationDataDto> get serializer =>
      _$NlpDuplicateConfirmationDataDtoSerializer();
}

class _$NlpDuplicateConfirmationDataDtoSerializer
    implements PrimitiveSerializer<NlpDuplicateConfirmationDataDto> {
  @override
  final Iterable<Type> types = const [
    NlpDuplicateConfirmationDataDto,
    _$NlpDuplicateConfirmationDataDto
  ];

  @override
  final String wireName = r'NlpDuplicateConfirmationDataDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NlpDuplicateConfirmationDataDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'confidence';
    yield serializers.serialize(
      object.confidence,
      specifiedType: const FullType(num),
    );
    yield r'sourceTransaction';
    yield serializers.serialize(
      object.sourceTransaction,
      specifiedType: const FullType(NlpSourceTransactionDto),
    );
    yield r'targetTransaction';
    yield serializers.serialize(
      object.targetTransaction,
      specifiedType: const FullType(NlpTargetTransactionDto),
    );
    yield r'similarity';
    yield serializers.serialize(
      object.similarity,
      specifiedType: const FullType(NlpSimilarityDto),
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
    NlpDuplicateConfirmationDataDto object, {
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
    required NlpDuplicateConfirmationDataDtoBuilder result,
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
        case r'sourceTransaction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NlpSourceTransactionDto),
          ) as NlpSourceTransactionDto;
          result.sourceTransaction.replace(valueDes);
          break;
        case r'targetTransaction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NlpTargetTransactionDto),
          ) as NlpTargetTransactionDto;
          result.targetTransaction.replace(valueDes);
          break;
        case r'similarity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NlpSimilarityDto),
          ) as NlpSimilarityDto;
          result.similarity.replace(valueDes);
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
  NlpDuplicateConfirmationDataDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NlpDuplicateConfirmationDataDtoBuilder();
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
