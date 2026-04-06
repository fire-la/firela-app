//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/booking_method.dart';
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/date.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_account_request.g.dart';

/// CreateAccountRequest
///
/// Properties:
/// * [path] - Full Beancount account path
/// * [openDate]
/// * [currencies]
/// * [bookingMethod]
/// * [templatePath]
/// * [isCustom]
/// * [i18nKey]
/// * [icon]
/// * [openMeta]
/// * [platformId]
@BuiltValue()
abstract class CreateAccountRequest
    implements Built<CreateAccountRequest, CreateAccountRequestBuilder> {
  /// Full Beancount account path
  @BuiltValueField(wireName: r'path')
  String get path;

  @BuiltValueField(wireName: r'openDate')
  Date get openDate;

  @BuiltValueField(wireName: r'currencies')
  BuiltList<String>? get currencies;

  @BuiltValueField(wireName: r'bookingMethod')
  BookingMethod? get bookingMethod;
  // enum bookingMethodEnum {  FIFO,  LIFO,  HIFO,  AVERAGE,  STRICT,  STRICT_WITH_SIZE,  NONE,  };

  @BuiltValueField(wireName: r'templatePath')
  String? get templatePath;

  @BuiltValueField(wireName: r'isCustom')
  bool? get isCustom;

  @BuiltValueField(wireName: r'i18nKey')
  String? get i18nKey;

  @BuiltValueField(wireName: r'icon')
  String? get icon;

  @BuiltValueField(wireName: r'openMeta')
  BuiltMap<String, JsonObject?>? get openMeta;

  @BuiltValueField(wireName: r'platformId')
  String? get platformId;

  CreateAccountRequest._();

  factory CreateAccountRequest([void updates(CreateAccountRequestBuilder b)]) =
      _$CreateAccountRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateAccountRequestBuilder b) => b..isCustom = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateAccountRequest> get serializer =>
      _$CreateAccountRequestSerializer();
}

class _$CreateAccountRequestSerializer
    implements PrimitiveSerializer<CreateAccountRequest> {
  @override
  final Iterable<Type> types = const [
    CreateAccountRequest,
    _$CreateAccountRequest
  ];

  @override
  final String wireName = r'CreateAccountRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateAccountRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
    yield r'openDate';
    yield serializers.serialize(
      object.openDate,
      specifiedType: const FullType(Date),
    );
    if (object.currencies != null) {
      yield r'currencies';
      yield serializers.serialize(
        object.currencies,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.bookingMethod != null) {
      yield r'bookingMethod';
      yield serializers.serialize(
        object.bookingMethod,
        specifiedType: const FullType(BookingMethod),
      );
    }
    if (object.templatePath != null) {
      yield r'templatePath';
      yield serializers.serialize(
        object.templatePath,
        specifiedType: const FullType(String),
      );
    }
    if (object.isCustom != null) {
      yield r'isCustom';
      yield serializers.serialize(
        object.isCustom,
        specifiedType: const FullType(bool),
      );
    }
    if (object.i18nKey != null) {
      yield r'i18nKey';
      yield serializers.serialize(
        object.i18nKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType: const FullType(String),
      );
    }
    if (object.openMeta != null) {
      yield r'openMeta';
      yield serializers.serialize(
        object.openMeta,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.platformId != null) {
      yield r'platformId';
      yield serializers.serialize(
        object.platformId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateAccountRequest object, {
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
    required CreateAccountRequestBuilder result,
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
        case r'openDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.openDate = valueDes;
          break;
        case r'currencies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.currencies.replace(valueDes);
          break;
        case r'bookingMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BookingMethod),
          ) as BookingMethod;
          result.bookingMethod = valueDes;
          break;
        case r'templatePath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.templatePath = valueDes;
          break;
        case r'isCustom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isCustom = valueDes;
          break;
        case r'i18nKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.i18nKey = valueDes;
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.icon = valueDes;
          break;
        case r'openMeta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.openMeta.replace(valueDes);
          break;
        case r'platformId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.platformId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateAccountRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateAccountRequestBuilder();
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
