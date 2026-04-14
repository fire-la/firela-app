//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/recurring_suggestion_dto.dart';
import 'package:firela_api/src/model/posting_response_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transaction_response_dto.g.dart';

/// TransactionResponseDto
///
/// Properties:
/// * [transactionId] - Database transaction ID
/// * [date] - Transaction date
/// * [narration] - Transaction narration
/// * [postings] - Transaction postings
/// * [interpolated] - Whether interpolation was applied to balance the transaction
/// * [booked] - Whether booking (cost resolution) was applied
/// * [createdAccountIds] - Account IDs auto-created for this transaction (empty for API source)
/// * [idempotencyKey] - Idempotency key if provided during creation
/// * [flag] - Transaction flag
/// * [payee] - Payee name
/// * [warnings] - Non-blocking warnings from pipeline processing
/// * [recurringSuggestion]
@BuiltValue()
abstract class TransactionResponseDto
    implements Built<TransactionResponseDto, TransactionResponseDtoBuilder> {
  /// Database transaction ID
  @BuiltValueField(wireName: r'transactionId')
  String get transactionId;

  /// Transaction date
  @BuiltValueField(wireName: r'date')
  String get date;

  /// Transaction narration
  @BuiltValueField(wireName: r'narration')
  String get narration;

  /// Transaction postings
  @BuiltValueField(wireName: r'postings')
  BuiltList<PostingResponseDto> get postings;

  /// Whether interpolation was applied to balance the transaction
  @BuiltValueField(wireName: r'interpolated')
  bool get interpolated;

  /// Whether booking (cost resolution) was applied
  @BuiltValueField(wireName: r'booked')
  bool get booked;

  /// Account IDs auto-created for this transaction (empty for API source)
  @BuiltValueField(wireName: r'createdAccountIds')
  BuiltList<String> get createdAccountIds;

  /// Idempotency key if provided during creation
  @BuiltValueField(wireName: r'idempotencyKey')
  String? get idempotencyKey;

  /// Transaction flag
  @BuiltValueField(wireName: r'flag')
  String? get flag;

  /// Payee name
  @BuiltValueField(wireName: r'payee')
  String? get payee;

  /// Non-blocking warnings from pipeline processing
  @BuiltValueField(wireName: r'warnings')
  BuiltList<String>? get warnings;

  @BuiltValueField(wireName: r'recurringSuggestion')
  RecurringSuggestionDto? get recurringSuggestion;

  TransactionResponseDto._();

  factory TransactionResponseDto(
          [void updates(TransactionResponseDtoBuilder b)]) =
      _$TransactionResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TransactionResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TransactionResponseDto> get serializer =>
      _$TransactionResponseDtoSerializer();
}

class _$TransactionResponseDtoSerializer
    implements PrimitiveSerializer<TransactionResponseDto> {
  @override
  final Iterable<Type> types = const [
    TransactionResponseDto,
    _$TransactionResponseDto
  ];

  @override
  final String wireName = r'TransactionResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TransactionResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'transactionId';
    yield serializers.serialize(
      object.transactionId,
      specifiedType: const FullType(String),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(String),
    );
    yield r'narration';
    yield serializers.serialize(
      object.narration,
      specifiedType: const FullType(String),
    );
    yield r'postings';
    yield serializers.serialize(
      object.postings,
      specifiedType: const FullType(BuiltList, [FullType(PostingResponseDto)]),
    );
    yield r'interpolated';
    yield serializers.serialize(
      object.interpolated,
      specifiedType: const FullType(bool),
    );
    yield r'booked';
    yield serializers.serialize(
      object.booked,
      specifiedType: const FullType(bool),
    );
    yield r'createdAccountIds';
    yield serializers.serialize(
      object.createdAccountIds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.idempotencyKey != null) {
      yield r'idempotencyKey';
      yield serializers.serialize(
        object.idempotencyKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.flag != null) {
      yield r'flag';
      yield serializers.serialize(
        object.flag,
        specifiedType: const FullType(String),
      );
    }
    if (object.payee != null) {
      yield r'payee';
      yield serializers.serialize(
        object.payee,
        specifiedType: const FullType(String),
      );
    }
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.recurringSuggestion != null) {
      yield r'recurringSuggestion';
      yield serializers.serialize(
        object.recurringSuggestion,
        specifiedType: const FullType(RecurringSuggestionDto),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TransactionResponseDto object, {
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
    required TransactionResponseDtoBuilder result,
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
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.date = valueDes;
          break;
        case r'narration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.narration = valueDes;
          break;
        case r'postings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(PostingResponseDto)]),
          ) as BuiltList<PostingResponseDto>;
          result.postings.replace(valueDes);
          break;
        case r'interpolated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.interpolated = valueDes;
          break;
        case r'booked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.booked = valueDes;
          break;
        case r'createdAccountIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.createdAccountIds.replace(valueDes);
          break;
        case r'idempotencyKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.idempotencyKey = valueDes;
          break;
        case r'flag':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.flag = valueDes;
          break;
        case r'payee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.payee = valueDes;
          break;
        case r'warnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.warnings.replace(valueDes);
          break;
        case r'recurringSuggestion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RecurringSuggestionDto),
          ) as RecurringSuggestionDto;
          result.recurringSuggestion.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TransactionResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransactionResponseDtoBuilder();
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
