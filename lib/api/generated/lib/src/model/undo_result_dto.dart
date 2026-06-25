//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'undo_result_dto.g.dart';

/// UndoResultDto
///
/// Properties:
/// * [success] - Whether undo was successful
/// * [message] - Message
/// * [reviewId] - Review item ID that was restored
@BuiltValue()
abstract class UndoResultDto implements Built<UndoResultDto, UndoResultDtoBuilder> {
  /// Whether undo was successful
  @BuiltValueField(wireName: r'success')
  bool get success;

  /// Message
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// Review item ID that was restored
  @BuiltValueField(wireName: r'reviewId')
  String get reviewId;

  UndoResultDto._();

  factory UndoResultDto([void updates(UndoResultDtoBuilder b)]) = _$UndoResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UndoResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UndoResultDto> get serializer => _$UndoResultDtoSerializer();
}

class _$UndoResultDtoSerializer implements PrimitiveSerializer<UndoResultDto> {
  @override
  final Iterable<Type> types = const [UndoResultDto, _$UndoResultDto];

  @override
  final String wireName = r'UndoResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UndoResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    yield r'reviewId';
    yield serializers.serialize(
      object.reviewId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UndoResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UndoResultDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'reviewId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reviewId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UndoResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UndoResultDtoBuilder();
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

