//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/create_transaction_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_create_transaction_dto.g.dart';

/// BatchCreateTransactionDto
///
/// Properties:
/// * [transactions] - Array of transactions to create
@BuiltValue()
abstract class BatchCreateTransactionDto implements Built<BatchCreateTransactionDto, BatchCreateTransactionDtoBuilder> {
  /// Array of transactions to create
  @BuiltValueField(wireName: r'transactions')
  BuiltList<CreateTransactionDto> get transactions;

  BatchCreateTransactionDto._();

  factory BatchCreateTransactionDto([void updates(BatchCreateTransactionDtoBuilder b)]) = _$BatchCreateTransactionDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchCreateTransactionDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchCreateTransactionDto> get serializer => _$BatchCreateTransactionDtoSerializer();
}

class _$BatchCreateTransactionDtoSerializer implements PrimitiveSerializer<BatchCreateTransactionDto> {
  @override
  final Iterable<Type> types = const [BatchCreateTransactionDto, _$BatchCreateTransactionDto];

  @override
  final String wireName = r'BatchCreateTransactionDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchCreateTransactionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'transactions';
    yield serializers.serialize(
      object.transactions,
      specifiedType: const FullType(BuiltList, [FullType(CreateTransactionDto)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchCreateTransactionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BatchCreateTransactionDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'transactions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CreateTransactionDto)]),
          ) as BuiltList<CreateTransactionDto>;
          result.transactions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchCreateTransactionDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchCreateTransactionDtoBuilder();
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

