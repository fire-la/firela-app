//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/nlp_suggested_payee_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nlp_payee_confirmation_data_dto_suggested_payee.g.dart';

/// Suggested payee to use (null when no similar payees found)
///
/// Properties:
/// * [id] - Payee ID
/// * [name] - Payee name
/// * [category] - Payee category
/// * [source_] - Source of the payee
/// * [payeeProfileId] - PayeeProfile ID (if matched from global)
@BuiltValue()
abstract class NlpPayeeConfirmationDataDtoSuggestedPayee
    implements
        NlpSuggestedPayeeDto,
        Built<NlpPayeeConfirmationDataDtoSuggestedPayee,
            NlpPayeeConfirmationDataDtoSuggestedPayeeBuilder> {
  NlpPayeeConfirmationDataDtoSuggestedPayee._();

  factory NlpPayeeConfirmationDataDtoSuggestedPayee(
          [void updates(NlpPayeeConfirmationDataDtoSuggestedPayeeBuilder b)]) =
      _$NlpPayeeConfirmationDataDtoSuggestedPayee;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NlpPayeeConfirmationDataDtoSuggestedPayeeBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NlpPayeeConfirmationDataDtoSuggestedPayee> get serializer =>
      _$NlpPayeeConfirmationDataDtoSuggestedPayeeSerializer();
}

class _$NlpPayeeConfirmationDataDtoSuggestedPayeeSerializer
    implements PrimitiveSerializer<NlpPayeeConfirmationDataDtoSuggestedPayee> {
  @override
  final Iterable<Type> types = const [
    NlpPayeeConfirmationDataDtoSuggestedPayee,
    _$NlpPayeeConfirmationDataDtoSuggestedPayee
  ];

  @override
  final String wireName = r'NlpPayeeConfirmationDataDtoSuggestedPayee';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NlpPayeeConfirmationDataDtoSuggestedPayee object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
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
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NlpPayeeConfirmationDataDtoSuggestedPayee object, {
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
    required NlpPayeeConfirmationDataDtoSuggestedPayeeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
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
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.category = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NlpPayeeConfirmationDataDtoSuggestedPayee deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NlpPayeeConfirmationDataDtoSuggestedPayeeBuilder();
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

class NlpPayeeConfirmationDataDtoSuggestedPayeeSource_Enum extends EnumClass {
  /// Source of the payee
  @BuiltValueEnumConst(wireName: r'user')
  static const NlpPayeeConfirmationDataDtoSuggestedPayeeSource_Enum user =
      _$nlpPayeeConfirmationDataDtoSuggestedPayeeSourceEnum_user;

  /// Source of the payee
  @BuiltValueEnumConst(wireName: r'global', fallback: true)
  static const NlpPayeeConfirmationDataDtoSuggestedPayeeSource_Enum global =
      _$nlpPayeeConfirmationDataDtoSuggestedPayeeSourceEnum_global;

  static Serializer<NlpPayeeConfirmationDataDtoSuggestedPayeeSource_Enum>
      get serializer =>
          _$nlpPayeeConfirmationDataDtoSuggestedPayeeSourceEnumSerializer;

  const NlpPayeeConfirmationDataDtoSuggestedPayeeSource_Enum._(String name)
      : super(name);

  static BuiltSet<NlpPayeeConfirmationDataDtoSuggestedPayeeSource_Enum>
      get values => _$nlpPayeeConfirmationDataDtoSuggestedPayeeSourceEnumValues;
  static NlpPayeeConfirmationDataDtoSuggestedPayeeSource_Enum valueOf(
          String name) =>
      _$nlpPayeeConfirmationDataDtoSuggestedPayeeSourceEnumValueOf(name);
}
