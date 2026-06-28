//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/create_posting_dto.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'correct_transaction_dto.g.dart';

/// CorrectTransactionDto
///
/// Properties:
/// * [date] - Transaction date (ISO 8601 format)
/// * [flag] - Transaction flag: * (cleared), ! (pending)
/// * [payee] - Payee name
/// * [narration] - Transaction narration/description
/// * [tags] - Transaction tags (without # prefix)
/// * [links] - Transaction links (without ^ prefix)
/// * [postings] - Transaction postings (minimum 1, typically 2 for double-entry)
/// * [meta] - Transaction-level metadata
/// * [idempotencyKey] - Unique key for idempotent transaction creation. If provided, duplicate requests with the same key will return the existing transaction.
/// * [autoCreateAccounts] - Auto-create accounts if not found. When true, missing accounts will be automatically created. When false (default for API), missing accounts will cause a validation error. Set to true for quick entry scenarios where you want to create accounts on-the-fly.
/// * [correctionReason] - Reason for correcting/superseding the original transaction
@BuiltValue()
abstract class CorrectTransactionDto implements Built<CorrectTransactionDto, CorrectTransactionDtoBuilder> {
  /// Transaction date (ISO 8601 format)
  @BuiltValueField(wireName: r'date')
  String get date;

  /// Transaction flag: * (cleared), ! (pending)
  @BuiltValueField(wireName: r'flag')
  CorrectTransactionDtoFlagEnum? get flag;
  // enum flagEnum {  *,  !,  };

  /// Payee name
  @BuiltValueField(wireName: r'payee')
  String? get payee;

  /// Transaction narration/description
  @BuiltValueField(wireName: r'narration')
  String get narration;

  /// Transaction tags (without # prefix)
  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  /// Transaction links (without ^ prefix)
  @BuiltValueField(wireName: r'links')
  BuiltList<String>? get links;

  /// Transaction postings (minimum 1, typically 2 for double-entry)
  @BuiltValueField(wireName: r'postings')
  BuiltList<CreatePostingDto> get postings;

  /// Transaction-level metadata
  @BuiltValueField(wireName: r'meta')
  JsonObject? get meta;

  /// Unique key for idempotent transaction creation. If provided, duplicate requests with the same key will return the existing transaction.
  @BuiltValueField(wireName: r'idempotencyKey')
  String? get idempotencyKey;

  /// Auto-create accounts if not found. When true, missing accounts will be automatically created. When false (default for API), missing accounts will cause a validation error. Set to true for quick entry scenarios where you want to create accounts on-the-fly.
  @BuiltValueField(wireName: r'autoCreateAccounts')
  bool? get autoCreateAccounts;

  /// Reason for correcting/superseding the original transaction
  @BuiltValueField(wireName: r'correctionReason')
  String? get correctionReason;

  CorrectTransactionDto._();

  factory CorrectTransactionDto([void updates(CorrectTransactionDtoBuilder b)]) = _$CorrectTransactionDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorrectTransactionDtoBuilder b) => b
      ..autoCreateAccounts = true;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorrectTransactionDto> get serializer => _$CorrectTransactionDtoSerializer();
}

class _$CorrectTransactionDtoSerializer implements PrimitiveSerializer<CorrectTransactionDto> {
  @override
  final Iterable<Type> types = const [CorrectTransactionDto, _$CorrectTransactionDto];

  @override
  final String wireName = r'CorrectTransactionDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorrectTransactionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(String),
    );
    if (object.flag != null) {
      yield r'flag';
      yield serializers.serialize(
        object.flag,
        specifiedType: const FullType(CorrectTransactionDtoFlagEnum),
      );
    }
    if (object.payee != null) {
      yield r'payee';
      yield serializers.serialize(
        object.payee,
        specifiedType: const FullType(String),
      );
    }
    yield r'narration';
    yield serializers.serialize(
      object.narration,
      specifiedType: const FullType(String),
    );
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.links != null) {
      yield r'links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'postings';
    yield serializers.serialize(
      object.postings,
      specifiedType: const FullType(BuiltList, [FullType(CreatePostingDto)]),
    );
    if (object.meta != null) {
      yield r'meta';
      yield serializers.serialize(
        object.meta,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.idempotencyKey != null) {
      yield r'idempotencyKey';
      yield serializers.serialize(
        object.idempotencyKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.autoCreateAccounts != null) {
      yield r'autoCreateAccounts';
      yield serializers.serialize(
        object.autoCreateAccounts,
        specifiedType: const FullType(bool),
      );
    }
    if (object.correctionReason != null) {
      yield r'correctionReason';
      yield serializers.serialize(
        object.correctionReason,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorrectTransactionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CorrectTransactionDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.date = valueDes;
          break;
        case r'flag':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CorrectTransactionDtoFlagEnum),
          ) as CorrectTransactionDtoFlagEnum;
          result.flag = valueDes;
          break;
        case r'payee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.payee = valueDes;
          break;
        case r'narration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.narration = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.tags.replace(valueDes);
          break;
        case r'links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.links.replace(valueDes);
          break;
        case r'postings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CreatePostingDto)]),
          ) as BuiltList<CreatePostingDto>;
          result.postings.replace(valueDes);
          break;
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.meta = valueDes;
          break;
        case r'idempotencyKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.idempotencyKey = valueDes;
          break;
        case r'autoCreateAccounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.autoCreateAccounts = valueDes;
          break;
        case r'correctionReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.correctionReason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorrectTransactionDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorrectTransactionDtoBuilder();
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

class CorrectTransactionDtoFlagEnum extends EnumClass {

  /// Transaction flag: * (cleared), ! (pending)
  @BuiltValueEnumConst(wireName: r'*')
  static const CorrectTransactionDtoFlagEnum star = _$correctTransactionDtoFlagEnum_star;
  /// Transaction flag: * (cleared), ! (pending)
  @BuiltValueEnumConst(wireName: r'!')
  static const CorrectTransactionDtoFlagEnum exclamation = _$correctTransactionDtoFlagEnum_exclamation;

  static Serializer<CorrectTransactionDtoFlagEnum> get serializer => _$correctTransactionDtoFlagEnumSerializer;

  const CorrectTransactionDtoFlagEnum._(String name): super(name);

  static BuiltSet<CorrectTransactionDtoFlagEnum> get values => _$correctTransactionDtoFlagEnumValues;
  static CorrectTransactionDtoFlagEnum valueOf(String name) => _$correctTransactionDtoFlagEnumValueOf(name);
}

