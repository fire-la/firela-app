//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/transaction_flag.dart';
import 'package:firela_api/src/model/date.dart';
import 'package:firela_api/src/model/posting.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transaction_response.g.dart';

/// TransactionResponse
///
/// Properties:
/// * [transactionId]
/// * [date]
/// * [narration]
/// * [postings]
/// * [idempotencyKey]
/// * [flag]
/// * [payee]
/// * [interpolated]
/// * [booked]
/// * [warnings]
/// * [createdAccountIds]
/// * [recurringSuggestion]
@BuiltValue()
abstract class TransactionResponse
    implements Built<TransactionResponse, TransactionResponseBuilder> {
  @BuiltValueField(wireName: r'transactionId')
  String get transactionId;

  @BuiltValueField(wireName: r'date')
  Date get date;

  @BuiltValueField(wireName: r'narration')
  String get narration;

  @BuiltValueField(wireName: r'postings')
  BuiltList<Posting> get postings;

  @BuiltValueField(wireName: r'idempotencyKey')
  String? get idempotencyKey;

  @BuiltValueField(wireName: r'flag')
  TransactionFlag? get flag;
  // enum flagEnum {  *,  !,  };

  @BuiltValueField(wireName: r'payee')
  String? get payee;

  @BuiltValueField(wireName: r'interpolated')
  bool? get interpolated;

  @BuiltValueField(wireName: r'booked')
  bool? get booked;

  @BuiltValueField(wireName: r'warnings')
  BuiltList<String>? get warnings;

  @BuiltValueField(wireName: r'createdAccountIds')
  BuiltList<String>? get createdAccountIds;

  @BuiltValueField(wireName: r'recurringSuggestion')
  BuiltMap<String, JsonObject?>? get recurringSuggestion;

  TransactionResponse._();

  factory TransactionResponse([void updates(TransactionResponseBuilder b)]) =
      _$TransactionResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TransactionResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TransactionResponse> get serializer =>
      _$TransactionResponseSerializer();
}

class _$TransactionResponseSerializer
    implements PrimitiveSerializer<TransactionResponse> {
  @override
  final Iterable<Type> types = const [
    TransactionResponse,
    _$TransactionResponse
  ];

  @override
  final String wireName = r'TransactionResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TransactionResponse object, {
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
      specifiedType: const FullType(Date),
    );
    yield r'narration';
    yield serializers.serialize(
      object.narration,
      specifiedType: const FullType(String),
    );
    yield r'postings';
    yield serializers.serialize(
      object.postings,
      specifiedType: const FullType(BuiltList, [FullType(Posting)]),
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
        specifiedType: const FullType(TransactionFlag),
      );
    }
    if (object.payee != null) {
      yield r'payee';
      yield serializers.serialize(
        object.payee,
        specifiedType: const FullType(String),
      );
    }
    if (object.interpolated != null) {
      yield r'interpolated';
      yield serializers.serialize(
        object.interpolated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.booked != null) {
      yield r'booked';
      yield serializers.serialize(
        object.booked,
        specifiedType: const FullType(bool),
      );
    }
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.createdAccountIds != null) {
      yield r'createdAccountIds';
      yield serializers.serialize(
        object.createdAccountIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.recurringSuggestion != null) {
      yield r'recurringSuggestion';
      yield serializers.serialize(
        object.recurringSuggestion,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TransactionResponse object, {
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
    required TransactionResponseBuilder result,
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
            specifiedType: const FullType(Date),
          ) as Date;
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
            specifiedType: const FullType(BuiltList, [FullType(Posting)]),
          ) as BuiltList<Posting>;
          result.postings.replace(valueDes);
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
            specifiedType: const FullType(TransactionFlag),
          ) as TransactionFlag;
          result.flag = valueDes;
          break;
        case r'payee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.payee = valueDes;
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
        case r'warnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.warnings.replace(valueDes);
          break;
        case r'createdAccountIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.createdAccountIds.replace(valueDes);
          break;
        case r'recurringSuggestion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
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
  TransactionResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransactionResponseBuilder();
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
