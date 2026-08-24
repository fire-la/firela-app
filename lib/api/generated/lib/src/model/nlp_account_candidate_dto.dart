//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nlp_account_candidate_dto.g.dart';

/// NlpAccountCandidateDto
///
/// Properties:
/// * [path] - Canonical beancount account path (echo back on selection)
/// * [name] - Localized display name (ADR-0114 read-time projection, user locale)
@BuiltValue()
abstract class NlpAccountCandidateDto implements Built<NlpAccountCandidateDto, NlpAccountCandidateDtoBuilder> {
  /// Canonical beancount account path (echo back on selection)
  @BuiltValueField(wireName: r'path')
  String get path;

  /// Localized display name (ADR-0114 read-time projection, user locale)
  @BuiltValueField(wireName: r'name')
  String get name;

  NlpAccountCandidateDto._();

  factory NlpAccountCandidateDto([void updates(NlpAccountCandidateDtoBuilder b)]) = _$NlpAccountCandidateDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NlpAccountCandidateDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NlpAccountCandidateDto> get serializer => _$NlpAccountCandidateDtoSerializer();
}

class _$NlpAccountCandidateDtoSerializer implements PrimitiveSerializer<NlpAccountCandidateDto> {
  @override
  final Iterable<Type> types = const [NlpAccountCandidateDto, _$NlpAccountCandidateDto];

  @override
  final String wireName = r'NlpAccountCandidateDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NlpAccountCandidateDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NlpAccountCandidateDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NlpAccountCandidateDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NlpAccountCandidateDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NlpAccountCandidateDtoBuilder();
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

