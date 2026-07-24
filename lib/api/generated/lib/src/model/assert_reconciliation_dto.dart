//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/actual_balance_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'assert_reconciliation_dto.g.dart';

/// AssertReconciliationDto
///
/// Properties:
/// * [accountId] - BeanAccount id to reconcile.
/// * [asOfDate] - Assertion date (ISO 8601, e.g. \"2026-07-24\").
/// * [actualBalance] 
/// * [tolerance] - Optional explicit tolerance override. Omit to infer from amount precision (Beancount default).
@BuiltValue()
abstract class AssertReconciliationDto implements Built<AssertReconciliationDto, AssertReconciliationDtoBuilder> {
  /// BeanAccount id to reconcile.
  @BuiltValueField(wireName: r'accountId')
  String get accountId;

  /// Assertion date (ISO 8601, e.g. \"2026-07-24\").
  @BuiltValueField(wireName: r'asOfDate')
  String get asOfDate;

  @BuiltValueField(wireName: r'actualBalance')
  ActualBalanceDto get actualBalance;

  /// Optional explicit tolerance override. Omit to infer from amount precision (Beancount default).
  @BuiltValueField(wireName: r'tolerance')
  String? get tolerance;

  AssertReconciliationDto._();

  factory AssertReconciliationDto([void updates(AssertReconciliationDtoBuilder b)]) = _$AssertReconciliationDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssertReconciliationDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssertReconciliationDto> get serializer => _$AssertReconciliationDtoSerializer();
}

class _$AssertReconciliationDtoSerializer implements PrimitiveSerializer<AssertReconciliationDto> {
  @override
  final Iterable<Type> types = const [AssertReconciliationDto, _$AssertReconciliationDto];

  @override
  final String wireName = r'AssertReconciliationDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssertReconciliationDto object, {
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
    if (object.tolerance != null) {
      yield r'tolerance';
      yield serializers.serialize(
        object.tolerance,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AssertReconciliationDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AssertReconciliationDtoBuilder result,
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
        case r'tolerance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tolerance = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AssertReconciliationDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssertReconciliationDtoBuilder();
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

