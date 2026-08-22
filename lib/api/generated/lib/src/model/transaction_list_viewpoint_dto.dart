//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transaction_list_viewpoint_dto.g.dart';

/// TransactionListViewpointDto
///
/// Properties:
/// * [type] - Viewpoint type (only category drill-down carries a viewpoint today)
/// * [flow] - Flow root the category account set is restricted to
@BuiltValue()
abstract class TransactionListViewpointDto implements Built<TransactionListViewpointDto, TransactionListViewpointDtoBuilder> {
  /// Viewpoint type (only category drill-down carries a viewpoint today)
  @BuiltValueField(wireName: r'type')
  TransactionListViewpointDtoTypeEnum get type;
  // enum typeEnum {  category,  };

  /// Flow root the category account set is restricted to
  @BuiltValueField(wireName: r'flow')
  TransactionListViewpointDtoFlowEnum get flow;
  // enum flowEnum {  income,  expense,  };

  TransactionListViewpointDto._();

  factory TransactionListViewpointDto([void updates(TransactionListViewpointDtoBuilder b)]) = _$TransactionListViewpointDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TransactionListViewpointDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TransactionListViewpointDto> get serializer => _$TransactionListViewpointDtoSerializer();
}

class _$TransactionListViewpointDtoSerializer implements PrimitiveSerializer<TransactionListViewpointDto> {
  @override
  final Iterable<Type> types = const [TransactionListViewpointDto, _$TransactionListViewpointDto];

  @override
  final String wireName = r'TransactionListViewpointDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TransactionListViewpointDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(TransactionListViewpointDtoTypeEnum),
    );
    yield r'flow';
    yield serializers.serialize(
      object.flow,
      specifiedType: const FullType(TransactionListViewpointDtoFlowEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TransactionListViewpointDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TransactionListViewpointDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TransactionListViewpointDtoTypeEnum),
          ) as TransactionListViewpointDtoTypeEnum;
          result.type = valueDes;
          break;
        case r'flow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TransactionListViewpointDtoFlowEnum),
          ) as TransactionListViewpointDtoFlowEnum;
          result.flow = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TransactionListViewpointDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransactionListViewpointDtoBuilder();
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

class TransactionListViewpointDtoTypeEnum extends EnumClass {

  /// Viewpoint type (only category drill-down carries a viewpoint today)
  @BuiltValueEnumConst(wireName: r'category')
  static const TransactionListViewpointDtoTypeEnum category = _$transactionListViewpointDtoTypeEnum_category;

  static Serializer<TransactionListViewpointDtoTypeEnum> get serializer => _$transactionListViewpointDtoTypeEnumSerializer;

  const TransactionListViewpointDtoTypeEnum._(String name): super(name);

  static BuiltSet<TransactionListViewpointDtoTypeEnum> get values => _$transactionListViewpointDtoTypeEnumValues;
  static TransactionListViewpointDtoTypeEnum valueOf(String name) => _$transactionListViewpointDtoTypeEnumValueOf(name);
}

class TransactionListViewpointDtoFlowEnum extends EnumClass {

  /// Flow root the category account set is restricted to
  @BuiltValueEnumConst(wireName: r'income')
  static const TransactionListViewpointDtoFlowEnum income = _$transactionListViewpointDtoFlowEnum_income;
  /// Flow root the category account set is restricted to
  @BuiltValueEnumConst(wireName: r'expense')
  static const TransactionListViewpointDtoFlowEnum expense = _$transactionListViewpointDtoFlowEnum_expense;

  static Serializer<TransactionListViewpointDtoFlowEnum> get serializer => _$transactionListViewpointDtoFlowEnumSerializer;

  const TransactionListViewpointDtoFlowEnum._(String name): super(name);

  static BuiltSet<TransactionListViewpointDtoFlowEnum> get values => _$transactionListViewpointDtoFlowEnumValues;
  static TransactionListViewpointDtoFlowEnum valueOf(String name) => _$transactionListViewpointDtoFlowEnumValueOf(name);
}

