//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/account_response_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_list_response_dto.g.dart';

/// AccountListResponseDto
///
/// Properties:
/// * [items] - Array of accounts
/// * [total] - Total number of accounts matching the query
@BuiltValue()
abstract class AccountListResponseDto
    implements Built<AccountListResponseDto, AccountListResponseDtoBuilder> {
  /// Array of accounts
  @BuiltValueField(wireName: r'items')
  BuiltList<AccountResponseDto> get items;

  /// Total number of accounts matching the query
  @BuiltValueField(wireName: r'total')
  num get total;

  AccountListResponseDto._();

  factory AccountListResponseDto(
          [void updates(AccountListResponseDtoBuilder b)]) =
      _$AccountListResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountListResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountListResponseDto> get serializer =>
      _$AccountListResponseDtoSerializer();
}

class _$AccountListResponseDtoSerializer
    implements PrimitiveSerializer<AccountListResponseDto> {
  @override
  final Iterable<Type> types = const [
    AccountListResponseDto,
    _$AccountListResponseDto
  ];

  @override
  final String wireName = r'AccountListResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountListResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(AccountResponseDto)]),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountListResponseDto object, {
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
    required AccountListResponseDtoBuilder result,
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
                const FullType(BuiltList, [FullType(AccountResponseDto)]),
          ) as BuiltList<AccountResponseDto>;
          result.items.replace(valueDes);
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
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
  AccountListResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountListResponseDtoBuilder();
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
