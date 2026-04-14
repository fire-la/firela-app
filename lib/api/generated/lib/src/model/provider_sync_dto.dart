//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/provider_sync_config_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'provider_sync_dto.g.dart';

/// ProviderSyncDto
///
/// Properties:
/// * [config]
/// * [transactions] - Raw transactions from provider
/// * [provider] - Provider name (already in URL path, optional here for reference)
/// * [syncId] - Unique sync identifier for idempotency
@BuiltValue()
abstract class ProviderSyncDto
    implements Built<ProviderSyncDto, ProviderSyncDtoBuilder> {
  @BuiltValueField(wireName: r'config')
  ProviderSyncConfigDto get config;

  /// Raw transactions from provider
  @BuiltValueField(wireName: r'transactions')
  BuiltList get transactions;

  /// Provider name (already in URL path, optional here for reference)
  @BuiltValueField(wireName: r'provider')
  String? get provider;

  /// Unique sync identifier for idempotency
  @BuiltValueField(wireName: r'syncId')
  String? get syncId;

  ProviderSyncDto._();

  factory ProviderSyncDto([void updates(ProviderSyncDtoBuilder b)]) =
      _$ProviderSyncDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProviderSyncDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProviderSyncDto> get serializer =>
      _$ProviderSyncDtoSerializer();
}

class _$ProviderSyncDtoSerializer
    implements PrimitiveSerializer<ProviderSyncDto> {
  @override
  final Iterable<Type> types = const [ProviderSyncDto, _$ProviderSyncDto];

  @override
  final String wireName = r'ProviderSyncDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProviderSyncDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'config';
    yield serializers.serialize(
      object.config,
      specifiedType: const FullType(ProviderSyncConfigDto),
    );
    yield r'transactions';
    yield serializers.serialize(
      object.transactions,
      specifiedType: const FullType(BuiltList),
    );
    if (object.provider != null) {
      yield r'provider';
      yield serializers.serialize(
        object.provider,
        specifiedType: const FullType(String),
      );
    }
    if (object.syncId != null) {
      yield r'syncId';
      yield serializers.serialize(
        object.syncId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProviderSyncDto object, {
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
    required ProviderSyncDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'config':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProviderSyncConfigDto),
          ) as ProviderSyncConfigDto;
          result.config.replace(valueDes);
          break;
        case r'transactions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList),
          ) as BuiltList;
          result.transactions = valueDes;
          break;
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.provider = valueDes;
          break;
        case r'syncId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.syncId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProviderSyncDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProviderSyncDtoBuilder();
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
