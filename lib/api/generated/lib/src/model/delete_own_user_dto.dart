//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_own_user_dto.g.dart';

/// DeleteOwnUserDto
///
/// Properties:
/// * [accessToken] - Access token for user verification
@BuiltValue()
abstract class DeleteOwnUserDto
    implements Built<DeleteOwnUserDto, DeleteOwnUserDtoBuilder> {
  /// Access token for user verification
  @BuiltValueField(wireName: r'accessToken')
  String get accessToken;

  DeleteOwnUserDto._();

  factory DeleteOwnUserDto([void updates(DeleteOwnUserDtoBuilder b)]) =
      _$DeleteOwnUserDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeleteOwnUserDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeleteOwnUserDto> get serializer =>
      _$DeleteOwnUserDtoSerializer();
}

class _$DeleteOwnUserDtoSerializer
    implements PrimitiveSerializer<DeleteOwnUserDto> {
  @override
  final Iterable<Type> types = const [DeleteOwnUserDto, _$DeleteOwnUserDto];

  @override
  final String wireName = r'DeleteOwnUserDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeleteOwnUserDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accessToken';
    yield serializers.serialize(
      object.accessToken,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DeleteOwnUserDto object, {
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
    required DeleteOwnUserDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accessToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accessToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeleteOwnUserDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteOwnUserDtoBuilder();
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
