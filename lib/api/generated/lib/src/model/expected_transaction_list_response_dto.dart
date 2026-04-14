//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/expected_transaction_response_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'expected_transaction_list_response_dto.g.dart';

/// ExpectedTransactionListResponseDto
///
/// Properties:
/// * [items]
/// * [total] - Total count
@BuiltValue()
abstract class ExpectedTransactionListResponseDto
    implements
        Built<ExpectedTransactionListResponseDto,
            ExpectedTransactionListResponseDtoBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<ExpectedTransactionResponseDto> get items;

  /// Total count
  @BuiltValueField(wireName: r'total')
  num get total;

  ExpectedTransactionListResponseDto._();

  factory ExpectedTransactionListResponseDto(
          [void updates(ExpectedTransactionListResponseDtoBuilder b)]) =
      _$ExpectedTransactionListResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExpectedTransactionListResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExpectedTransactionListResponseDto> get serializer =>
      _$ExpectedTransactionListResponseDtoSerializer();
}

class _$ExpectedTransactionListResponseDtoSerializer
    implements PrimitiveSerializer<ExpectedTransactionListResponseDto> {
  @override
  final Iterable<Type> types = const [
    ExpectedTransactionListResponseDto,
    _$ExpectedTransactionListResponseDto
  ];

  @override
  final String wireName = r'ExpectedTransactionListResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExpectedTransactionListResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType:
          const FullType(BuiltList, [FullType(ExpectedTransactionResponseDto)]),
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
    ExpectedTransactionListResponseDto object, {
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
    required ExpectedTransactionListResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(ExpectedTransactionResponseDto)]),
          ) as BuiltList<ExpectedTransactionResponseDto>;
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
  ExpectedTransactionListResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExpectedTransactionListResponseDtoBuilder();
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
