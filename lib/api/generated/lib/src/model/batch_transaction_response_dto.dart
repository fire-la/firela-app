//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/batch_transaction_error_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/transaction_response_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_transaction_response_dto.g.dart';

/// BatchTransactionResponseDto
///
/// Properties:
/// * [succeeded] - Successfully created transactions
/// * [failed] - Failed transactions with error details
@BuiltValue()
abstract class BatchTransactionResponseDto implements Built<BatchTransactionResponseDto, BatchTransactionResponseDtoBuilder> {
  /// Successfully created transactions
  @BuiltValueField(wireName: r'succeeded')
  BuiltList<TransactionResponseDto> get succeeded;

  /// Failed transactions with error details
  @BuiltValueField(wireName: r'failed')
  BuiltList<BatchTransactionErrorDto> get failed;

  BatchTransactionResponseDto._();

  factory BatchTransactionResponseDto([void updates(BatchTransactionResponseDtoBuilder b)]) = _$BatchTransactionResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchTransactionResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchTransactionResponseDto> get serializer => _$BatchTransactionResponseDtoSerializer();
}

class _$BatchTransactionResponseDtoSerializer implements PrimitiveSerializer<BatchTransactionResponseDto> {
  @override
  final Iterable<Type> types = const [BatchTransactionResponseDto, _$BatchTransactionResponseDto];

  @override
  final String wireName = r'BatchTransactionResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchTransactionResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'succeeded';
    yield serializers.serialize(
      object.succeeded,
      specifiedType: const FullType(BuiltList, [FullType(TransactionResponseDto)]),
    );
    yield r'failed';
    yield serializers.serialize(
      object.failed,
      specifiedType: const FullType(BuiltList, [FullType(BatchTransactionErrorDto)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchTransactionResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BatchTransactionResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'succeeded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TransactionResponseDto)]),
          ) as BuiltList<TransactionResponseDto>;
          result.succeeded.replace(valueDes);
          break;
        case r'failed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BatchTransactionErrorDto)]),
          ) as BuiltList<BatchTransactionErrorDto>;
          result.failed.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchTransactionResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchTransactionResponseDtoBuilder();
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

