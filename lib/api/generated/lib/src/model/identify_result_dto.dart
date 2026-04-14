//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'identify_result_dto.g.dart';

/// IdentifyResultDto
///
/// Properties:
/// * [identified] - Whether the file was successfully identified
/// * [importerName] - Name of the importer that can handle this file
/// * [importerId] - Unique identifier of the importer
/// * [account] - Default account used by this importer
/// * [message] - Message when file cannot be identified
@BuiltValue()
abstract class IdentifyResultDto
    implements Built<IdentifyResultDto, IdentifyResultDtoBuilder> {
  /// Whether the file was successfully identified
  @BuiltValueField(wireName: r'identified')
  bool get identified;

  /// Name of the importer that can handle this file
  @BuiltValueField(wireName: r'importerName')
  String? get importerName;

  /// Unique identifier of the importer
  @BuiltValueField(wireName: r'importerId')
  String? get importerId;

  /// Default account used by this importer
  @BuiltValueField(wireName: r'account')
  String? get account;

  /// Message when file cannot be identified
  @BuiltValueField(wireName: r'message')
  String? get message;

  IdentifyResultDto._();

  factory IdentifyResultDto([void updates(IdentifyResultDtoBuilder b)]) =
      _$IdentifyResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IdentifyResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IdentifyResultDto> get serializer =>
      _$IdentifyResultDtoSerializer();
}

class _$IdentifyResultDtoSerializer
    implements PrimitiveSerializer<IdentifyResultDto> {
  @override
  final Iterable<Type> types = const [IdentifyResultDto, _$IdentifyResultDto];

  @override
  final String wireName = r'IdentifyResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IdentifyResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'identified';
    yield serializers.serialize(
      object.identified,
      specifiedType: const FullType(bool),
    );
    if (object.importerName != null) {
      yield r'importerName';
      yield serializers.serialize(
        object.importerName,
        specifiedType: const FullType(String),
      );
    }
    if (object.importerId != null) {
      yield r'importerId';
      yield serializers.serialize(
        object.importerId,
        specifiedType: const FullType(String),
      );
    }
    if (object.account != null) {
      yield r'account';
      yield serializers.serialize(
        object.account,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IdentifyResultDto object, {
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
    required IdentifyResultDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'identified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.identified = valueDes;
          break;
        case r'importerName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.importerName = valueDes;
          break;
        case r'importerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.importerId = valueDes;
          break;
        case r'account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.account = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IdentifyResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IdentifyResultDtoBuilder();
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
