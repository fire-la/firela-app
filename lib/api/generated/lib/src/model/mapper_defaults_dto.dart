//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mapper_defaults_dto.g.dart';

/// MapperDefaultsDto
///
/// Properties:
/// * [sourceAccount] - Source account for transactions (Beancount format)
/// * [currency] - Default currency (ISO 4217 code)
/// * [expenseAccount] - Default expense account
/// * [incomeAccount] - Default income account
/// * [accountMapping] - Filename prefix to account mapping (for HK importers). Maps filename prefix to Beancount account path.
/// * [useCnh] - Convert CNY to CNH (offshore RMB) (for HK importers). Default: false.
/// * [methodAccountMapping] - Payment method to source account mapping. Maps payment method keywords to Beancount account paths. Used by Alipay/WeChat importers to determine sourceAccount based on payment method (e.g., HuaBei, CreditCard).
@BuiltValue()
abstract class MapperDefaultsDto
    implements Built<MapperDefaultsDto, MapperDefaultsDtoBuilder> {
  /// Source account for transactions (Beancount format)
  @BuiltValueField(wireName: r'sourceAccount')
  String get sourceAccount;

  /// Default currency (ISO 4217 code)
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Default expense account
  @BuiltValueField(wireName: r'expenseAccount')
  String? get expenseAccount;

  /// Default income account
  @BuiltValueField(wireName: r'incomeAccount')
  String? get incomeAccount;

  /// Filename prefix to account mapping (for HK importers). Maps filename prefix to Beancount account path.
  @BuiltValueField(wireName: r'accountMapping')
  JsonObject? get accountMapping;

  /// Convert CNY to CNH (offshore RMB) (for HK importers). Default: false.
  @BuiltValueField(wireName: r'useCnh')
  bool? get useCnh;

  /// Payment method to source account mapping. Maps payment method keywords to Beancount account paths. Used by Alipay/WeChat importers to determine sourceAccount based on payment method (e.g., HuaBei, CreditCard).
  @BuiltValueField(wireName: r'methodAccountMapping')
  JsonObject? get methodAccountMapping;

  MapperDefaultsDto._();

  factory MapperDefaultsDto([void updates(MapperDefaultsDtoBuilder b)]) =
      _$MapperDefaultsDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MapperDefaultsDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MapperDefaultsDto> get serializer =>
      _$MapperDefaultsDtoSerializer();
}

class _$MapperDefaultsDtoSerializer
    implements PrimitiveSerializer<MapperDefaultsDto> {
  @override
  final Iterable<Type> types = const [MapperDefaultsDto, _$MapperDefaultsDto];

  @override
  final String wireName = r'MapperDefaultsDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MapperDefaultsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceAccount';
    yield serializers.serialize(
      object.sourceAccount,
      specifiedType: const FullType(String),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
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
    if (object.accountMapping != null) {
      yield r'accountMapping';
      yield serializers.serialize(
        object.accountMapping,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.useCnh != null) {
      yield r'useCnh';
      yield serializers.serialize(
        object.useCnh,
        specifiedType: const FullType(bool),
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
    MapperDefaultsDto object, {
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
    required MapperDefaultsDtoBuilder result,
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
        case r'accountMapping':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.accountMapping = valueDes;
          break;
        case r'useCnh':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.useCnh = valueDes;
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
  MapperDefaultsDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MapperDefaultsDtoBuilder();
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
