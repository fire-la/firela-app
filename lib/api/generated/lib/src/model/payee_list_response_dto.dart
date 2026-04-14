//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/payee_response_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payee_list_response_dto.g.dart';

/// PayeeListResponseDto
///
/// Properties:
/// * [items] - List of payees
/// * [total] - Total number of payees
@BuiltValue()
abstract class PayeeListResponseDto
    implements Built<PayeeListResponseDto, PayeeListResponseDtoBuilder> {
  /// List of payees
  @BuiltValueField(wireName: r'items')
  BuiltList<PayeeResponseDto> get items;

  /// Total number of payees
  @BuiltValueField(wireName: r'total')
  num get total;

  PayeeListResponseDto._();

  factory PayeeListResponseDto([void updates(PayeeListResponseDtoBuilder b)]) =
      _$PayeeListResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PayeeListResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PayeeListResponseDto> get serializer =>
      _$PayeeListResponseDtoSerializer();
}

class _$PayeeListResponseDtoSerializer
    implements PrimitiveSerializer<PayeeListResponseDto> {
  @override
  final Iterable<Type> types = const [
    PayeeListResponseDto,
    _$PayeeListResponseDto
  ];

  @override
  final String wireName = r'PayeeListResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PayeeListResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(PayeeResponseDto)]),
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
    PayeeListResponseDto object, {
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
    required PayeeListResponseDtoBuilder result,
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
                const FullType(BuiltList, [FullType(PayeeResponseDto)]),
          ) as BuiltList<PayeeResponseDto>;
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
  PayeeListResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PayeeListResponseDtoBuilder();
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
