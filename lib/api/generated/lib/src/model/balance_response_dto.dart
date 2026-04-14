//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'balance_response_dto.g.dart';

/// BalanceResponseDto
///
/// Properties:
/// * [account] - Account name
/// * [balance] - Balance amount (decimal string for precision)
/// * [currency] - Currency code
/// * [date] - Date of the balance calculation (ISO 8601)
@BuiltValue()
abstract class BalanceResponseDto
    implements Built<BalanceResponseDto, BalanceResponseDtoBuilder> {
  /// Account name
  @BuiltValueField(wireName: r'account')
  String get account;

  /// Balance amount (decimal string for precision)
  @BuiltValueField(wireName: r'balance')
  String get balance;

  /// Currency code
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Date of the balance calculation (ISO 8601)
  @BuiltValueField(wireName: r'date')
  String get date;

  BalanceResponseDto._();

  factory BalanceResponseDto([void updates(BalanceResponseDtoBuilder b)]) =
      _$BalanceResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BalanceResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BalanceResponseDto> get serializer =>
      _$BalanceResponseDtoSerializer();
}

class _$BalanceResponseDtoSerializer
    implements PrimitiveSerializer<BalanceResponseDto> {
  @override
  final Iterable<Type> types = const [BalanceResponseDto, _$BalanceResponseDto];

  @override
  final String wireName = r'BalanceResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BalanceResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'account';
    yield serializers.serialize(
      object.account,
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
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BalanceResponseDto object, {
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
    required BalanceResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.account = valueDes;
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
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.date = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BalanceResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BalanceResponseDtoBuilder();
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
