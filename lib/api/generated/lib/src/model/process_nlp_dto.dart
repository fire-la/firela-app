//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'process_nlp_dto.g.dart';

/// ProcessNlpDto
///
/// Properties:
/// * [message] - Natural language text describing a transaction (Chinese)
/// * [sessionId] - Session ID for multi-turn conversation (auto-generated if not provided)
@BuiltValue()
abstract class ProcessNlpDto
    implements Built<ProcessNlpDto, ProcessNlpDtoBuilder> {
  /// Natural language text describing a transaction (Chinese)
  @BuiltValueField(wireName: r'message')
  String get message;

  /// Session ID for multi-turn conversation (auto-generated if not provided)
  @BuiltValueField(wireName: r'sessionId')
  String? get sessionId;

  ProcessNlpDto._();

  factory ProcessNlpDto([void updates(ProcessNlpDtoBuilder b)]) =
      _$ProcessNlpDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProcessNlpDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProcessNlpDto> get serializer =>
      _$ProcessNlpDtoSerializer();
}

class _$ProcessNlpDtoSerializer implements PrimitiveSerializer<ProcessNlpDto> {
  @override
  final Iterable<Type> types = const [ProcessNlpDto, _$ProcessNlpDto];

  @override
  final String wireName = r'ProcessNlpDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProcessNlpDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    if (object.sessionId != null) {
      yield r'sessionId';
      yield serializers.serialize(
        object.sessionId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProcessNlpDto object, {
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
    required ProcessNlpDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'sessionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sessionId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProcessNlpDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProcessNlpDtoBuilder();
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
