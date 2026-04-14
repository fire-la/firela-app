//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/create_posting_dto.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_transaction_dto.g.dart';

/// CreateTransactionDto
///
/// Properties:
/// * [date] - Transaction date (ISO 8601 format)
/// * [narration] - Transaction narration/description
/// * [postings] - Transaction postings (minimum 1, typically 2 for double-entry)
/// * [flag] - Transaction flag: * (cleared), ! (pending)
/// * [payee] - Payee name
/// * [tags] - Transaction tags (without # prefix)
/// * [links] - Transaction links (without ^ prefix)
/// * [meta] - Transaction-level metadata
/// * [idempotencyKey] - Unique key for idempotent transaction creation. If provided, duplicate requests with the same key will return the existing transaction.
/// * [autoCreateAccounts] - Auto-create accounts if not found. When true, missing accounts will be automatically created. When false (default for API), missing accounts will cause a validation error. Set to true for quick entry scenarios where you want to create accounts on-the-fly.
@BuiltValue()
abstract class CreateTransactionDto
    implements Built<CreateTransactionDto, CreateTransactionDtoBuilder> {
  /// Transaction date (ISO 8601 format)
  @BuiltValueField(wireName: r'date')
  String get date;

  /// Transaction narration/description
  @BuiltValueField(wireName: r'narration')
  String get narration;

  /// Transaction postings (minimum 1, typically 2 for double-entry)
  @BuiltValueField(wireName: r'postings')
  BuiltList<CreatePostingDto> get postings;

  /// Transaction flag: * (cleared), ! (pending)
  @BuiltValueField(wireName: r'flag')
  CreateTransactionDtoFlagEnum? get flag;
  // enum flagEnum {  *,  !,  };

  /// Payee name
  @BuiltValueField(wireName: r'payee')
  String? get payee;

  /// Transaction tags (without # prefix)
  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  /// Transaction links (without ^ prefix)
  @BuiltValueField(wireName: r'links')
  BuiltList<String>? get links;

  /// Transaction-level metadata
  @BuiltValueField(wireName: r'meta')
  JsonObject? get meta;

  /// Unique key for idempotent transaction creation. If provided, duplicate requests with the same key will return the existing transaction.
  @BuiltValueField(wireName: r'idempotencyKey')
  String? get idempotencyKey;

  /// Auto-create accounts if not found. When true, missing accounts will be automatically created. When false (default for API), missing accounts will cause a validation error. Set to true for quick entry scenarios where you want to create accounts on-the-fly.
  @BuiltValueField(wireName: r'autoCreateAccounts')
  bool? get autoCreateAccounts;

  CreateTransactionDto._();

  factory CreateTransactionDto([void updates(CreateTransactionDtoBuilder b)]) =
      _$CreateTransactionDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateTransactionDtoBuilder b) =>
      b..autoCreateAccounts = true;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateTransactionDto> get serializer =>
      _$CreateTransactionDtoSerializer();
}

class _$CreateTransactionDtoSerializer
    implements PrimitiveSerializer<CreateTransactionDto> {
  @override
  final Iterable<Type> types = const [
    CreateTransactionDto,
    _$CreateTransactionDto
  ];

  @override
  final String wireName = r'CreateTransactionDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateTransactionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
      specifiedType: const FullType(BuiltList, [FullType(CreatePostingDto)]),
    );
    if (object.flag != null) {
      yield r'flag';
      yield serializers.serialize(
        object.flag,
        specifiedType: const FullType(CreateTransactionDtoFlagEnum),
      );
    }
    if (object.payee != null) {
      yield r'payee';
      yield serializers.serialize(
        object.payee,
        specifiedType: const FullType(String),
      );
    }
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
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateTransactionDto object, {
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
    required CreateTransactionDtoBuilder result,
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
                const FullType(BuiltList, [FullType(CreatePostingDto)]),
          ) as BuiltList<CreatePostingDto>;
          result.postings.replace(valueDes);
          break;
        case r'flag':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateTransactionDtoFlagEnum),
          ) as CreateTransactionDtoFlagEnum;
          result.flag = valueDes;
          break;
        case r'payee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.payee = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateTransactionDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransactionDtoBuilder();
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

class CreateTransactionDtoFlagEnum extends EnumClass {
  /// Transaction flag: * (cleared), ! (pending)
  @BuiltValueEnumConst(wireName: r'*')
  static const CreateTransactionDtoFlagEnum star =
      _$createTransactionDtoFlagEnum_star;

  /// Transaction flag: * (cleared), ! (pending)
  @BuiltValueEnumConst(wireName: r'!', fallback: true)
  static const CreateTransactionDtoFlagEnum exclamation =
      _$createTransactionDtoFlagEnum_exclamation;

  static Serializer<CreateTransactionDtoFlagEnum> get serializer =>
      _$createTransactionDtoFlagEnumSerializer;

  const CreateTransactionDtoFlagEnum._(String name) : super(name);

  static BuiltSet<CreateTransactionDtoFlagEnum> get values =>
      _$createTransactionDtoFlagEnumValues;
  static CreateTransactionDtoFlagEnum valueOf(String name) =>
      _$createTransactionDtoFlagEnumValueOf(name);
}
