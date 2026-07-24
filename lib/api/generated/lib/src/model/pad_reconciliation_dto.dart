//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/actual_balance_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pad_reconciliation_dto.g.dart';

/// PadReconciliationDto
///
/// Properties:
/// * [accountId] - BeanAccount id to reconcile.
/// * [asOfDate] - Assertion date (ISO 8601, e.g. \"2026-07-24\").
/// * [actualBalance] 
/// * [sourceAccount] - Pad source account. Defaults to Equity:Opening-Balances (official Beancount convention).
@BuiltValue()
abstract class PadReconciliationDto implements Built<PadReconciliationDto, PadReconciliationDtoBuilder> {
  /// BeanAccount id to reconcile.
  @BuiltValueField(wireName: r'accountId')
  String get accountId;

  /// Assertion date (ISO 8601, e.g. \"2026-07-24\").
  @BuiltValueField(wireName: r'asOfDate')
  String get asOfDate;

  @BuiltValueField(wireName: r'actualBalance')
  ActualBalanceDto get actualBalance;

  /// Pad source account. Defaults to Equity:Opening-Balances (official Beancount convention).
  @BuiltValueField(wireName: r'sourceAccount')
  String? get sourceAccount;

  PadReconciliationDto._();

  factory PadReconciliationDto([void updates(PadReconciliationDtoBuilder b)]) = _$PadReconciliationDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PadReconciliationDtoBuilder b) => b
      ..sourceAccount = 'Equity:Opening-Balances';

  @BuiltValueSerializer(custom: true)
  static Serializer<PadReconciliationDto> get serializer => _$PadReconciliationDtoSerializer();
}

class _$PadReconciliationDtoSerializer implements PrimitiveSerializer<PadReconciliationDto> {
  @override
  final Iterable<Type> types = const [PadReconciliationDto, _$PadReconciliationDto];

  @override
  final String wireName = r'PadReconciliationDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PadReconciliationDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accountId';
    yield serializers.serialize(
      object.accountId,
      specifiedType: const FullType(String),
    );
    yield r'asOfDate';
    yield serializers.serialize(
      object.asOfDate,
      specifiedType: const FullType(String),
    );
    yield r'actualBalance';
    yield serializers.serialize(
      object.actualBalance,
      specifiedType: const FullType(ActualBalanceDto),
    );
    if (object.sourceAccount != null) {
      yield r'sourceAccount';
      yield serializers.serialize(
        object.sourceAccount,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PadReconciliationDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PadReconciliationDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accountId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountId = valueDes;
          break;
        case r'asOfDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.asOfDate = valueDes;
          break;
        case r'actualBalance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ActualBalanceDto),
          ) as ActualBalanceDto;
          result.actualBalance.replace(valueDes);
          break;
        case r'sourceAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceAccount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PadReconciliationDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PadReconciliationDtoBuilder();
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

