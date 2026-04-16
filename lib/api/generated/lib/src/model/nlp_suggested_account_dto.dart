//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nlp_suggested_account_dto.g.dart';

/// NlpSuggestedAccountDto
///
/// Properties:
/// * [account] - Suggested account path
/// * [confidence] - Confidence score for this suggestion (0-1)
@BuiltValue()
abstract class NlpSuggestedAccountDto
    implements Built<NlpSuggestedAccountDto, NlpSuggestedAccountDtoBuilder> {
  /// Suggested account path
  @BuiltValueField(wireName: r'account')
  String get account;

  /// Confidence score for this suggestion (0-1)
  @BuiltValueField(wireName: r'confidence')
  num? get confidence;

  NlpSuggestedAccountDto._();

  factory NlpSuggestedAccountDto(
          [void updates(NlpSuggestedAccountDtoBuilder b)]) =
      _$NlpSuggestedAccountDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NlpSuggestedAccountDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NlpSuggestedAccountDto> get serializer =>
      _$NlpSuggestedAccountDtoSerializer();
}

class _$NlpSuggestedAccountDtoSerializer
    implements PrimitiveSerializer<NlpSuggestedAccountDto> {
  @override
  final Iterable<Type> types = const [
    NlpSuggestedAccountDto,
    _$NlpSuggestedAccountDto
  ];

  @override
  final String wireName = r'NlpSuggestedAccountDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NlpSuggestedAccountDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'account';
    yield serializers.serialize(
      object.account,
      specifiedType: const FullType(String),
    );
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
    NlpSuggestedAccountDto object, {
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
    required NlpSuggestedAccountDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.account = valueDes;
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
  NlpSuggestedAccountDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NlpSuggestedAccountDtoBuilder();
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
