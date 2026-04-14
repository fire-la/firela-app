//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'posting_response_dto.g.dart';

/// PostingResponseDto
///
/// Properties:
/// * [account] - Account name
/// * [units] - Amount (may be null if interpolated)
/// * [currency] - Currency
@BuiltValue()
abstract class PostingResponseDto
    implements Built<PostingResponseDto, PostingResponseDtoBuilder> {
  /// Account name
  @BuiltValueField(wireName: r'account')
  String get account;

  /// Amount (may be null if interpolated)
  @BuiltValueField(wireName: r'units')
  String? get units;

  /// Currency
  @BuiltValueField(wireName: r'currency')
  String? get currency;

  PostingResponseDto._();

  factory PostingResponseDto([void updates(PostingResponseDtoBuilder b)]) =
      _$PostingResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostingResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostingResponseDto> get serializer =>
      _$PostingResponseDtoSerializer();
}

class _$PostingResponseDtoSerializer
    implements PrimitiveSerializer<PostingResponseDto> {
  @override
  final Iterable<Type> types = const [PostingResponseDto, _$PostingResponseDto];

  @override
  final String wireName = r'PostingResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostingResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'account';
    yield serializers.serialize(
      object.account,
      specifiedType: const FullType(String),
    );
    if (object.units != null) {
      yield r'units';
      yield serializers.serialize(
        object.units,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    PostingResponseDto object, {
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
    required PostingResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.account = valueDes;
          break;
        case r'units':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.units = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostingResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostingResponseDtoBuilder();
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
