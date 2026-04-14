//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nlp_default_accounts_dto.g.dart';

/// NlpDefaultAccountsDto
///
/// Properties:
/// * [asset] - Default asset account
/// * [expense] - Default expense account
/// * [income] - Default income account
/// * [liability] - Default liability account
@BuiltValue()
abstract class NlpDefaultAccountsDto
    implements Built<NlpDefaultAccountsDto, NlpDefaultAccountsDtoBuilder> {
  /// Default asset account
  @BuiltValueField(wireName: r'asset')
  String get asset;

  /// Default expense account
  @BuiltValueField(wireName: r'expense')
  String get expense;

  /// Default income account
  @BuiltValueField(wireName: r'income')
  String get income;

  /// Default liability account
  @BuiltValueField(wireName: r'liability')
  String get liability;

  NlpDefaultAccountsDto._();

  factory NlpDefaultAccountsDto(
      [void updates(NlpDefaultAccountsDtoBuilder b)]) = _$NlpDefaultAccountsDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NlpDefaultAccountsDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NlpDefaultAccountsDto> get serializer =>
      _$NlpDefaultAccountsDtoSerializer();
}

class _$NlpDefaultAccountsDtoSerializer
    implements PrimitiveSerializer<NlpDefaultAccountsDto> {
  @override
  final Iterable<Type> types = const [
    NlpDefaultAccountsDto,
    _$NlpDefaultAccountsDto
  ];

  @override
  final String wireName = r'NlpDefaultAccountsDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NlpDefaultAccountsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'asset';
    yield serializers.serialize(
      object.asset,
      specifiedType: const FullType(String),
    );
    yield r'expense';
    yield serializers.serialize(
      object.expense,
      specifiedType: const FullType(String),
    );
    yield r'income';
    yield serializers.serialize(
      object.income,
      specifiedType: const FullType(String),
    );
    yield r'liability';
    yield serializers.serialize(
      object.liability,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NlpDefaultAccountsDto object, {
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
    required NlpDefaultAccountsDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'asset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.asset = valueDes;
          break;
        case r'expense':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expense = valueDes;
          break;
        case r'income':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.income = valueDes;
          break;
        case r'liability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.liability = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NlpDefaultAccountsDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NlpDefaultAccountsDtoBuilder();
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
