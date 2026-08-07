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
/// * [asset] - Default OPEN asset account (MRU when multiple), or null when none/ambiguous
/// * [expense] - Default OPEN expense account (MRU when multiple), or null when none/ambiguous
/// * [income] - Default OPEN income account (MRU when multiple), or null when none/ambiguous
/// * [liability] - Default OPEN liability account (MRU when multiple), or null when none/ambiguous
@BuiltValue()
abstract class NlpDefaultAccountsDto implements Built<NlpDefaultAccountsDto, NlpDefaultAccountsDtoBuilder> {
  /// Default OPEN asset account (MRU when multiple), or null when none/ambiguous
  @BuiltValueField(wireName: r'asset')
  String? get asset;

  /// Default OPEN expense account (MRU when multiple), or null when none/ambiguous
  @BuiltValueField(wireName: r'expense')
  String? get expense;

  /// Default OPEN income account (MRU when multiple), or null when none/ambiguous
  @BuiltValueField(wireName: r'income')
  String? get income;

  /// Default OPEN liability account (MRU when multiple), or null when none/ambiguous
  @BuiltValueField(wireName: r'liability')
  String? get liability;

  NlpDefaultAccountsDto._();

  factory NlpDefaultAccountsDto([void updates(NlpDefaultAccountsDtoBuilder b)]) = _$NlpDefaultAccountsDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NlpDefaultAccountsDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NlpDefaultAccountsDto> get serializer => _$NlpDefaultAccountsDtoSerializer();
}

class _$NlpDefaultAccountsDtoSerializer implements PrimitiveSerializer<NlpDefaultAccountsDto> {
  @override
  final Iterable<Type> types = const [NlpDefaultAccountsDto, _$NlpDefaultAccountsDto];

  @override
  final String wireName = r'NlpDefaultAccountsDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NlpDefaultAccountsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'asset';
    yield object.asset == null ? null : serializers.serialize(
      object.asset,
      specifiedType: const FullType.nullable(String),
    );
    yield r'expense';
    yield object.expense == null ? null : serializers.serialize(
      object.expense,
      specifiedType: const FullType.nullable(String),
    );
    yield r'income';
    yield object.income == null ? null : serializers.serialize(
      object.income,
      specifiedType: const FullType.nullable(String),
    );
    yield r'liability';
    yield object.liability == null ? null : serializers.serialize(
      object.liability,
      specifiedType: const FullType.nullable(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NlpDefaultAccountsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
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
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.asset = valueDes;
          break;
        case r'expense':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.expense = valueDes;
          break;
        case r'income':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.income = valueDes;
          break;
        case r'liability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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

