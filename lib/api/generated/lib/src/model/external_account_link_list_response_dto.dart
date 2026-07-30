//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/external_account_link_response_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'external_account_link_list_response_dto.g.dart';

/// ExternalAccountLinkListResponseDto
///
/// Properties:
/// * [items] 
/// * [total] 
/// * [provider] - Filter by provider (query param)
@BuiltValue()
abstract class ExternalAccountLinkListResponseDto implements Built<ExternalAccountLinkListResponseDto, ExternalAccountLinkListResponseDtoBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<ExternalAccountLinkResponseDto> get items;

  @BuiltValueField(wireName: r'total')
  num get total;

  /// Filter by provider (query param)
  @BuiltValueField(wireName: r'provider')
  String? get provider;

  ExternalAccountLinkListResponseDto._();

  factory ExternalAccountLinkListResponseDto([void updates(ExternalAccountLinkListResponseDtoBuilder b)]) = _$ExternalAccountLinkListResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExternalAccountLinkListResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExternalAccountLinkListResponseDto> get serializer => _$ExternalAccountLinkListResponseDtoSerializer();
}

class _$ExternalAccountLinkListResponseDtoSerializer implements PrimitiveSerializer<ExternalAccountLinkListResponseDto> {
  @override
  final Iterable<Type> types = const [ExternalAccountLinkListResponseDto, _$ExternalAccountLinkListResponseDto];

  @override
  final String wireName = r'ExternalAccountLinkListResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExternalAccountLinkListResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(ExternalAccountLinkResponseDto)]),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(num),
    );
    if (object.provider != null) {
      yield r'provider';
      yield serializers.serialize(
        object.provider,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExternalAccountLinkListResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExternalAccountLinkListResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExternalAccountLinkResponseDto)]),
          ) as BuiltList<ExternalAccountLinkResponseDto>;
          result.items.replace(valueDes);
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.total = valueDes;
          break;
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.provider = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExternalAccountLinkListResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExternalAccountLinkListResponseDtoBuilder();
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

