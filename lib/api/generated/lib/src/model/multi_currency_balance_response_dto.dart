//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'multi_currency_balance_response_dto.g.dart';

/// MultiCurrencyBalanceResponseDto
///
/// Properties:
/// * [account] - Account name
/// * [balances] - Balances by currency
/// * [date] - Date of the balance calculation (ISO 8601)
@BuiltValue()
abstract class MultiCurrencyBalanceResponseDto
    implements
        Built<MultiCurrencyBalanceResponseDto,
            MultiCurrencyBalanceResponseDtoBuilder> {
  /// Account name
  @BuiltValueField(wireName: r'account')
  String get account;

  /// Balances by currency
  @BuiltValueField(wireName: r'balances')
  JsonObject get balances;

  /// Date of the balance calculation (ISO 8601)
  @BuiltValueField(wireName: r'date')
  String get date;

  MultiCurrencyBalanceResponseDto._();

  factory MultiCurrencyBalanceResponseDto(
          [void updates(MultiCurrencyBalanceResponseDtoBuilder b)]) =
      _$MultiCurrencyBalanceResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MultiCurrencyBalanceResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MultiCurrencyBalanceResponseDto> get serializer =>
      _$MultiCurrencyBalanceResponseDtoSerializer();
}

class _$MultiCurrencyBalanceResponseDtoSerializer
    implements PrimitiveSerializer<MultiCurrencyBalanceResponseDto> {
  @override
  final Iterable<Type> types = const [
    MultiCurrencyBalanceResponseDto,
    _$MultiCurrencyBalanceResponseDto
  ];

  @override
  final String wireName = r'MultiCurrencyBalanceResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MultiCurrencyBalanceResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'account';
    yield serializers.serialize(
      object.account,
      specifiedType: const FullType(String),
    );
    yield r'balances';
    yield serializers.serialize(
      object.balances,
      specifiedType: const FullType(JsonObject),
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
    MultiCurrencyBalanceResponseDto object, {
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
    required MultiCurrencyBalanceResponseDtoBuilder result,
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
        case r'balances':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.balances = valueDes;
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
  MultiCurrencyBalanceResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MultiCurrencyBalanceResponseDtoBuilder();
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
