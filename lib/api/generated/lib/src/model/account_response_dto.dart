//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_response_dto.g.dart';

/// AccountResponseDto
///
/// Properties:
/// * [id] - Account UUID
/// * [path] - Account path (hierarchical, colon-separated)
/// * [type] - Account type (root segment)
/// * [status] - Account status
/// * [openDate] - Account open date
/// * [bookingMethod] - Booking method
/// * [isCustom] - Whether this is a custom (user-created) account
/// * [createdAt] - Created timestamp
/// * [updatedAt] - Updated timestamp
/// * [closeDate] - Account close date (if closed)
/// * [currencies] - Allowed currencies (null = no restriction)
/// * [templatePath] - Template path reference
/// * [i18nKey] - i18n key for display name
/// * [icon] - Icon identifier
/// * [openMeta] - Account metadata
/// * [platformId] - Platform ID (null if unbound)
/// * [platform] - Platform details (populated if platformId is set)
@BuiltValue()
abstract class AccountResponseDto
    implements Built<AccountResponseDto, AccountResponseDtoBuilder> {
  /// Account UUID
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Account path (hierarchical, colon-separated)
  @BuiltValueField(wireName: r'path')
  String get path;

  /// Account type (root segment)
  @BuiltValueField(wireName: r'type')
  AccountResponseDtoTypeEnum get type;
  // enum typeEnum {  Assets,  Liabilities,  Income,  Expenses,  Equity,  };

  /// Account status
  @BuiltValueField(wireName: r'status')
  AccountResponseDtoStatusEnum get status;
  // enum statusEnum {  OPEN,  CLOSED,  SUSPENDED,  };

  /// Account open date
  @BuiltValueField(wireName: r'openDate')
  String get openDate;

  /// Booking method
  @BuiltValueField(wireName: r'bookingMethod')
  AccountResponseDtoBookingMethodEnum get bookingMethod;
  // enum bookingMethodEnum {  FIFO,  LIFO,  HIFO,  AVERAGE,  STRICT,  STRICT_WITH_SIZE,  NONE,  };

  /// Whether this is a custom (user-created) account
  @BuiltValueField(wireName: r'isCustom')
  bool get isCustom;

  /// Created timestamp
  @BuiltValueField(wireName: r'createdAt')
  String get createdAt;

  /// Updated timestamp
  @BuiltValueField(wireName: r'updatedAt')
  String get updatedAt;

  /// Account close date (if closed)
  @BuiltValueField(wireName: r'closeDate')
  String? get closeDate;

  /// Allowed currencies (null = no restriction)
  @BuiltValueField(wireName: r'currencies')
  BuiltList<String>? get currencies;

  /// Template path reference
  @BuiltValueField(wireName: r'templatePath')
  String? get templatePath;

  /// i18n key for display name
  @BuiltValueField(wireName: r'i18nKey')
  String? get i18nKey;

  /// Icon identifier
  @BuiltValueField(wireName: r'icon')
  String? get icon;

  /// Account metadata
  @BuiltValueField(wireName: r'openMeta')
  JsonObject? get openMeta;

  /// Platform ID (null if unbound)
  @BuiltValueField(wireName: r'platformId')
  JsonObject? get platformId;

  /// Platform details (populated if platformId is set)
  @BuiltValueField(wireName: r'platform')
  JsonObject? get platform;

  AccountResponseDto._();

  factory AccountResponseDto([void updates(AccountResponseDtoBuilder b)]) =
      _$AccountResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountResponseDto> get serializer =>
      _$AccountResponseDtoSerializer();
}

