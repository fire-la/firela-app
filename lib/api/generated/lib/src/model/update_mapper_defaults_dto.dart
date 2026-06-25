//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_mapper_defaults_dto.g.dart';

/// UpdateMapperDefaultsDto
///
/// Properties:
/// * [sourceAccount] - Source account for transactions (Beancount format)
/// * [currency] - Default currency (ISO 4217 code)
/// * [expenseAccount] - Default expense account (optional)
/// * [incomeAccount] - Default income account (optional)
/// * [methodAccountMapping] - Payment method to source account mapping. Maps payment method keywords to Beancount account paths. Used by Alipay/WeChat importers to determine sourceAccount based on payment method (e.g., HuaBei, CreditCard).
@BuiltValue()
abstract class UpdateMapperDefaultsDto implements Built<UpdateMapperDefaultsDto, UpdateMapperDefaultsDtoBuilder> {
  /// Source account for transactions (Beancount format)
  @BuiltValueField(wireName: r'sourceAccount')
  String? get sourceAccount;

  /// Default currency (ISO 4217 code)
  @BuiltValueField(wireName: r'currency')
  String? get currency;

  /// Default expense account (optional)
  @BuiltValueField(wireName: r'expenseAccount')
  String? get expenseAccount;

  /// Default income account (optional)
  @BuiltValueField(wireName: r'incomeAccount')
  String? get incomeAccount;

  /// Payment method to source account mapping. Maps payment method keywords to Beancount account paths. Used by Alipay/WeChat importers to determine sourceAccount based on payment method (e.g., HuaBei, CreditCard).
  @BuiltValueField(wireName: r'methodAccountMapping')
  JsonObject? get methodAccountMapping;

  UpdateMapperDefaultsDto._();

  factory UpdateMapperDefaultsDto([void updates(UpdateMapperDefaultsDtoBuilder b)]) = _$UpdateMapperDefaultsDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateMapperDefaultsDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateMapperDefaultsDto> get serializer => _$UpdateMapperDefaultsDtoSerializer();
}

class _$UpdateMapperDefaultsDtoSerializer implements PrimitiveSerializer<UpdateMapperDefaultsDto> {
  @override
  final Iterable<Type> types = const [UpdateMapperDefaultsDto, _$UpdateMapperDefaultsDto];

  @override
  final String wireName = r'UpdateMapperDefaultsDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateMapperDefaultsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sourceAccount != null) {
      yield r'sourceAccount';
      yield serializers.serialize(
        object.sourceAccount,
        specifiedType: const FullType(String),
      );
    }
    if (object.currency != null) {
      yield r'currency';
      yield serializers.serialize(
        object.currency,
        specifiedType: const FullType(String),
      );
    }
    if (object.expenseAccount != null) {
      yield r'expenseAccount';
      yield serializers.serialize(
        object.expenseAccount,
        specifiedType: const FullType(String),
      );
    }
    if (object.incomeAccount != null) {
      yield r'incomeAccount';
      yield serializers.serialize(
        object.incomeAccount,
        specifiedType: const FullType(String),
      );
    }
    if (object.methodAccountMapping != null) {
      yield r'methodAccountMapping';
      yield serializers.serialize(
        object.methodAccountMapping,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateMapperDefaultsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateMapperDefaultsDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceAccount = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'expenseAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expenseAccount = valueDes;
          break;
        case r'incomeAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.incomeAccount = valueDes;
          break;
        case r'methodAccountMapping':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.methodAccountMapping = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateMapperDefaultsDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateMapperDefaultsDtoBuilder();
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

