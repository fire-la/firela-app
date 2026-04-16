//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_account_dto.g.dart';

/// CreateAccountDto
///
/// Properties:
/// * [path] - Account path (hierarchical, colon-separated)
/// * [openDate] - Account open date
/// * [currencies] - Allowed currencies (null = no restriction)
/// * [bookingMethod] - Booking method for cost basis
/// * [templatePath] - Reference to account-standards template path
/// * [isCustom] - Whether this is a custom (user-created) account
/// * [i18nKey] - i18n key for display name (overrides template)
/// * [icon] - Icon identifier (overrides template)
/// * [openMeta] - Additional metadata
/// * [platformId] - Platform ID (references Platform.id)
@BuiltValue()
abstract class CreateAccountDto
    implements Built<CreateAccountDto, CreateAccountDtoBuilder> {
  /// Account path (hierarchical, colon-separated)
  @BuiltValueField(wireName: r'path')
  String get path;

  /// Account open date
  @BuiltValueField(wireName: r'openDate')
  DateTime get openDate;

  /// Allowed currencies (null = no restriction)
  @BuiltValueField(wireName: r'currencies')
  BuiltList<String>? get currencies;

  /// Booking method for cost basis
  @BuiltValueField(wireName: r'bookingMethod')
  CreateAccountDtoBookingMethodEnum? get bookingMethod;
  // enum bookingMethodEnum {  FIFO,  LIFO,  HIFO,  AVERAGE,  STRICT,  STRICT_WITH_SIZE,  NONE,  };

  /// Reference to account-standards template path
  @BuiltValueField(wireName: r'templatePath')
  String? get templatePath;

  /// Whether this is a custom (user-created) account
  @BuiltValueField(wireName: r'isCustom')
  bool? get isCustom;

  /// i18n key for display name (overrides template)
  @BuiltValueField(wireName: r'i18nKey')
  String? get i18nKey;

  /// Icon identifier (overrides template)
  @BuiltValueField(wireName: r'icon')
  String? get icon;

  /// Additional metadata
  @BuiltValueField(wireName: r'openMeta')
  JsonObject? get openMeta;

  /// Platform ID (references Platform.id)
  @BuiltValueField(wireName: r'platformId')
  String? get platformId;

  CreateAccountDto._();

  factory CreateAccountDto([void updates(CreateAccountDtoBuilder b)]) =
      _$CreateAccountDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateAccountDtoBuilder b) => b
    ..bookingMethod = const CreateAccountDtoBookingMethodEnum._('FIFO')
    ..isCustom = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateAccountDto> get serializer =>
      _$CreateAccountDtoSerializer();
}

class _$CreateAccountDtoSerializer
    implements PrimitiveSerializer<CreateAccountDto> {
  @override
  final Iterable<Type> types = const [CreateAccountDto, _$CreateAccountDto];

  @override
  final String wireName = r'CreateAccountDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateAccountDto object, {
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
      specifiedType: const FullType(DateTime),
    );
    if (object.currencies != null) {
      yield r'currencies';
      yield serializers.serialize(
        object.currencies,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.bookingMethod != null) {
      yield r'bookingMethod';
      yield serializers.serialize(
        object.bookingMethod,
        specifiedType: const FullType(CreateAccountDtoBookingMethodEnum),
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
        specifiedType: const FullType(JsonObject),
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
    CreateAccountDto object, {
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
    required CreateAccountDtoBuilder result,
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
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.openDate = valueDes;
          break;
        case r'currencies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.currencies.replace(valueDes);
          break;
        case r'bookingMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateAccountDtoBookingMethodEnum),
          ) as CreateAccountDtoBookingMethodEnum;
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
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.openMeta = valueDes;
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
  CreateAccountDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateAccountDtoBuilder();
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

class CreateAccountDtoBookingMethodEnum extends EnumClass {
  /// Booking method for cost basis
  @BuiltValueEnumConst(wireName: r'FIFO')
  static const CreateAccountDtoBookingMethodEnum FIFO =
      _$createAccountDtoBookingMethodEnum_FIFO;

  /// Booking method for cost basis
  @BuiltValueEnumConst(wireName: r'LIFO')
  static const CreateAccountDtoBookingMethodEnum LIFO =
      _$createAccountDtoBookingMethodEnum_LIFO;

  /// Booking method for cost basis
  @BuiltValueEnumConst(wireName: r'HIFO')
  static const CreateAccountDtoBookingMethodEnum HIFO =
      _$createAccountDtoBookingMethodEnum_HIFO;

  /// Booking method for cost basis
  @BuiltValueEnumConst(wireName: r'AVERAGE')
  static const CreateAccountDtoBookingMethodEnum AVERAGE =
      _$createAccountDtoBookingMethodEnum_AVERAGE;

  /// Booking method for cost basis
  @BuiltValueEnumConst(wireName: r'STRICT')
  static const CreateAccountDtoBookingMethodEnum STRICT =
      _$createAccountDtoBookingMethodEnum_STRICT;

  /// Booking method for cost basis
  @BuiltValueEnumConst(wireName: r'STRICT_WITH_SIZE')
  static const CreateAccountDtoBookingMethodEnum STRICT_WITH_SIZE =
      _$createAccountDtoBookingMethodEnum_STRICT_WITH_SIZE;

  /// Booking method for cost basis
  @BuiltValueEnumConst(wireName: r'NONE', fallback: true)
  static const CreateAccountDtoBookingMethodEnum NONE =
      _$createAccountDtoBookingMethodEnum_NONE;

  static Serializer<CreateAccountDtoBookingMethodEnum> get serializer =>
      _$createAccountDtoBookingMethodEnumSerializer;

  const CreateAccountDtoBookingMethodEnum._(String name) : super(name);

  static BuiltSet<CreateAccountDtoBookingMethodEnum> get values =>
      _$createAccountDtoBookingMethodEnumValues;
  static CreateAccountDtoBookingMethodEnum valueOf(String name) =>
      _$createAccountDtoBookingMethodEnumValueOf(name);
}