class _$AccountResponseDtoSerializer
    implements PrimitiveSerializer<AccountResponseDto> {
  @override
  final Iterable<Type> types = const [AccountResponseDto, _$AccountResponseDto];

  @override
  final String wireName = r'AccountResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(AccountResponseDtoTypeEnum),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(AccountResponseDtoStatusEnum),
    );
    yield r'openDate';
    yield serializers.serialize(
      object.openDate,
      specifiedType: const FullType(String),
    );
    yield r'bookingMethod';
    yield serializers.serialize(
      object.bookingMethod,
      specifiedType: const FullType(AccountResponseDtoBookingMethodEnum),
    );
    yield r'isCustom';
    yield serializers.serialize(
      object.isCustom,
      specifiedType: const FullType(bool),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(String),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(String),
    );
    if (object.closeDate != null) {
      yield r'closeDate';
      yield serializers.serialize(
        object.closeDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.currencies != null) {
      yield r'currencies';
      yield serializers.serialize(
        object.currencies,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.templatePath != null) {
      yield r'templatePath';
      yield serializers.serialize(
        object.templatePath,
        specifiedType: const FullType(String),
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
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.platform != null) {
      yield r'platform';
      yield serializers.serialize(
        object.platform,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountResponseDto object, {
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
    required AccountResponseDtoBuilder result,
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
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AccountResponseDtoTypeEnum),
          ) as AccountResponseDtoTypeEnum;
          result.type = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AccountResponseDtoStatusEnum),
          ) as AccountResponseDtoStatusEnum;
          result.status = valueDes;
          break;
        case r'openDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.openDate = valueDes;
          break;
        case r'bookingMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AccountResponseDtoBookingMethodEnum),
          ) as AccountResponseDtoBookingMethodEnum;
          result.bookingMethod = valueDes;
          break;
        case r'isCustom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isCustom = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updatedAt = valueDes;
          break;
        case r'closeDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.closeDate = valueDes;
          break;
        case r'currencies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.currencies.replace(valueDes);
          break;
        case r'templatePath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.templatePath = valueDes;
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
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.platformId = valueDes;
          break;
        case r'platform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.platform = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountResponseDtoBuilder();
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

class AccountResponseDtoTypeEnum extends EnumClass {
  /// Account type (root segment)
  @BuiltValueEnumConst(wireName: r'Assets')
  static const AccountResponseDtoTypeEnum assets =
      _$accountResponseDtoTypeEnum_assets;

  /// Account type (root segment)
  @BuiltValueEnumConst(wireName: r'Liabilities')
  static const AccountResponseDtoTypeEnum liabilities =
      _$accountResponseDtoTypeEnum_liabilities;

  /// Account type (root segment)
  @BuiltValueEnumConst(wireName: r'Income')
  static const AccountResponseDtoTypeEnum income =
      _$accountResponseDtoTypeEnum_income;

  /// Account type (root segment)
  @BuiltValueEnumConst(wireName: r'Expenses')
  static const AccountResponseDtoTypeEnum expenses =
      _$accountResponseDtoTypeEnum_expenses;

  /// Account type (root segment)
  @BuiltValueEnumConst(wireName: r'Equity', fallback: true)
  static const AccountResponseDtoTypeEnum equity =
      _$accountResponseDtoTypeEnum_equity;

  static Serializer<AccountResponseDtoTypeEnum> get serializer =>
      _$accountResponseDtoTypeEnumSerializer;

  const AccountResponseDtoTypeEnum._(String name) : super(name);

  static BuiltSet<AccountResponseDtoTypeEnum> get values =>
      _$accountResponseDtoTypeEnumValues;
  static AccountResponseDtoTypeEnum valueOf(String name) =>
      _$accountResponseDtoTypeEnumValueOf(name);
}

class AccountResponseDtoStatusEnum extends EnumClass {
  /// Account status
  @BuiltValueEnumConst(wireName: r'OPEN')
  static const AccountResponseDtoStatusEnum OPEN =
      _$accountResponseDtoStatusEnum_OPEN;

  /// Account status
  @BuiltValueEnumConst(wireName: r'CLOSED')
  static const AccountResponseDtoStatusEnum CLOSED =
      _$accountResponseDtoStatusEnum_CLOSED;

  /// Account status
  @BuiltValueEnumConst(wireName: r'SUSPENDED', fallback: true)
  static const AccountResponseDtoStatusEnum SUSPENDED =
      _$accountResponseDtoStatusEnum_SUSPENDED;

  static Serializer<AccountResponseDtoStatusEnum> get serializer =>
      _$accountResponseDtoStatusEnumSerializer;

  const AccountResponseDtoStatusEnum._(String name) : super(name);

  static BuiltSet<AccountResponseDtoStatusEnum> get values =>
      _$accountResponseDtoStatusEnumValues;
  static AccountResponseDtoStatusEnum valueOf(String name) =>
      _$accountResponseDtoStatusEnumValueOf(name);
}

class AccountResponseDtoBookingMethodEnum extends EnumClass {
  /// Booking method
  @BuiltValueEnumConst(wireName: r'FIFO')
  static const AccountResponseDtoBookingMethodEnum FIFO =
      _$accountResponseDtoBookingMethodEnum_FIFO;

  /// Booking method
  @BuiltValueEnumConst(wireName: r'LIFO')
  static const AccountResponseDtoBookingMethodEnum LIFO =
      _$accountResponseDtoBookingMethodEnum_LIFO;

  /// Booking method
  @BuiltValueEnumConst(wireName: r'HIFO')
  static const AccountResponseDtoBookingMethodEnum HIFO =
      _$accountResponseDtoBookingMethodEnum_HIFO;

  /// Booking method
  @BuiltValueEnumConst(wireName: r'AVERAGE')
  static const AccountResponseDtoBookingMethodEnum AVERAGE =
      _$accountResponseDtoBookingMethodEnum_AVERAGE;

  /// Booking method
  @BuiltValueEnumConst(wireName: r'STRICT')
  static const AccountResponseDtoBookingMethodEnum STRICT =
      _$accountResponseDtoBookingMethodEnum_STRICT;

  /// Booking method
  @BuiltValueEnumConst(wireName: r'STRICT_WITH_SIZE')
  static const AccountResponseDtoBookingMethodEnum STRICT_WITH_SIZE =
      _$accountResponseDtoBookingMethodEnum_STRICT_WITH_SIZE;

  /// Booking method
  @BuiltValueEnumConst(wireName: r'NONE', fallback: true)
  static const AccountResponseDtoBookingMethodEnum NONE =
      _$accountResponseDtoBookingMethodEnum_NONE;

  static Serializer<AccountResponseDtoBookingMethodEnum> get serializer =>
      _$accountResponseDtoBookingMethodEnumSerializer;

  const AccountResponseDtoBookingMethodEnum._(String name) : super(name);

  static BuiltSet<AccountResponseDtoBookingMethodEnum> get values =>
      _$accountResponseDtoBookingMethodEnumValues;
  static AccountResponseDtoBookingMethodEnum valueOf(String name) =>
      _$accountResponseDtoBookingMethodEnumValueOf(name);
}
