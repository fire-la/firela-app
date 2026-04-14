//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'close_account_dto.g.dart';

/// CloseAccountDto
///
/// Properties:
/// * [closeDate] - Account close date
/// * [closeMeta] - Close directive metadata
@BuiltValue()
abstract class CloseAccountDto
    implements Built<CloseAccountDto, CloseAccountDtoBuilder> {
  /// Account close date
  @BuiltValueField(wireName: r'closeDate')
  DateTime get closeDate;

  /// Close directive metadata
  @BuiltValueField(wireName: r'closeMeta')
  JsonObject? get closeMeta;

  CloseAccountDto._();

  factory CloseAccountDto([void updates(CloseAccountDtoBuilder b)]) =
      _$CloseAccountDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CloseAccountDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CloseAccountDto> get serializer =>
      _$CloseAccountDtoSerializer();
}

class _$CloseAccountDtoSerializer
    implements PrimitiveSerializer<CloseAccountDto> {
  @override
  final Iterable<Type> types = const [CloseAccountDto, _$CloseAccountDto];

  @override
  final String wireName = r'CloseAccountDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CloseAccountDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'closeDate';
    yield serializers.serialize(
      object.closeDate,
      specifiedType: const FullType(DateTime),
    );
    if (object.closeMeta != null) {
      yield r'closeMeta';
      yield serializers.serialize(
        object.closeMeta,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CloseAccountDto object, {
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
    required CloseAccountDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'closeDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.closeDate = valueDes;
          break;
        case r'closeMeta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.closeMeta = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CloseAccountDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CloseAccountDtoBuilder();
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
