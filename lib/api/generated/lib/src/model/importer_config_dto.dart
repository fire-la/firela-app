//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/versioned_config_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'importer_config_dto.g.dart';

/// ImporterConfigDto
///
/// Properties:
/// * [id] - Configuration ID
/// * [userId] - User ID
/// * [importerId] - Importer identifier
/// * [version] - Configuration version (semver)
/// * [schema] - Configuration schema identifier
/// * [config]
/// * [createdAt] - Creation timestamp
/// * [updatedAt] - Last update timestamp
@BuiltValue()
abstract class ImporterConfigDto
    implements Built<ImporterConfigDto, ImporterConfigDtoBuilder> {
  /// Configuration ID
  @BuiltValueField(wireName: r'id')
  String get id;

  /// User ID
  @BuiltValueField(wireName: r'userId')
  String get userId;

  /// Importer identifier
  @BuiltValueField(wireName: r'importerId')
  ImporterConfigDtoImporterIdEnum get importerId;
  // enum importerIdEnum {  alipay,  alipay-web,  alipay-yuebao,  wechat,  wechat-xlsx,  boc,  boc-credit,  ccb,  cmb,  cmbc,  cmbc-credit,  icbc,  icbc-credit,  hsbc-hk,  };

  /// Configuration version (semver)
  @BuiltValueField(wireName: r'version')
  String get version;

  /// Configuration schema identifier
  @BuiltValueField(wireName: r'schema')
  String get schema;

  @BuiltValueField(wireName: r'config')
  VersionedConfigDto get config;

  /// Creation timestamp
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  /// Last update timestamp
  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  ImporterConfigDto._();

  factory ImporterConfigDto([void updates(ImporterConfigDtoBuilder b)]) =
      _$ImporterConfigDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImporterConfigDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImporterConfigDto> get serializer =>
      _$ImporterConfigDtoSerializer();
}

class _$ImporterConfigDtoSerializer
    implements PrimitiveSerializer<ImporterConfigDto> {
  @override
  final Iterable<Type> types = const [ImporterConfigDto, _$ImporterConfigDto];

  @override
  final String wireName = r'ImporterConfigDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImporterConfigDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'userId';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(String),
    );
    yield r'importerId';
    yield serializers.serialize(
      object.importerId,
      specifiedType: const FullType(ImporterConfigDtoImporterIdEnum),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
    yield r'schema';
    yield serializers.serialize(
      object.schema,
      specifiedType: const FullType(String),
    );
    yield r'config';
    yield serializers.serialize(
      object.config,
      specifiedType: const FullType(VersionedConfigDto),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ImporterConfigDto object, {
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
    required ImporterConfigDtoBuilder result,
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
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'importerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ImporterConfigDtoImporterIdEnum),
          ) as ImporterConfigDtoImporterIdEnum;
          result.importerId = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.version = valueDes;
          break;
        case r'schema':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.schema = valueDes;
          break;
        case r'config':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VersionedConfigDto),
          ) as VersionedConfigDto;
          result.config.replace(valueDes);
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
  ImporterConfigDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImporterConfigDtoBuilder();
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

class ImporterConfigDtoImporterIdEnum extends EnumClass {
  /// Importer identifier
  @BuiltValueEnumConst(wireName: r'alipay')
  static const ImporterConfigDtoImporterIdEnum alipay =
      _$importerConfigDtoImporterIdEnum_alipay;

  /// Importer identifier
  @BuiltValueEnumConst(wireName: r'alipay-web')
  static const ImporterConfigDtoImporterIdEnum alipayWeb =
      _$importerConfigDtoImporterIdEnum_alipayWeb;

  /// Importer identifier
  @BuiltValueEnumConst(wireName: r'alipay-yuebao')
  static const ImporterConfigDtoImporterIdEnum alipayYuebao =
      _$importerConfigDtoImporterIdEnum_alipayYuebao;

  /// Importer identifier
  @BuiltValueEnumConst(wireName: r'wechat')
  static const ImporterConfigDtoImporterIdEnum wechat =
      _$importerConfigDtoImporterIdEnum_wechat;

  /// Importer identifier
  @BuiltValueEnumConst(wireName: r'wechat-xlsx')
  static const ImporterConfigDtoImporterIdEnum wechatXlsx =
      _$importerConfigDtoImporterIdEnum_wechatXlsx;

  /// Importer identifier
  @BuiltValueEnumConst(wireName: r'boc')
  static const ImporterConfigDtoImporterIdEnum boc =
      _$importerConfigDtoImporterIdEnum_boc;

  /// Importer identifier
  @BuiltValueEnumConst(wireName: r'boc-credit')
  static const ImporterConfigDtoImporterIdEnum bocCredit =
      _$importerConfigDtoImporterIdEnum_bocCredit;

  /// Importer identifier
  @BuiltValueEnumConst(wireName: r'ccb')
  static const ImporterConfigDtoImporterIdEnum ccb =
      _$importerConfigDtoImporterIdEnum_ccb;

  /// Importer identifier
  @BuiltValueEnumConst(wireName: r'cmb')
  static const ImporterConfigDtoImporterIdEnum cmb =
      _$importerConfigDtoImporterIdEnum_cmb;

  /// Importer identifier
  @BuiltValueEnumConst(wireName: r'cmbc')
  static const ImporterConfigDtoImporterIdEnum cmbc =
      _$importerConfigDtoImporterIdEnum_cmbc;

  /// Importer identifier
  @BuiltValueEnumConst(wireName: r'cmbc-credit')
  static const ImporterConfigDtoImporterIdEnum cmbcCredit =
      _$importerConfigDtoImporterIdEnum_cmbcCredit;

  /// Importer identifier
  @BuiltValueEnumConst(wireName: r'icbc')
  static const ImporterConfigDtoImporterIdEnum icbc =
      _$importerConfigDtoImporterIdEnum_icbc;

  /// Importer identifier
  @BuiltValueEnumConst(wireName: r'icbc-credit')
  static const ImporterConfigDtoImporterIdEnum icbcCredit =
      _$importerConfigDtoImporterIdEnum_icbcCredit;

  /// Importer identifier
  @BuiltValueEnumConst(wireName: r'hsbc-hk', fallback: true)
  static const ImporterConfigDtoImporterIdEnum hsbcHk =
      _$importerConfigDtoImporterIdEnum_hsbcHk;

  static Serializer<ImporterConfigDtoImporterIdEnum> get serializer =>
      _$importerConfigDtoImporterIdEnumSerializer;

  const ImporterConfigDtoImporterIdEnum._(String name) : super(name);

  static BuiltSet<ImporterConfigDtoImporterIdEnum> get values =>
      _$importerConfigDtoImporterIdEnumValues;
  static ImporterConfigDtoImporterIdEnum valueOf(String name) =>
      _$importerConfigDtoImporterIdEnumValueOf(name);
}
