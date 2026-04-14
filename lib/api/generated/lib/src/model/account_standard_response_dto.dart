//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_standard_response_dto.g.dart';

/// AccountStandardResponseDto
///
/// Properties:
/// * [path] - Account path (hierarchical, colon-separated)
/// * [type] - Account type in Beancount hierarchy
/// * [i18nKey] - i18n key for localized display name
/// * [description] - Account description
/// * [tags] - Account tags for categorization
/// * [icon] - Icon identifier for UI display
@BuiltValue()
abstract class AccountStandardResponseDto
    implements
        Built<AccountStandardResponseDto, AccountStandardResponseDtoBuilder> {
  /// Account path (hierarchical, colon-separated)
  @BuiltValueField(wireName: r'path')
  String get path;

  /// Account type in Beancount hierarchy
  @BuiltValueField(wireName: r'type')
  AccountStandardResponseDtoTypeEnum get type;
  // enum typeEnum {  Assets,  Liabilities,  Income,  Expenses,  Equity,  };

  /// i18n key for localized display name
  @BuiltValueField(wireName: r'i18nKey')
  String? get i18nKey;

  /// Account description
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Account tags for categorization
  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  /// Icon identifier for UI display
  @BuiltValueField(wireName: r'icon')
  String? get icon;

  AccountStandardResponseDto._();

  factory AccountStandardResponseDto(
          [void updates(AccountStandardResponseDtoBuilder b)]) =
      _$AccountStandardResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountStandardResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountStandardResponseDto> get serializer =>
      _$AccountStandardResponseDtoSerializer();
}

class _$AccountStandardResponseDtoSerializer
    implements PrimitiveSerializer<AccountStandardResponseDto> {
  @override
  final Iterable<Type> types = const [
    AccountStandardResponseDto,
    _$AccountStandardResponseDto
  ];

  @override
  final String wireName = r'AccountStandardResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountStandardResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(AccountStandardResponseDtoTypeEnum),
    );
    if (object.i18nKey != null) {
      yield r'i18nKey';
      yield serializers.serialize(
        object.i18nKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountStandardResponseDto object, {
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
    required AccountStandardResponseDtoBuilder result,
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AccountStandardResponseDtoTypeEnum),
          ) as AccountStandardResponseDtoTypeEnum;
          result.type = valueDes;
          break;
        case r'i18nKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.i18nKey = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.tags.replace(valueDes);
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.icon = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountStandardResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountStandardResponseDtoBuilder();
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

class AccountStandardResponseDtoTypeEnum extends EnumClass {
  /// Account type in Beancount hierarchy
  @BuiltValueEnumConst(wireName: r'Assets')
  static const AccountStandardResponseDtoTypeEnum assets =
      _$accountStandardResponseDtoTypeEnum_assets;

  /// Account type in Beancount hierarchy
  @BuiltValueEnumConst(wireName: r'Liabilities')
  static const AccountStandardResponseDtoTypeEnum liabilities =
      _$accountStandardResponseDtoTypeEnum_liabilities;

  /// Account type in Beancount hierarchy
  @BuiltValueEnumConst(wireName: r'Income')
  static const AccountStandardResponseDtoTypeEnum income =
      _$accountStandardResponseDtoTypeEnum_income;

  /// Account type in Beancount hierarchy
  @BuiltValueEnumConst(wireName: r'Expenses')
  static const AccountStandardResponseDtoTypeEnum expenses =
      _$accountStandardResponseDtoTypeEnum_expenses;

  /// Account type in Beancount hierarchy
  @BuiltValueEnumConst(wireName: r'Equity', fallback: true)
  static const AccountStandardResponseDtoTypeEnum equity =
      _$accountStandardResponseDtoTypeEnum_equity;

  static Serializer<AccountStandardResponseDtoTypeEnum> get serializer =>
      _$accountStandardResponseDtoTypeEnumSerializer;

  const AccountStandardResponseDtoTypeEnum._(String name) : super(name);

  static BuiltSet<AccountStandardResponseDtoTypeEnum> get values =>
      _$accountStandardResponseDtoTypeEnumValues;
  static AccountStandardResponseDtoTypeEnum valueOf(String name) =>
      _$accountStandardResponseDtoTypeEnumValueOf(name);
}
