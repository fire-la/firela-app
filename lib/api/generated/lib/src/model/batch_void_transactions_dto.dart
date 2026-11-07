//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_void_transactions_dto.g.dart';

/// BatchVoidTransactionsDto
///
/// Properties:
/// * [ids] - Transaction IDs to void. Only the caller's ACTIVE rows are voided; already VOIDED/SUPERSEDED and nonexistent ids are reported in notFound.
@BuiltValue()
abstract class BatchVoidTransactionsDto implements Built<BatchVoidTransactionsDto, BatchVoidTransactionsDtoBuilder> {
  /// Transaction IDs to void. Only the caller's ACTIVE rows are voided; already VOIDED/SUPERSEDED and nonexistent ids are reported in notFound.
  @BuiltValueField(wireName: r'ids')
  BuiltList<String> get ids;

  BatchVoidTransactionsDto._();

  factory BatchVoidTransactionsDto([void updates(BatchVoidTransactionsDtoBuilder b)]) = _$BatchVoidTransactionsDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchVoidTransactionsDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchVoidTransactionsDto> get serializer => _$BatchVoidTransactionsDtoSerializer();
}

class _$BatchVoidTransactionsDtoSerializer implements PrimitiveSerializer<BatchVoidTransactionsDto> {
  @override
  final Iterable<Type> types = const [BatchVoidTransactionsDto, _$BatchVoidTransactionsDto];

  @override
  final String wireName = r'BatchVoidTransactionsDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchVoidTransactionsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ids';
    yield serializers.serialize(
      object.ids,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchVoidTransactionsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BatchVoidTransactionsDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.ids.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchVoidTransactionsDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchVoidTransactionsDtoBuilder();
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

