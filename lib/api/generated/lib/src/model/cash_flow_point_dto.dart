//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cash_flow_point_dto.g.dart';

/// CashFlowPointDto
///
/// Properties:
/// * [month] - Month key (YYYY-MM)
/// * [income] - Income in base currency (absolute, converted)
/// * [expense] - Expense in base currency (absolute, converted)
/// * [netSavings] - netSavings = income − expense (savings positive)
@BuiltValue()
abstract class CashFlowPointDto implements Built<CashFlowPointDto, CashFlowPointDtoBuilder> {
  /// Month key (YYYY-MM)
  @BuiltValueField(wireName: r'month')
  String get month;

  /// Income in base currency (absolute, converted)
  @BuiltValueField(wireName: r'income')
  String get income;

  /// Expense in base currency (absolute, converted)
  @BuiltValueField(wireName: r'expense')
  String get expense;

  /// netSavings = income − expense (savings positive)
  @BuiltValueField(wireName: r'netSavings')
  String get netSavings;

  CashFlowPointDto._();

  factory CashFlowPointDto([void updates(CashFlowPointDtoBuilder b)]) = _$CashFlowPointDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CashFlowPointDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CashFlowPointDto> get serializer => _$CashFlowPointDtoSerializer();
}

class _$CashFlowPointDtoSerializer implements PrimitiveSerializer<CashFlowPointDto> {
  @override
  final Iterable<Type> types = const [CashFlowPointDto, _$CashFlowPointDto];

  @override
  final String wireName = r'CashFlowPointDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CashFlowPointDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'month';
    yield serializers.serialize(
      object.month,
      specifiedType: const FullType(String),
    );
    yield r'income';
    yield serializers.serialize(
      object.income,
      specifiedType: const FullType(String),
    );
    yield r'expense';
    yield serializers.serialize(
      object.expense,
      specifiedType: const FullType(String),
    );
    yield r'netSavings';
    yield serializers.serialize(
      object.netSavings,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CashFlowPointDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CashFlowPointDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'month':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.month = valueDes;
          break;
        case r'income':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.income = valueDes;
          break;
        case r'expense':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expense = valueDes;
          break;
        case r'netSavings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.netSavings = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CashFlowPointDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CashFlowPointDtoBuilder();
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

