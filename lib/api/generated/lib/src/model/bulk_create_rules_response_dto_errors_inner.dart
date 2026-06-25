//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bulk_create_rules_response_dto_errors_inner.g.dart';

/// BulkCreateRulesResponseDtoErrorsInner
///
/// Properties:
/// * [index] 
/// * [message] 
@BuiltValue()
abstract class BulkCreateRulesResponseDtoErrorsInner implements Built<BulkCreateRulesResponseDtoErrorsInner, BulkCreateRulesResponseDtoErrorsInnerBuilder> {
  @BuiltValueField(wireName: r'index')
  num? get index;

  @BuiltValueField(wireName: r'message')
  String? get message;

  BulkCreateRulesResponseDtoErrorsInner._();

  factory BulkCreateRulesResponseDtoErrorsInner([void updates(BulkCreateRulesResponseDtoErrorsInnerBuilder b)]) = _$BulkCreateRulesResponseDtoErrorsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BulkCreateRulesResponseDtoErrorsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BulkCreateRulesResponseDtoErrorsInner> get serializer => _$BulkCreateRulesResponseDtoErrorsInnerSerializer();
}

class _$BulkCreateRulesResponseDtoErrorsInnerSerializer implements PrimitiveSerializer<BulkCreateRulesResponseDtoErrorsInner> {
  @override
  final Iterable<Type> types = const [BulkCreateRulesResponseDtoErrorsInner, _$BulkCreateRulesResponseDtoErrorsInner];

  @override
  final String wireName = r'BulkCreateRulesResponseDtoErrorsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BulkCreateRulesResponseDtoErrorsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.index != null) {
      yield r'index';
      yield serializers.serialize(
        object.index,
        specifiedType: const FullType(num),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BulkCreateRulesResponseDtoErrorsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BulkCreateRulesResponseDtoErrorsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.index = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BulkCreateRulesResponseDtoErrorsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BulkCreateRulesResponseDtoErrorsInnerBuilder();
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

