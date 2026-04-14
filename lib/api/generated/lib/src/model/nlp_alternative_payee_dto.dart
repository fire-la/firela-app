//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nlp_alternative_payee_dto.g.dart';

/// NlpAlternativePayeeDto
///
/// Properties:
/// * [id] - Payee ID
/// * [name] - Payee name
/// * [similarity] - Similarity score (0-1)
@BuiltValue()
abstract class NlpAlternativePayeeDto
    implements Built<NlpAlternativePayeeDto, NlpAlternativePayeeDtoBuilder> {
  /// Payee ID
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Payee name
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Similarity score (0-1)
  @BuiltValueField(wireName: r'similarity')
  num get similarity;

  NlpAlternativePayeeDto._();

  factory NlpAlternativePayeeDto(
          [void updates(NlpAlternativePayeeDtoBuilder b)]) =
      _$NlpAlternativePayeeDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NlpAlternativePayeeDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NlpAlternativePayeeDto> get serializer =>
      _$NlpAlternativePayeeDtoSerializer();
}

class _$NlpAlternativePayeeDtoSerializer
    implements PrimitiveSerializer<NlpAlternativePayeeDto> {
  @override
  final Iterable<Type> types = const [
    NlpAlternativePayeeDto,
    _$NlpAlternativePayeeDto
  ];

  @override
  final String wireName = r'NlpAlternativePayeeDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NlpAlternativePayeeDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'similarity';
    yield serializers.serialize(
      object.similarity,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NlpAlternativePayeeDto object, {
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
    required NlpAlternativePayeeDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'similarity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.similarity = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NlpAlternativePayeeDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NlpAlternativePayeeDtoBuilder();
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
