//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nlp_similarity_dto.g.dart';

/// NlpSimilarityDto
///
/// Properties:
/// * [dateMatch] - Whether dates match
/// * [dateDiff] - Date difference in days
/// * [amountMatch] - Whether amounts match
/// * [amountDiff] - Amount difference as decimal string
/// * [payeeMatch] - Whether payees match
/// * [payeeSimilarity] - Payee similarity score (0-1)
/// * [accountOverlap] - Account overlap score (0-1)
@BuiltValue()
abstract class NlpSimilarityDto
    implements Built<NlpSimilarityDto, NlpSimilarityDtoBuilder> {
  /// Whether dates match
  @BuiltValueField(wireName: r'dateMatch')
  bool get dateMatch;

  /// Date difference in days
  @BuiltValueField(wireName: r'dateDiff')
  num get dateDiff;

  /// Whether amounts match
  @BuiltValueField(wireName: r'amountMatch')
  bool get amountMatch;

  /// Amount difference as decimal string
  @BuiltValueField(wireName: r'amountDiff')
  String get amountDiff;

  /// Whether payees match
  @BuiltValueField(wireName: r'payeeMatch')
  bool get payeeMatch;

  /// Payee similarity score (0-1)
  @BuiltValueField(wireName: r'payeeSimilarity')
  num get payeeSimilarity;

  /// Account overlap score (0-1)
  @BuiltValueField(wireName: r'accountOverlap')
  num get accountOverlap;

  NlpSimilarityDto._();

  factory NlpSimilarityDto([void updates(NlpSimilarityDtoBuilder b)]) =
      _$NlpSimilarityDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NlpSimilarityDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NlpSimilarityDto> get serializer =>
      _$NlpSimilarityDtoSerializer();
}

class _$NlpSimilarityDtoSerializer
    implements PrimitiveSerializer<NlpSimilarityDto> {
  @override
  final Iterable<Type> types = const [NlpSimilarityDto, _$NlpSimilarityDto];

  @override
  final String wireName = r'NlpSimilarityDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NlpSimilarityDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'dateMatch';
    yield serializers.serialize(
      object.dateMatch,
      specifiedType: const FullType(bool),
    );
    yield r'dateDiff';
    yield serializers.serialize(
      object.dateDiff,
      specifiedType: const FullType(num),
    );
    yield r'amountMatch';
    yield serializers.serialize(
      object.amountMatch,
      specifiedType: const FullType(bool),
    );
    yield r'amountDiff';
    yield serializers.serialize(
      object.amountDiff,
      specifiedType: const FullType(String),
    );
    yield r'payeeMatch';
    yield serializers.serialize(
      object.payeeMatch,
      specifiedType: const FullType(bool),
    );
    yield r'payeeSimilarity';
    yield serializers.serialize(
      object.payeeSimilarity,
      specifiedType: const FullType(num),
    );
    yield r'accountOverlap';
    yield serializers.serialize(
      object.accountOverlap,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NlpSimilarityDto object, {
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
    required NlpSimilarityDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dateMatch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.dateMatch = valueDes;
          break;
        case r'dateDiff':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.dateDiff = valueDes;
          break;
        case r'amountMatch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.amountMatch = valueDes;
          break;
        case r'amountDiff':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.amountDiff = valueDes;
          break;
        case r'payeeMatch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.payeeMatch = valueDes;
          break;
        case r'payeeSimilarity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.payeeSimilarity = valueDes;
          break;
        case r'accountOverlap':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.accountOverlap = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NlpSimilarityDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NlpSimilarityDtoBuilder();
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
