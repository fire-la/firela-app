//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_transaction_error_dto.g.dart';

/// BatchTransactionErrorDto
///
/// Properties:
/// * [index] - Index of failed transaction in the input array
/// * [error] - Error message describing the failure
/// * [errorCode] - Structured error code for programmatic handling
@BuiltValue()
abstract class BatchTransactionErrorDto implements Built<BatchTransactionErrorDto, BatchTransactionErrorDtoBuilder> {
  /// Index of failed transaction in the input array
  @BuiltValueField(wireName: r'index')
  num get index;

  /// Error message describing the failure
  @BuiltValueField(wireName: r'error')
  String get error;

  /// Structured error code for programmatic handling
  @BuiltValueField(wireName: r'errorCode')
  String? get errorCode;

  BatchTransactionErrorDto._();

  factory BatchTransactionErrorDto([void updates(BatchTransactionErrorDtoBuilder b)]) = _$BatchTransactionErrorDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchTransactionErrorDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchTransactionErrorDto> get serializer => _$BatchTransactionErrorDtoSerializer();
}

class _$BatchTransactionErrorDtoSerializer implements PrimitiveSerializer<BatchTransactionErrorDto> {
  @override
  final Iterable<Type> types = const [BatchTransactionErrorDto, _$BatchTransactionErrorDto];

  @override
  final String wireName = r'BatchTransactionErrorDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchTransactionErrorDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'index';
    yield serializers.serialize(
      object.index,
      specifiedType: const FullType(num),
    );
    yield r'error';
    yield serializers.serialize(
      object.error,
      specifiedType: const FullType(String),
    );
    if (object.errorCode != null) {
      yield r'errorCode';
      yield serializers.serialize(
        object.errorCode,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchTransactionErrorDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BatchTransactionErrorDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.index = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.error = valueDes;
          break;
        case r'errorCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.errorCode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchTransactionErrorDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchTransactionErrorDtoBuilder();
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

