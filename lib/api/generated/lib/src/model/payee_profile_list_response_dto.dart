//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/payee_profile_response_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payee_profile_list_response_dto.g.dart';

/// PayeeProfileListResponseDto
///
/// Properties:
/// * [items] - List of payee profiles
/// * [total] - Total count of matching records
@BuiltValue()
abstract class PayeeProfileListResponseDto
    implements
        Built<PayeeProfileListResponseDto, PayeeProfileListResponseDtoBuilder> {
  /// List of payee profiles
  @BuiltValueField(wireName: r'items')
  BuiltList<PayeeProfileResponseDto> get items;

  /// Total count of matching records
  @BuiltValueField(wireName: r'total')
  num get total;

  PayeeProfileListResponseDto._();

  factory PayeeProfileListResponseDto(
          [void updates(PayeeProfileListResponseDtoBuilder b)]) =
      _$PayeeProfileListResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PayeeProfileListResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PayeeProfileListResponseDto> get serializer =>
      _$PayeeProfileListResponseDtoSerializer();
}

class _$PayeeProfileListResponseDtoSerializer
    implements PrimitiveSerializer<PayeeProfileListResponseDto> {
  @override
  final Iterable<Type> types = const [
    PayeeProfileListResponseDto,
    _$PayeeProfileListResponseDto
  ];

  @override
  final String wireName = r'PayeeProfileListResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PayeeProfileListResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType:
          const FullType(BuiltList, [FullType(PayeeProfileResponseDto)]),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PayeeProfileListResponseDto object, {
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
    required PayeeProfileListResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(PayeeProfileResponseDto)]),
          ) as BuiltList<PayeeProfileResponseDto>;
          result.items.replace(valueDes);
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.total = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PayeeProfileListResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PayeeProfileListResponseDtoBuilder();
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
