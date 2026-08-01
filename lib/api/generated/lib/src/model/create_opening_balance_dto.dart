//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_opening_balance_dto.g.dart';

/// CreateOpeningBalanceDto
///
/// Properties:
/// * [amount] - Opening balance amount (non-negative)
/// * [currency] - Currency code
/// * [date] - Opening-balance date (defaults to now)
@BuiltValue()
abstract class CreateOpeningBalanceDto implements Built<CreateOpeningBalanceDto, CreateOpeningBalanceDtoBuilder> {
  /// Opening balance amount (non-negative)
  @BuiltValueField(wireName: r'amount')
  num get amount;

  /// Currency code
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Opening-balance date (defaults to now)
  @BuiltValueField(wireName: r'date')
  DateTime? get date;

  CreateOpeningBalanceDto._();

  factory CreateOpeningBalanceDto([void updates(CreateOpeningBalanceDtoBuilder b)]) = _$CreateOpeningBalanceDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateOpeningBalanceDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateOpeningBalanceDto> get serializer => _$CreateOpeningBalanceDtoSerializer();
}

class _$CreateOpeningBalanceDtoSerializer implements PrimitiveSerializer<CreateOpeningBalanceDto> {
  @override
  final Iterable<Type> types = const [CreateOpeningBalanceDto, _$CreateOpeningBalanceDto];

  @override
  final String wireName = r'CreateOpeningBalanceDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateOpeningBalanceDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'amount';
    yield serializers.serialize(
      object.amount,
      specifiedType: const FullType(num),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateOpeningBalanceDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateOpeningBalanceDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.amount = valueDes;
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
            specifiedType: const FullType(DateTime),
          ) as DateTime;
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
  CreateOpeningBalanceDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateOpeningBalanceDtoBuilder();
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

