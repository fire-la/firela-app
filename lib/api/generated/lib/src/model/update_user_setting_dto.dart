//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_user_setting_dto.g.dart';

/// UpdateUserSettingDto
///
/// Properties:
/// * [secId] - Security ID
/// * [annualInterestRate] - Annual interest rate
/// * [currency] - Currency code
/// * [baseCurrency] - Base currency code
/// * [benchmark] - Benchmark symbol
/// * [colorScheme] - Color scheme
/// * [dateRange] - Date range filter
/// * [emergencyFund] - Emergency fund amount
/// * [filtersPeriodAccounts] - Account filter IDs
/// * [filtersPeriodAssetClasses] - Asset class filters
/// * [filtersPeriodDataSource] - Data source filter
/// * [filtersPeriodSymbol] - Symbol filter
/// * [filtersPeriodTags] - Tag filters
/// * [isExperimentalFeatures] - Enable experimental features
/// * [isRestrictedView] - Enable restricted view mode
/// * [language] - Language code
/// * [locale] - Locale code
/// * [projectedTotalAmount] - Projected total amount
/// * [retirementDate] - Retirement date in ISO 8601 format
/// * [savingsRate] - Savings rate percentage
/// * [viewMode] - View mode
@BuiltValue()
abstract class UpdateUserSettingDto
    implements Built<UpdateUserSettingDto, UpdateUserSettingDtoBuilder> {
  /// Security ID
  @BuiltValueField(wireName: r'secId')
  num? get secId;

  /// Annual interest rate
  @BuiltValueField(wireName: r'annualInterestRate')
  num? get annualInterestRate;

  /// Currency code
  @BuiltValueField(wireName: r'currency')
  String? get currency;

  /// Base currency code
  @BuiltValueField(wireName: r'baseCurrency')
  String? get baseCurrency;

  /// Benchmark symbol
  @BuiltValueField(wireName: r'benchmark')
  String? get benchmark;

  /// Color scheme
  @BuiltValueField(wireName: r'colorScheme')
  UpdateUserSettingDtoColorSchemeEnum? get colorScheme;
  // enum colorSchemeEnum {  DARK,  LIGHT,  };

  /// Date range filter
  @BuiltValueField(wireName: r'dateRange')
  String? get dateRange;

  /// Emergency fund amount
  @BuiltValueField(wireName: r'emergencyFund')
  num? get emergencyFund;

  /// Account filter IDs
  @BuiltValueField(wireName: r'filters.accounts')
  BuiltList<String>? get filtersPeriodAccounts;

  /// Asset class filters
  @BuiltValueField(wireName: r'filters.assetClasses')
  BuiltList<String>? get filtersPeriodAssetClasses;

  /// Data source filter
  @BuiltValueField(wireName: r'filters.dataSource')
  String? get filtersPeriodDataSource;

  /// Symbol filter
  @BuiltValueField(wireName: r'filters.symbol')
  String? get filtersPeriodSymbol;

  /// Tag filters
  @BuiltValueField(wireName: r'filters.tags')
  BuiltList<String>? get filtersPeriodTags;

  /// Enable experimental features
  @BuiltValueField(wireName: r'isExperimentalFeatures')
  bool? get isExperimentalFeatures;

  /// Enable restricted view mode
  @BuiltValueField(wireName: r'isRestrictedView')
  bool? get isRestrictedView;

  /// Language code
  @BuiltValueField(wireName: r'language')
  String? get language;

  /// Locale code
  @BuiltValueField(wireName: r'locale')
  String? get locale;

  /// Projected total amount
  @BuiltValueField(wireName: r'projectedTotalAmount')
  num? get projectedTotalAmount;

  /// Retirement date in ISO 8601 format
  @BuiltValueField(wireName: r'retirementDate')
  String? get retirementDate;

  /// Savings rate percentage
  @BuiltValueField(wireName: r'savingsRate')
  num? get savingsRate;

  /// View mode
  @BuiltValueField(wireName: r'viewMode')
  UpdateUserSettingDtoViewModeEnum? get viewMode;
  // enum viewModeEnum {  DEFAULT,  ZEN,  };

  UpdateUserSettingDto._();

  factory UpdateUserSettingDto([void updates(UpdateUserSettingDtoBuilder b)]) =
      _$UpdateUserSettingDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateUserSettingDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateUserSettingDto> get serializer =>
      _$UpdateUserSettingDtoSerializer();
}

