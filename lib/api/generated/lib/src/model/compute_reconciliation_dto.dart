//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/actual_balance_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'compute_reconciliation_dto.g.dart';

/// ComputeReconciliationDto
///
/// Properties:
/// * [accountId] - BeanAccount id to reconcile.
/// * [asOfDate] - Assertion date (ISO 8601, e.g. \"2026-07-24\").
/// * [actualBalance] 
@BuiltValue()
abstract class ComputeReconciliationDto implements Built<ComputeReconciliationDto, ComputeReconciliationDtoBuilder> {
  /// BeanAccount id to reconcile.
  @BuiltValueField(wireName: r'accountId')
  String get accountId;

  /// Assertion date (ISO 8601, e.g. \"2026-07-24\").
  @BuiltValueField(wireName: r'asOfDate')
  String get asOfDate;

  @BuiltValueField(wireName: r'actualBalance')
  ActualBalanceDto get actualBalance;

  ComputeReconciliationDto._();

  factory ComputeReconciliationDto([void updates(ComputeReconciliationDtoBuilder b)]) = _$ComputeReconciliationDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ComputeReconciliationDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ComputeReconciliationDto> get serializer => _$ComputeReconciliationDtoSerializer();
}

class _$ComputeReconciliationDtoSerializer implements PrimitiveSerializer<ComputeReconciliationDto> {
  @override
  final Iterable<Type> types = const [ComputeReconciliationDto, _$ComputeReconciliationDto];

  @override
  final String wireName = r'ComputeReconciliationDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ComputeReconciliationDto object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ComputeReconciliationDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ComputeReconciliationDtoBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ComputeReconciliationDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComputeReconciliationDtoBuilder();
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

