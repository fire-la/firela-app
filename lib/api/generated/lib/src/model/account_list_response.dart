//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/account_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_list_response.g.dart';

/// AccountListResponse
///
/// Properties:
/// * [items]
/// * [total]
@BuiltValue()
abstract class AccountListResponse
    implements Built<AccountListResponse, AccountListResponseBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<AccountResponse> get items;

  @BuiltValueField(wireName: r'total')
  int get total;

  AccountListResponse._();

  factory AccountListResponse([void updates(AccountListResponseBuilder b)]) =
      _$AccountListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountListResponse> get serializer =>
      _$AccountListResponseSerializer();
}

class _$AccountListResponseSerializer
    implements PrimitiveSerializer<AccountListResponse> {
  @override
  final Iterable<Type> types = const [
    AccountListResponse,
    _$AccountListResponse
  ];

  @override
  final String wireName = r'AccountListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(AccountResponse)]),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountListResponse object, {
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
    required AccountListResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(AccountResponse)]),
          ) as BuiltList<AccountResponse>;
          result.items.replace(valueDes);
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountListResponseBuilder();
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
