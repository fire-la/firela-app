//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'parser_contribution_meta_dto.g.dart';

/// ParserContributionMetaDto
///
/// Properties:
/// * [institution] - Institution slug (lowercase kebab-case)
/// * [region] 
/// * [accountType] 
/// * [format] 
/// * [institutionDisplayName] 
/// * [encoding] 
/// * [delimiter] - CSV delimiter character: \",\", \";\", \"\\t\" or \"|\"
/// * [headerRows] - Header row count; the client omits the field when it is 1
/// * [notes] 
@BuiltValue()
abstract class ParserContributionMetaDto implements Built<ParserContributionMetaDto, ParserContributionMetaDtoBuilder> {
  /// Institution slug (lowercase kebab-case)
  @BuiltValueField(wireName: r'institution')
  String get institution;

  @BuiltValueField(wireName: r'region')
  ParserContributionMetaDtoRegionEnum get region;
  // enum regionEnum {  cn,  us,  de,  fr,  gb,  hk,  jp,  sg,  au,  ca,  other,  };

  @BuiltValueField(wireName: r'accountType')
  ParserContributionMetaDtoAccountTypeEnum get accountType;
  // enum accountTypeEnum {  checking,  savings,  credit,  debit,  investment,  };

  @BuiltValueField(wireName: r'format')
  ParserContributionMetaDtoFormatEnum get format;
  // enum formatEnum {  csv,  xlsx,  pdf,  ofx,  qif,  };

  @BuiltValueField(wireName: r'institutionDisplayName')
  String? get institutionDisplayName;

  @BuiltValueField(wireName: r'encoding')
  String? get encoding;

  /// CSV delimiter character: \",\", \";\", \"\\t\" or \"|\"
  @BuiltValueField(wireName: r'delimiter')
  String? get delimiter;

  /// Header row count; the client omits the field when it is 1
  @BuiltValueField(wireName: r'headerRows')
  num? get headerRows;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  ParserContributionMetaDto._();

  factory ParserContributionMetaDto([void updates(ParserContributionMetaDtoBuilder b)]) = _$ParserContributionMetaDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ParserContributionMetaDtoBuilder b) => b
      ..headerRows = 1;

  @BuiltValueSerializer(custom: true)
  static Serializer<ParserContributionMetaDto> get serializer => _$ParserContributionMetaDtoSerializer();
}

class _$ParserContributionMetaDtoSerializer implements PrimitiveSerializer<ParserContributionMetaDto> {
  @override
  final Iterable<Type> types = const [ParserContributionMetaDto, _$ParserContributionMetaDto];

  @override
  final String wireName = r'ParserContributionMetaDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ParserContributionMetaDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'institution';
    yield serializers.serialize(
      object.institution,
      specifiedType: const FullType(String),
    );
    yield r'region';
    yield serializers.serialize(
      object.region,
      specifiedType: const FullType(ParserContributionMetaDtoRegionEnum),
    );
    yield r'accountType';
    yield serializers.serialize(
      object.accountType,
      specifiedType: const FullType(ParserContributionMetaDtoAccountTypeEnum),
    );
    yield r'format';
    yield serializers.serialize(
      object.format,
      specifiedType: const FullType(ParserContributionMetaDtoFormatEnum),
    );
    if (object.institutionDisplayName != null) {
      yield r'institutionDisplayName';
      yield serializers.serialize(
        object.institutionDisplayName,
        specifiedType: const FullType(String),
      );
    }
    if (object.encoding != null) {
      yield r'encoding';
      yield serializers.serialize(
        object.encoding,
        specifiedType: const FullType(String),
      );
    }
    if (object.delimiter != null) {
      yield r'delimiter';
      yield serializers.serialize(
        object.delimiter,
        specifiedType: const FullType(String),
      );
    }
    if (object.headerRows != null) {
      yield r'headerRows';
      yield serializers.serialize(
        object.headerRows,
        specifiedType: const FullType(num),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ParserContributionMetaDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ParserContributionMetaDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'institution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.institution = valueDes;
          break;
        case r'region':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ParserContributionMetaDtoRegionEnum),
          ) as ParserContributionMetaDtoRegionEnum;
          result.region = valueDes;
          break;
        case r'accountType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ParserContributionMetaDtoAccountTypeEnum),
          ) as ParserContributionMetaDtoAccountTypeEnum;
          result.accountType = valueDes;
          break;
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ParserContributionMetaDtoFormatEnum),
          ) as ParserContributionMetaDtoFormatEnum;
          result.format = valueDes;
          break;
        case r'institutionDisplayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.institutionDisplayName = valueDes;
          break;
        case r'encoding':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.encoding = valueDes;
          break;
        case r'delimiter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.delimiter = valueDes;
          break;
        case r'headerRows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.headerRows = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.notes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ParserContributionMetaDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ParserContributionMetaDtoBuilder();
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

class ParserContributionMetaDtoRegionEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'cn')
  static const ParserContributionMetaDtoRegionEnum cn = _$parserContributionMetaDtoRegionEnum_cn;
  @BuiltValueEnumConst(wireName: r'us')
  static const ParserContributionMetaDtoRegionEnum us = _$parserContributionMetaDtoRegionEnum_us;
  @BuiltValueEnumConst(wireName: r'de')
  static const ParserContributionMetaDtoRegionEnum de = _$parserContributionMetaDtoRegionEnum_de;
  @BuiltValueEnumConst(wireName: r'fr')
  static const ParserContributionMetaDtoRegionEnum fr = _$parserContributionMetaDtoRegionEnum_fr;
  @BuiltValueEnumConst(wireName: r'gb')
  static const ParserContributionMetaDtoRegionEnum gb = _$parserContributionMetaDtoRegionEnum_gb;
  @BuiltValueEnumConst(wireName: r'hk')
  static const ParserContributionMetaDtoRegionEnum hk = _$parserContributionMetaDtoRegionEnum_hk;
  @BuiltValueEnumConst(wireName: r'jp')
  static const ParserContributionMetaDtoRegionEnum jp = _$parserContributionMetaDtoRegionEnum_jp;
  @BuiltValueEnumConst(wireName: r'sg')
  static const ParserContributionMetaDtoRegionEnum sg = _$parserContributionMetaDtoRegionEnum_sg;
  @BuiltValueEnumConst(wireName: r'au')
  static const ParserContributionMetaDtoRegionEnum au = _$parserContributionMetaDtoRegionEnum_au;
  @BuiltValueEnumConst(wireName: r'ca')
  static const ParserContributionMetaDtoRegionEnum ca = _$parserContributionMetaDtoRegionEnum_ca;
  @BuiltValueEnumConst(wireName: r'other')
  static const ParserContributionMetaDtoRegionEnum other = _$parserContributionMetaDtoRegionEnum_other;

  static Serializer<ParserContributionMetaDtoRegionEnum> get serializer => _$parserContributionMetaDtoRegionEnumSerializer;

  const ParserContributionMetaDtoRegionEnum._(String name): super(name);

  static BuiltSet<ParserContributionMetaDtoRegionEnum> get values => _$parserContributionMetaDtoRegionEnumValues;
  static ParserContributionMetaDtoRegionEnum valueOf(String name) => _$parserContributionMetaDtoRegionEnumValueOf(name);
}

class ParserContributionMetaDtoAccountTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'checking')
  static const ParserContributionMetaDtoAccountTypeEnum checking = _$parserContributionMetaDtoAccountTypeEnum_checking;
  @BuiltValueEnumConst(wireName: r'savings')
  static const ParserContributionMetaDtoAccountTypeEnum savings = _$parserContributionMetaDtoAccountTypeEnum_savings;
  @BuiltValueEnumConst(wireName: r'credit')
  static const ParserContributionMetaDtoAccountTypeEnum credit = _$parserContributionMetaDtoAccountTypeEnum_credit;
  @BuiltValueEnumConst(wireName: r'debit')
  static const ParserContributionMetaDtoAccountTypeEnum debit = _$parserContributionMetaDtoAccountTypeEnum_debit;
  @BuiltValueEnumConst(wireName: r'investment')
  static const ParserContributionMetaDtoAccountTypeEnum investment = _$parserContributionMetaDtoAccountTypeEnum_investment;

  static Serializer<ParserContributionMetaDtoAccountTypeEnum> get serializer => _$parserContributionMetaDtoAccountTypeEnumSerializer;

  const ParserContributionMetaDtoAccountTypeEnum._(String name): super(name);

  static BuiltSet<ParserContributionMetaDtoAccountTypeEnum> get values => _$parserContributionMetaDtoAccountTypeEnumValues;
  static ParserContributionMetaDtoAccountTypeEnum valueOf(String name) => _$parserContributionMetaDtoAccountTypeEnumValueOf(name);
}

class ParserContributionMetaDtoFormatEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'csv')
  static const ParserContributionMetaDtoFormatEnum csv = _$parserContributionMetaDtoFormatEnum_csv;
  @BuiltValueEnumConst(wireName: r'xlsx')
  static const ParserContributionMetaDtoFormatEnum xlsx = _$parserContributionMetaDtoFormatEnum_xlsx;
  @BuiltValueEnumConst(wireName: r'pdf')
  static const ParserContributionMetaDtoFormatEnum pdf = _$parserContributionMetaDtoFormatEnum_pdf;
  @BuiltValueEnumConst(wireName: r'ofx')
  static const ParserContributionMetaDtoFormatEnum ofx = _$parserContributionMetaDtoFormatEnum_ofx;
  @BuiltValueEnumConst(wireName: r'qif')
  static const ParserContributionMetaDtoFormatEnum qif = _$parserContributionMetaDtoFormatEnum_qif;

  static Serializer<ParserContributionMetaDtoFormatEnum> get serializer => _$parserContributionMetaDtoFormatEnumSerializer;

  const ParserContributionMetaDtoFormatEnum._(String name): super(name);

  static BuiltSet<ParserContributionMetaDtoFormatEnum> get values => _$parserContributionMetaDtoFormatEnumValues;
  static ParserContributionMetaDtoFormatEnum valueOf(String name) => _$parserContributionMetaDtoFormatEnumValueOf(name);
}