class _$UpdateUserSettingDtoSerializer
    implements PrimitiveSerializer<UpdateUserSettingDto> {
  @override
  final Iterable<Type> types = const [
    UpdateUserSettingDto,
    _$UpdateUserSettingDto
  ];

  @override
  final String wireName = r'UpdateUserSettingDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateUserSettingDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.secId != null) {
      yield r'secId';
      yield serializers.serialize(
        object.secId,
        specifiedType: const FullType(num),
      );
    }
    if (object.annualInterestRate != null) {
      yield r'annualInterestRate';
      yield serializers.serialize(
        object.annualInterestRate,
        specifiedType: const FullType(num),
      );
    }
    if (object.currency != null) {
      yield r'currency';
      yield serializers.serialize(
        object.currency,
        specifiedType: const FullType(String),
      );
    }
    if (object.baseCurrency != null) {
      yield r'baseCurrency';
      yield serializers.serialize(
        object.baseCurrency,
        specifiedType: const FullType(String),
      );
    }
    if (object.benchmark != null) {
      yield r'benchmark';
      yield serializers.serialize(
        object.benchmark,
        specifiedType: const FullType(String),
      );
    }
    if (object.colorScheme != null) {
      yield r'colorScheme';
      yield serializers.serialize(
        object.colorScheme,
        specifiedType: const FullType(UpdateUserSettingDtoColorSchemeEnum),
      );
    }
    if (object.dateRange != null) {
      yield r'dateRange';
      yield serializers.serialize(
        object.dateRange,
        specifiedType: const FullType(String),
      );
    }
    if (object.emergencyFund != null) {
      yield r'emergencyFund';
      yield serializers.serialize(
        object.emergencyFund,
        specifiedType: const FullType(num),
      );
    }
    if (object.filtersPeriodAccounts != null) {
      yield r'filters.accounts';
      yield serializers.serialize(
        object.filtersPeriodAccounts,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.filtersPeriodAssetClasses != null) {
      yield r'filters.assetClasses';
      yield serializers.serialize(
        object.filtersPeriodAssetClasses,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.filtersPeriodDataSource != null) {
      yield r'filters.dataSource';
      yield serializers.serialize(
        object.filtersPeriodDataSource,
        specifiedType: const FullType(String),
      );
    }
    if (object.filtersPeriodSymbol != null) {
      yield r'filters.symbol';
      yield serializers.serialize(
        object.filtersPeriodSymbol,
        specifiedType: const FullType(String),
      );
    }
    if (object.filtersPeriodTags != null) {
      yield r'filters.tags';
      yield serializers.serialize(
        object.filtersPeriodTags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.isExperimentalFeatures != null) {
      yield r'isExperimentalFeatures';
      yield serializers.serialize(
        object.isExperimentalFeatures,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isRestrictedView != null) {
      yield r'isRestrictedView';
      yield serializers.serialize(
        object.isRestrictedView,
        specifiedType: const FullType(bool),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType(String),
      );
    }
    if (object.locale != null) {
      yield r'locale';
      yield serializers.serialize(
        object.locale,
        specifiedType: const FullType(String),
      );
    }
    if (object.projectedTotalAmount != null) {
      yield r'projectedTotalAmount';
      yield serializers.serialize(
        object.projectedTotalAmount,
        specifiedType: const FullType(num),
      );
    }
    if (object.retirementDate != null) {
      yield r'retirementDate';
      yield serializers.serialize(
        object.retirementDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.savingsRate != null) {
      yield r'savingsRate';
      yield serializers.serialize(
        object.savingsRate,
        specifiedType: const FullType(num),
      );
    }
    if (object.viewMode != null) {
      yield r'viewMode';
      yield serializers.serialize(
        object.viewMode,
        specifiedType: const FullType(UpdateUserSettingDtoViewModeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateUserSettingDto object, {
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
    required UpdateUserSettingDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'secId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.secId = valueDes;
          break;
        case r'annualInterestRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.annualInterestRate = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'baseCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.baseCurrency = valueDes;
          break;
        case r'benchmark':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.benchmark = valueDes;
          break;
        case r'colorScheme':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateUserSettingDtoColorSchemeEnum),
          ) as UpdateUserSettingDtoColorSchemeEnum;
          result.colorScheme = valueDes;
          break;
        case r'dateRange':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dateRange = valueDes;
          break;
        case r'emergencyFund':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.emergencyFund = valueDes;
          break;
        case r'filters.accounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.filtersPeriodAccounts.replace(valueDes);
          break;
        case r'filters.assetClasses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.filtersPeriodAssetClasses.replace(valueDes);
          break;
        case r'filters.dataSource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.filtersPeriodDataSource = valueDes;
          break;
        case r'filters.symbol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.filtersPeriodSymbol = valueDes;
          break;
        case r'filters.tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.filtersPeriodTags.replace(valueDes);
          break;
        case r'isExperimentalFeatures':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isExperimentalFeatures = valueDes;
          break;
        case r'isRestrictedView':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isRestrictedView = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.language = valueDes;
          break;
        case r'locale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.locale = valueDes;
          break;
        case r'projectedTotalAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.projectedTotalAmount = valueDes;
          break;
        case r'retirementDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.retirementDate = valueDes;
          break;
        case r'savingsRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.savingsRate = valueDes;
          break;
        case r'viewMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateUserSettingDtoViewModeEnum),
          ) as UpdateUserSettingDtoViewModeEnum;
          result.viewMode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateUserSettingDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateUserSettingDtoBuilder();
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

class UpdateUserSettingDtoColorSchemeEnum extends EnumClass {
  /// Color scheme
  @BuiltValueEnumConst(wireName: r'DARK')
  static const UpdateUserSettingDtoColorSchemeEnum DARK =
      _$updateUserSettingDtoColorSchemeEnum_DARK;

  /// Color scheme
  @BuiltValueEnumConst(wireName: r'LIGHT', fallback: true)
  static const UpdateUserSettingDtoColorSchemeEnum LIGHT =
      _$updateUserSettingDtoColorSchemeEnum_LIGHT;

  static Serializer<UpdateUserSettingDtoColorSchemeEnum> get serializer =>
      _$updateUserSettingDtoColorSchemeEnumSerializer;

  const UpdateUserSettingDtoColorSchemeEnum._(String name) : super(name);

  static BuiltSet<UpdateUserSettingDtoColorSchemeEnum> get values =>
      _$updateUserSettingDtoColorSchemeEnumValues;
  static UpdateUserSettingDtoColorSchemeEnum valueOf(String name) =>
      _$updateUserSettingDtoColorSchemeEnumValueOf(name);
}

class UpdateUserSettingDtoViewModeEnum extends EnumClass {
  /// View mode
  @BuiltValueEnumConst(wireName: r'DEFAULT')
  static const UpdateUserSettingDtoViewModeEnum DEFAULT =
      _$updateUserSettingDtoViewModeEnum_DEFAULT;

  /// View mode
  @BuiltValueEnumConst(wireName: r'ZEN', fallback: true)
  static const UpdateUserSettingDtoViewModeEnum ZEN =
      _$updateUserSettingDtoViewModeEnum_ZEN;

  static Serializer<UpdateUserSettingDtoViewModeEnum> get serializer =>
      _$updateUserSettingDtoViewModeEnumSerializer;

  const UpdateUserSettingDtoViewModeEnum._(String name) : super(name);

  static BuiltSet<UpdateUserSettingDtoViewModeEnum> get values =>
      _$updateUserSettingDtoViewModeEnumValues;
  static UpdateUserSettingDtoViewModeEnum valueOf(String name) =>
      _$updateUserSettingDtoViewModeEnumValueOf(name);
}
