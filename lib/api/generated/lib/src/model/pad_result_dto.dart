//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pad_result_dto.g.dart';

/// PadResultDto
///
/// Properties:
/// * [transactionId] - Created pad adjusting transaction id.
@BuiltValue()
abstract class PadResultDto implements Built<PadResultDto, PadResultDtoBuilder> {
  /// Created pad adjusting transaction id.
  @BuiltValueField(wireName: r'transactionId')
  String get transactionId;

  PadResultDto._();

  factory PadResultDto([void updates(PadResultDtoBuilder b)]) = _$PadResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PadResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PadResultDto> get serializer => _$PadResultDtoSerializer();
}

class _$PadResultDtoSerializer implements PrimitiveSerializer<PadResultDto> {
  @override
  final Iterable<Type> types = const [PadResultDto, _$PadResultDto];

  @override
  final String wireName = r'PadResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PadResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'transactionId';
    yield serializers.serialize(
      object.transactionId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PadResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PadResultDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'transactionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.transactionId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PadResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PadResultDtoBuilder();
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

