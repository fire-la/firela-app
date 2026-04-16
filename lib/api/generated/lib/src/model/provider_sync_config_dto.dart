//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'provider_sync_config_dto.g.dart';

/// ProviderSyncConfigDto
///
/// Properties:
/// * [sourceAccount] - Source account for the first posting
/// * [defaultCurrency] - Default currency for transactions
/// * [defaultExpenseAccount] - Default expense account for the second posting
/// * [defaultIncomeAccount] - Default income account for the second posting
/// * [filterPending] - Filter pending transactions
@BuiltValue()
abstract class ProviderSyncConfigDto
    implements Built<ProviderSyncConfigDto, ProviderSyncConfigDtoBuilder> {
  /// Source account for the first posting
  @BuiltValueField(wireName: r'sourceAccount')
  String get sourceAccount;

  /// Default currency for transactions
  @BuiltValueField(wireName: r'defaultCurrency')
  String get defaultCurrency;

  /// Default expense account for the second posting
  @BuiltValueField(wireName: r'defaultExpenseAccount')
  String get defaultExpenseAccount;

  /// Default income account for the second posting
  @BuiltValueField(wireName: r'defaultIncomeAccount')
  String get defaultIncomeAccount;

  /// Filter pending transactions
  @BuiltValueField(wireName: r'filterPending')
  bool? get filterPending;

  ProviderSyncConfigDto._();

  factory ProviderSyncConfigDto(
      [void updates(ProviderSyncConfigDtoBuilder b)]) = _$ProviderSyncConfigDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProviderSyncConfigDtoBuilder b) =>
      b..filterPending = true;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProviderSyncConfigDto> get serializer =>
      _$ProviderSyncConfigDtoSerializer();
}

class _$ProviderSyncConfigDtoSerializer
    implements PrimitiveSerializer<ProviderSyncConfigDto> {
  @override
  final Iterable<Type> types = const [
    ProviderSyncConfigDto,
    _$ProviderSyncConfigDto
  ];

  @override
  final String wireName = r'ProviderSyncConfigDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProviderSyncConfigDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceAccount';
    yield serializers.serialize(
      object.sourceAccount,
      specifiedType: const FullType(String),
    );
    yield r'defaultCurrency';
    yield serializers.serialize(
      object.defaultCurrency,
      specifiedType: const FullType(String),
    );
    yield r'defaultExpenseAccount';
    yield serializers.serialize(
      object.defaultExpenseAccount,
      specifiedType: const FullType(String),
    );
    yield r'defaultIncomeAccount';
    yield serializers.serialize(
      object.defaultIncomeAccount,
      specifiedType: const FullType(String),
    );
    if (object.filterPending != null) {
      yield r'filterPending';
      yield serializers.serialize(
        object.filterPending,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProviderSyncConfigDto object, {
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
    required ProviderSyncConfigDtoBuilder result,
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
        case r'defaultCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.defaultCurrency = valueDes;
          break;
        case r'defaultExpenseAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.defaultExpenseAccount = valueDes;
          break;
        case r'defaultIncomeAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.defaultIncomeAccount = valueDes;
          break;
        case r'filterPending':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.filterPending = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProviderSyncConfigDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProviderSyncConfigDtoBuilder();
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
