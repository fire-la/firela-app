//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_exchange_rate_warning_dto.g.dart';

/// AccountExchangeRateWarningDto
///
/// Properties:
/// * [type] - Warning type
/// * [currency] - Currency without exchange rate
/// * [accounts] - Affected account paths
/// * [totalAmount] - Total amount in this currency
@BuiltValue()
abstract class AccountExchangeRateWarningDto
    implements
        Built<AccountExchangeRateWarningDto,
            AccountExchangeRateWarningDtoBuilder> {
  /// Warning type
  @BuiltValueField(wireName: r'type')
  String get type;

  /// Currency without exchange rate
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Affected account paths
  @BuiltValueField(wireName: r'accounts')
  BuiltList<String> get accounts;

  /// Total amount in this currency
  @BuiltValueField(wireName: r'totalAmount')
  String get totalAmount;

  AccountExchangeRateWarningDto._();

  factory AccountExchangeRateWarningDto(
          [void updates(AccountExchangeRateWarningDtoBuilder b)]) =
      _$AccountExchangeRateWarningDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountExchangeRateWarningDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountExchangeRateWarningDto> get serializer =>
      _$AccountExchangeRateWarningDtoSerializer();
}

class _$AccountExchangeRateWarningDtoSerializer
    implements PrimitiveSerializer<AccountExchangeRateWarningDto> {
  @override
  final Iterable<Type> types = const [
    AccountExchangeRateWarningDto,
    _$AccountExchangeRateWarningDto
  ];

  @override
  final String wireName = r'AccountExchangeRateWarningDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountExchangeRateWarningDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    yield r'accounts';
    yield serializers.serialize(
      object.accounts,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'totalAmount';
    yield serializers.serialize(
      object.totalAmount,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountExchangeRateWarningDto object, {
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
    required AccountExchangeRateWarningDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'accounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.accounts.replace(valueDes);
          break;
        case r'totalAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.totalAmount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountExchangeRateWarningDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountExchangeRateWarningDtoBuilder();
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
