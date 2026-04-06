//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/booking_method.dart';
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/account_status.dart';
import 'package:firela_api/src/model/platform_info.dart';
import 'package:firela_api/src/model/date.dart';
import 'package:firela_api/src/model/account_type.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_response.g.dart';

/// AccountResponse
///
/// Properties:
/// * [id]
/// * [path] - Full Beancount account path
/// * [type]
/// * [status]
/// * [openDate]
/// * [bookingMethod]
/// * [isCustom]
/// * [closeDate]
/// * [currencies]
/// * [templatePath]
/// * [i18nKey]
/// * [icon]
/// * [openMeta]
/// * [platformId]
/// * [platform]
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class AccountResponse
    implements Built<AccountResponse, AccountResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Full Beancount account path
  @BuiltValueField(wireName: r'path')
  String get path;

  @BuiltValueField(wireName: r'type')
  AccountType get type;
  // enum typeEnum {  Assets,  Liabilities,  Income,  Expenses,  Equity,  };

  @BuiltValueField(wireName: r'status')
  AccountStatus get status;
  // enum statusEnum {  OPEN,  CLOSED,  SUSPENDED,  };

  @BuiltValueField(wireName: r'openDate')
  Date get openDate;

  @BuiltValueField(wireName: r'bookingMethod')
  BookingMethod get bookingMethod;
  // enum bookingMethodEnum {  FIFO,  LIFO,  HIFO,  AVERAGE,  STRICT,  STRICT_WITH_SIZE,  NONE,  };

  @BuiltValueField(wireName: r'isCustom')
  bool get isCustom;

  @BuiltValueField(wireName: r'closeDate')
  Date? get closeDate;

  @BuiltValueField(wireName: r'currencies')
  BuiltList<String>? get currencies;

  @BuiltValueField(wireName: r'templatePath')
  String? get templatePath;

  @BuiltValueField(wireName: r'i18nKey')
  String? get i18nKey;

  @BuiltValueField(wireName: r'icon')
  String? get icon;

  @BuiltValueField(wireName: r'openMeta')
  BuiltMap<String, JsonObject?>? get openMeta;

  @BuiltValueField(wireName: r'platformId')
  String? get platformId;

  @BuiltValueField(wireName: r'platform')
  PlatformInfo? get platform;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  AccountResponse._();

  factory AccountResponse([void updates(AccountResponseBuilder b)]) =
      _$AccountResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountResponse> get serializer =>
      _$AccountResponseSerializer();
}

class _$AccountResponseSerializer
    implements PrimitiveSerializer<AccountResponse> {
  @override
  final Iterable<Type> types = const [AccountResponse, _$AccountResponse];

  @override
  final String wireName = r'AccountResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountResponse object, {
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
      specifiedType: const FullType(AccountType),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(AccountStatus),
    );
    yield r'openDate';
    yield serializers.serialize(
      object.openDate,
      specifiedType: const FullType(Date),
    );
    yield r'bookingMethod';
    yield serializers.serialize(
      object.bookingMethod,
      specifiedType: const FullType(BookingMethod),
    );
    yield r'isCustom';
    yield serializers.serialize(
      object.isCustom,
      specifiedType: const FullType(bool),
    );
    if (object.closeDate != null) {
      yield r'closeDate';
      yield serializers.serialize(
        object.closeDate,
        specifiedType: const FullType(Date),
      );
    }
    if (object.currencies != null) {
      yield r'currencies';
      yield serializers.serialize(
        object.currencies,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
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
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.platformId != null) {
      yield r'platformId';
      yield serializers.serialize(
        object.platformId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.platform != null) {
      yield r'platform';
      yield serializers.serialize(
        object.platform,
        specifiedType: const FullType(PlatformInfo),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountResponse object, {
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
    required AccountResponseBuilder result,
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
            specifiedType: const FullType(AccountType),
          ) as AccountType;
          result.type = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AccountStatus),
          ) as AccountStatus;
          result.status = valueDes;
          break;
        case r'openDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.openDate = valueDes;
          break;
        case r'bookingMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BookingMethod),
          ) as BookingMethod;
          result.bookingMethod = valueDes;
          break;
        case r'isCustom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isCustom = valueDes;
          break;
        case r'closeDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.closeDate = valueDes;
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
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.openMeta.replace(valueDes);
          break;
        case r'platformId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.platformId = valueDes;
          break;
        case r'platform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PlatformInfo),
          ) as PlatformInfo;
          result.platform.replace(valueDes);
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountResponseBuilder();
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
