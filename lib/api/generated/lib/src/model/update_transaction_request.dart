//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_transaction_request.g.dart';

/// UpdateTransactionRequest
///
/// Properties:
/// * [payee]
/// * [narration]
/// * [tags]
/// * [links]
/// * [meta]
@BuiltValue()
abstract class UpdateTransactionRequest
    implements
        Built<UpdateTransactionRequest, UpdateTransactionRequestBuilder> {
  @BuiltValueField(wireName: r'payee')
  String? get payee;

  @BuiltValueField(wireName: r'narration')
  String? get narration;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'links')
  BuiltList<String>? get links;

  @BuiltValueField(wireName: r'meta')
  BuiltMap<String, JsonObject?>? get meta;

  UpdateTransactionRequest._();

  factory UpdateTransactionRequest(
          [void updates(UpdateTransactionRequestBuilder b)]) =
      _$UpdateTransactionRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateTransactionRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateTransactionRequest> get serializer =>
      _$UpdateTransactionRequestSerializer();
}

class _$UpdateTransactionRequestSerializer
    implements PrimitiveSerializer<UpdateTransactionRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateTransactionRequest,
    _$UpdateTransactionRequest
  ];

  @override
  final String wireName = r'UpdateTransactionRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateTransactionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.payee != null) {
      yield r'payee';
      yield serializers.serialize(
        object.payee,
        specifiedType: const FullType(String),
      );
    }
    if (object.narration != null) {
      yield r'narration';
      yield serializers.serialize(
        object.narration,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateTransactionRequest object, {
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
    required UpdateTransactionRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.meta.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateTransactionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTransactionRequestBuilder();
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
