//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/date.dart';
import 'package:firela_api/src/model/create_posting_request.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_transaction_request.g.dart';

/// CreateTransactionRequest
///
/// Properties:
/// * [date]
/// * [narration]
/// * [postings]
/// * [flag] - Transaction flag: '*' = complete, '!' = incomplete
/// * [payee]
/// * [tags]
/// * [links]
/// * [meta]
/// * [idempotencyKey]
@BuiltValue()
abstract class CreateTransactionRequest
    implements
        Built<CreateTransactionRequest, CreateTransactionRequestBuilder> {
  @BuiltValueField(wireName: r'date')
  Date get date;

  @BuiltValueField(wireName: r'narration')
  String get narration;

  @BuiltValueField(wireName: r'postings')
  BuiltList<CreatePostingRequest> get postings;

  /// Transaction flag: '*' = complete, '!' = incomplete
  @BuiltValueField(wireName: r'flag')
  CreateTransactionRequestFlagEnum? get flag;
  // enum flagEnum {  *,  !,  };

  @BuiltValueField(wireName: r'payee')
  String? get payee;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'links')
  BuiltList<String>? get links;

  @BuiltValueField(wireName: r'meta')
  BuiltMap<String, JsonObject?>? get meta;

  @BuiltValueField(wireName: r'idempotencyKey')
  String? get idempotencyKey;

  CreateTransactionRequest._();

  factory CreateTransactionRequest(
          [void updates(CreateTransactionRequestBuilder b)]) =
      _$CreateTransactionRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateTransactionRequestBuilder b) =>
      b..flag = const CreateTransactionRequestFlagEnum._('*');

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateTransactionRequest> get serializer =>
      _$CreateTransactionRequestSerializer();
}

class _$CreateTransactionRequestSerializer
    implements PrimitiveSerializer<CreateTransactionRequest> {
  @override
  final Iterable<Type> types = const [
    CreateTransactionRequest,
    _$CreateTransactionRequest
  ];

  @override
  final String wireName = r'CreateTransactionRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateTransactionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
      specifiedType:
          const FullType(BuiltList, [FullType(CreatePostingRequest)]),
    );
    if (object.flag != null) {
      yield r'flag';
      yield serializers.serialize(
        object.flag,
        specifiedType: const FullType(CreateTransactionRequestFlagEnum),
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
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.idempotencyKey != null) {
      yield r'idempotencyKey';
      yield serializers.serialize(
        object.idempotencyKey,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateTransactionRequest object, {
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
    required CreateTransactionRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
            specifiedType:
                const FullType(BuiltList, [FullType(CreatePostingRequest)]),
          ) as BuiltList<CreatePostingRequest>;
          result.postings.replace(valueDes);
          break;
        case r'flag':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateTransactionRequestFlagEnum),
          ) as CreateTransactionRequestFlagEnum;
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
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.meta.replace(valueDes);
          break;
        case r'idempotencyKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.idempotencyKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateTransactionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransactionRequestBuilder();
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

class CreateTransactionRequestFlagEnum extends EnumClass {
  /// Transaction flag: '*' = complete, '!' = incomplete
  @BuiltValueEnumConst(wireName: r'*')
  static const CreateTransactionRequestFlagEnum star =
      _$createTransactionRequestFlagEnum_star;

  /// Transaction flag: '*' = complete, '!' = incomplete
  @BuiltValueEnumConst(wireName: r'!')
  static const CreateTransactionRequestFlagEnum exclamation =
      _$createTransactionRequestFlagEnum_exclamation;

  static Serializer<CreateTransactionRequestFlagEnum> get serializer =>
      _$createTransactionRequestFlagEnumSerializer;

  const CreateTransactionRequestFlagEnum._(String name) : super(name);

  static BuiltSet<CreateTransactionRequestFlagEnum> get values =>
      _$createTransactionRequestFlagEnumValues;
  static CreateTransactionRequestFlagEnum valueOf(String name) =>
      _$createTransactionRequestFlagEnumValueOf(name);
}
