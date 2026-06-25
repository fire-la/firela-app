//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'enter_now_dto.g.dart';

/// EnterNowDto
///
/// Properties:
/// * [expenseAccount] - Override expense account (uses rule default if not provided)
/// * [paymentAccount] - Override payment account (uses rule default if not provided)
/// * [amount] - Override amount (uses expected amount if not provided)
/// * [payee] - Override payee (uses rule default if not provided)
/// * [narration] - Optional narration
@BuiltValue()
abstract class EnterNowDto implements Built<EnterNowDto, EnterNowDtoBuilder> {
  /// Override expense account (uses rule default if not provided)
  @BuiltValueField(wireName: r'expenseAccount')
  String? get expenseAccount;

  /// Override payment account (uses rule default if not provided)
  @BuiltValueField(wireName: r'paymentAccount')
  String? get paymentAccount;

  /// Override amount (uses expected amount if not provided)
  @BuiltValueField(wireName: r'amount')
  num? get amount;

  /// Override payee (uses rule default if not provided)
  @BuiltValueField(wireName: r'payee')
  String? get payee;

  /// Optional narration
  @BuiltValueField(wireName: r'narration')
  String? get narration;

  EnterNowDto._();

  factory EnterNowDto([void updates(EnterNowDtoBuilder b)]) = _$EnterNowDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EnterNowDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EnterNowDto> get serializer => _$EnterNowDtoSerializer();
}

class _$EnterNowDtoSerializer implements PrimitiveSerializer<EnterNowDto> {
  @override
  final Iterable<Type> types = const [EnterNowDto, _$EnterNowDto];

  @override
  final String wireName = r'EnterNowDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EnterNowDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.expenseAccount != null) {
      yield r'expenseAccount';
      yield serializers.serialize(
        object.expenseAccount,
        specifiedType: const FullType(String),
      );
    }
    if (object.paymentAccount != null) {
      yield r'paymentAccount';
      yield serializers.serialize(
        object.paymentAccount,
        specifiedType: const FullType(String),
      );
    }
    if (object.amount != null) {
      yield r'amount';
      yield serializers.serialize(
        object.amount,
        specifiedType: const FullType(num),
      );
    }
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
  }

  @override
  Object serialize(
    Serializers serializers,
    EnterNowDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EnterNowDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'expenseAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expenseAccount = valueDes;
          break;
        case r'paymentAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.paymentAccount = valueDes;
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.amount = valueDes;
          break;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EnterNowDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnterNowDtoBuilder();
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

