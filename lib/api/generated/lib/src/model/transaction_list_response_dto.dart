//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/transaction_detail_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transaction_list_response_dto.g.dart';

/// TransactionListResponseDto
///
/// Properties:
/// * [data] - List of transactions
/// * [total] - Total count of matching transactions
/// * [limit] - Number of items per page
/// * [offset] - Number of items skipped
@BuiltValue()
abstract class TransactionListResponseDto
    implements
        Built<TransactionListResponseDto, TransactionListResponseDtoBuilder> {
  /// List of transactions
  @BuiltValueField(wireName: r'data')
  BuiltList<TransactionDetailDto> get data;

  /// Total count of matching transactions
  @BuiltValueField(wireName: r'total')
  num get total;

  /// Number of items per page
  @BuiltValueField(wireName: r'limit')
  num get limit;

  /// Number of items skipped
  @BuiltValueField(wireName: r'offset')
  num get offset;

  TransactionListResponseDto._();

  factory TransactionListResponseDto(
          [void updates(TransactionListResponseDtoBuilder b)]) =
      _$TransactionListResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TransactionListResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TransactionListResponseDto> get serializer =>
      _$TransactionListResponseDtoSerializer();
}

class _$TransactionListResponseDtoSerializer
    implements PrimitiveSerializer<TransactionListResponseDto> {
  @override
  final Iterable<Type> types = const [
    TransactionListResponseDto,
    _$TransactionListResponseDto
  ];

  @override
  final String wireName = r'TransactionListResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TransactionListResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType:
          const FullType(BuiltList, [FullType(TransactionDetailDto)]),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(num),
    );
    yield r'limit';
    yield serializers.serialize(
      object.limit,
      specifiedType: const FullType(num),
    );
    yield r'offset';
    yield serializers.serialize(
      object.offset,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TransactionListResponseDto object, {
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
    required TransactionListResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(TransactionDetailDto)]),
          ) as BuiltList<TransactionDetailDto>;
          result.data.replace(valueDes);
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.total = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.limit = valueDes;
          break;
        case r'offset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.offset = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TransactionListResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransactionListResponseDtoBuilder();
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
