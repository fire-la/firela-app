//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'balance_by_currency_dto.g.dart';

/// BalanceByCurrencyDto
///
/// Properties:
/// * [currency] - ISO 4217 currency code
/// * [balance] - Balance amount
@BuiltValue()
abstract class BalanceByCurrencyDto
    implements Built<BalanceByCurrencyDto, BalanceByCurrencyDtoBuilder> {
  /// ISO 4217 currency code
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Balance amount
  @BuiltValueField(wireName: r'balance')
  String get balance;

  BalanceByCurrencyDto._();

  factory BalanceByCurrencyDto([void updates(BalanceByCurrencyDtoBuilder b)]) =
      _$BalanceByCurrencyDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BalanceByCurrencyDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BalanceByCurrencyDto> get serializer =>
      _$BalanceByCurrencyDtoSerializer();
}

class _$BalanceByCurrencyDtoSerializer
    implements PrimitiveSerializer<BalanceByCurrencyDto> {
  @override
  final Iterable<Type> types = const [
    BalanceByCurrencyDto,
    _$BalanceByCurrencyDto
  ];

  @override
  final String wireName = r'BalanceByCurrencyDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BalanceByCurrencyDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    yield r'balance';
    yield serializers.serialize(
      object.balance,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BalanceByCurrencyDto object, {
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
    required BalanceByCurrencyDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'balance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.balance = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BalanceByCurrencyDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BalanceByCurrencyDtoBuilder();
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
