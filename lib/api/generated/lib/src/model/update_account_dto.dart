//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_account_dto.g.dart';

/// UpdateAccountDto
///
/// Properties:
/// * [currencies] - Allowed currencies (null = no restriction)
/// * [bookingMethod] - Booking method for cost basis
/// * [i18nKey] - i18n key for display name
/// * [icon] - Icon identifier
/// * [openMeta] - Additional metadata (merged with existing)
/// * [platformId] - Platform ID (references Platform.id), null to clear association
@BuiltValue()
abstract class UpdateAccountDto
    implements Built<UpdateAccountDto, UpdateAccountDtoBuilder> {
  /// Allowed currencies (null = no restriction)
  @BuiltValueField(wireName: r'currencies')
  BuiltList<String>? get currencies;

  /// Booking method for cost basis
  @BuiltValueField(wireName: r'bookingMethod')
  UpdateAccountDtoBookingMethodEnum? get bookingMethod;
  // enum bookingMethodEnum {  FIFO,  LIFO,  HIFO,  AVERAGE,  STRICT,  STRICT_WITH_SIZE,  NONE,  };

  /// i18n key for display name
  @BuiltValueField(wireName: r'i18nKey')
  String? get i18nKey;

  /// Icon identifier
  @BuiltValueField(wireName: r'icon')
  String? get icon;

  /// Additional metadata (merged with existing)
  @BuiltValueField(wireName: r'openMeta')
  JsonObject? get openMeta;

  /// Platform ID (references Platform.id), null to clear association
  @BuiltValueField(wireName: r'platformId')
  JsonObject? get platformId;

  UpdateAccountDto._();

  factory UpdateAccountDto([void updates(UpdateAccountDtoBuilder b)]) =
      _$UpdateAccountDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateAccountDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateAccountDto> get serializer =>
      _$UpdateAccountDtoSerializer();
}

class _$UpdateAccountDtoSerializer
    implements PrimitiveSerializer<UpdateAccountDto> {
  @override
  final Iterable<Type> types = const [UpdateAccountDto, _$UpdateAccountDto];

  @override
  final String wireName = r'UpdateAccountDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateAccountDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
        specifiedType: const FullType(UpdateAccountDtoBookingMethodEnum),
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
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateAccountDto object, {
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
    required UpdateAccountDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
            specifiedType: const FullType(UpdateAccountDtoBookingMethodEnum),
          ) as UpdateAccountDtoBookingMethodEnum;
          result.bookingMethod = valueDes;
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
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
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
  UpdateAccountDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateAccountDtoBuilder();
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

class UpdateAccountDtoBookingMethodEnum extends EnumClass {
  /// Booking method for cost basis
  @BuiltValueEnumConst(wireName: r'FIFO')
  static const UpdateAccountDtoBookingMethodEnum FIFO =
      _$updateAccountDtoBookingMethodEnum_FIFO;

  /// Booking method for cost basis
  @BuiltValueEnumConst(wireName: r'LIFO')
  static const UpdateAccountDtoBookingMethodEnum LIFO =
      _$updateAccountDtoBookingMethodEnum_LIFO;

  /// Booking method for cost basis
  @BuiltValueEnumConst(wireName: r'HIFO')
  static const UpdateAccountDtoBookingMethodEnum HIFO =
      _$updateAccountDtoBookingMethodEnum_HIFO;

  /// Booking method for cost basis
  @BuiltValueEnumConst(wireName: r'AVERAGE')
  static const UpdateAccountDtoBookingMethodEnum AVERAGE =
      _$updateAccountDtoBookingMethodEnum_AVERAGE;

  /// Booking method for cost basis
  @BuiltValueEnumConst(wireName: r'STRICT')
  static const UpdateAccountDtoBookingMethodEnum STRICT =
      _$updateAccountDtoBookingMethodEnum_STRICT;

  /// Booking method for cost basis
  @BuiltValueEnumConst(wireName: r'STRICT_WITH_SIZE')
  static const UpdateAccountDtoBookingMethodEnum STRICT_WITH_SIZE =
      _$updateAccountDtoBookingMethodEnum_STRICT_WITH_SIZE;

  /// Booking method for cost basis
  @BuiltValueEnumConst(wireName: r'NONE', fallback: true)
  static const UpdateAccountDtoBookingMethodEnum NONE =
      _$updateAccountDtoBookingMethodEnum_NONE;

  static Serializer<UpdateAccountDtoBookingMethodEnum> get serializer =>
      _$updateAccountDtoBookingMethodEnumSerializer;

  const UpdateAccountDtoBookingMethodEnum._(String name) : super(name);

  static BuiltSet<UpdateAccountDtoBookingMethodEnum> get values =>
      _$updateAccountDtoBookingMethodEnumValues;
  static UpdateAccountDtoBookingMethodEnum valueOf(String name) =>
      _$updateAccountDtoBookingMethodEnumValueOf(name);
}
