//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nlp_suggested_payee_dto.g.dart';

/// NlpSuggestedPayeeDto
///
/// Properties:
/// * [id] - Payee ID
/// * [name] - Payee name
/// * [category] - Payee category
/// * [source_] - Source of the payee
/// * [payeeProfileId] - PayeeProfile ID (if matched from global)
@BuiltValue(instantiable: false)
abstract class NlpSuggestedPayeeDto {
  /// Payee ID
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Payee name
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Payee category
  @BuiltValueField(wireName: r'category')
  String? get category;

  /// Source of the payee
  @BuiltValueField(wireName: r'source')
  NlpSuggestedPayeeDtoSource_Enum? get source_;
  // enum source_Enum {  user,  global,  };

  /// PayeeProfile ID (if matched from global)
  @BuiltValueField(wireName: r'payeeProfileId')
  String? get payeeProfileId;

  @BuiltValueSerializer(custom: true)
  static Serializer<NlpSuggestedPayeeDto> get serializer =>
      _$NlpSuggestedPayeeDtoSerializer();
}

class _$NlpSuggestedPayeeDtoSerializer
    implements PrimitiveSerializer<NlpSuggestedPayeeDto> {
  @override
  final Iterable<Type> types = const [NlpSuggestedPayeeDto];

  @override
  final String wireName = r'NlpSuggestedPayeeDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NlpSuggestedPayeeDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType(String),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(NlpSuggestedPayeeDtoSource_Enum),
      );
    }
    if (object.payeeProfileId != null) {
      yield r'payeeProfileId';
      yield serializers.serialize(
        object.payeeProfileId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NlpSuggestedPayeeDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  @override
  NlpSuggestedPayeeDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized,
            specifiedType: FullType($NlpSuggestedPayeeDto))
        as $NlpSuggestedPayeeDto;
  }
}

/// a concrete implementation of [NlpSuggestedPayeeDto], since [NlpSuggestedPayeeDto] is not instantiable
@BuiltValue(instantiable: true)
abstract class $NlpSuggestedPayeeDto
    implements
        NlpSuggestedPayeeDto,
        Built<$NlpSuggestedPayeeDto, $NlpSuggestedPayeeDtoBuilder> {
  $NlpSuggestedPayeeDto._();

  factory $NlpSuggestedPayeeDto(
          [void Function($NlpSuggestedPayeeDtoBuilder)? updates]) =
      _$$NlpSuggestedPayeeDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($NlpSuggestedPayeeDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$NlpSuggestedPayeeDto> get serializer =>
      _$$NlpSuggestedPayeeDtoSerializer();
}

class _$$NlpSuggestedPayeeDtoSerializer
    implements PrimitiveSerializer<$NlpSuggestedPayeeDto> {
  @override
  final Iterable<Type> types = const [
    $NlpSuggestedPayeeDto,
    _$$NlpSuggestedPayeeDto
  ];

  @override
  final String wireName = r'$NlpSuggestedPayeeDto';

  @override
  Object serialize(
    Serializers serializers,
    $NlpSuggestedPayeeDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object,
        specifiedType: FullType(NlpSuggestedPayeeDto))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NlpSuggestedPayeeDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.category = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NlpSuggestedPayeeDtoSource_Enum),
          ) as NlpSuggestedPayeeDtoSource_Enum;
          result.source_ = valueDes;
          break;
        case r'payeeProfileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.payeeProfileId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $NlpSuggestedPayeeDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $NlpSuggestedPayeeDtoBuilder();
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

class NlpSuggestedPayeeDtoSource_Enum extends EnumClass {
  /// Source of the payee
  @BuiltValueEnumConst(wireName: r'user')
  static const NlpSuggestedPayeeDtoSource_Enum user =
      _$nlpSuggestedPayeeDtoSourceEnum_user;

  /// Source of the payee
  @BuiltValueEnumConst(wireName: r'global', fallback: true)
  static const NlpSuggestedPayeeDtoSource_Enum global =
      _$nlpSuggestedPayeeDtoSourceEnum_global;

  static Serializer<NlpSuggestedPayeeDtoSource_Enum> get serializer =>
      _$nlpSuggestedPayeeDtoSourceEnumSerializer;

  const NlpSuggestedPayeeDtoSource_Enum._(String name) : super(name);

  static BuiltSet<NlpSuggestedPayeeDtoSource_Enum> get values =>
      _$nlpSuggestedPayeeDtoSourceEnumValues;
  static NlpSuggestedPayeeDtoSource_Enum valueOf(String name) =>
      _$nlpSuggestedPayeeDtoSourceEnumValueOf(name);
}
