//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_item_dto.g.dart';

/// AccountItemDto
///
/// Properties:
/// * [id] - Account ID
/// * [name] - Full account name
/// * [displayName] - Display name (last part of account path)
/// * [balance] - Account balance
/// * [currency] - Currency code
@BuiltValue()
abstract class AccountItemDto
    implements Built<AccountItemDto, AccountItemDtoBuilder> {
  /// Account ID
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Full account name
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Display name (last part of account path)
  @BuiltValueField(wireName: r'displayName')
  String get displayName;

  /// Account balance
  @BuiltValueField(wireName: r'balance')
  String get balance;

  /// Currency code
  @BuiltValueField(wireName: r'currency')
  String get currency;

  AccountItemDto._();

  factory AccountItemDto([void updates(AccountItemDtoBuilder b)]) =
      _$AccountItemDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountItemDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountItemDto> get serializer =>
      _$AccountItemDtoSerializer();
}

class _$AccountItemDtoSerializer
    implements PrimitiveSerializer<AccountItemDto> {
  @override
  final Iterable<Type> types = const [AccountItemDto, _$AccountItemDto];

  @override
  final String wireName = r'AccountItemDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountItemDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'displayName';
    yield serializers.serialize(
      object.displayName,
      specifiedType: const FullType(String),
    );
    yield r'balance';
    yield serializers.serialize(
      object.balance,
      specifiedType: const FullType(String),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountItemDto object, {
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
    required AccountItemDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'displayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'balance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.balance = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountItemDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountItemDtoBuilder();
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
