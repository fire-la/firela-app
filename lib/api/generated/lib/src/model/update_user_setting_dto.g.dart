// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_setting_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UpdateUserSettingDtoColorSchemeEnum
    _$updateUserSettingDtoColorSchemeEnum_DARK =
    const UpdateUserSettingDtoColorSchemeEnum._('DARK');
const UpdateUserSettingDtoColorSchemeEnum
    _$updateUserSettingDtoColorSchemeEnum_LIGHT =
    const UpdateUserSettingDtoColorSchemeEnum._('LIGHT');

UpdateUserSettingDtoColorSchemeEnum
    _$updateUserSettingDtoColorSchemeEnumValueOf(String name) {
  switch (name) {
    case 'DARK':
      return _$updateUserSettingDtoColorSchemeEnum_DARK;
    case 'LIGHT':
      return _$updateUserSettingDtoColorSchemeEnum_LIGHT;
    default:
      return _$updateUserSettingDtoColorSchemeEnum_LIGHT;
  }
}

final BuiltSet<UpdateUserSettingDtoColorSchemeEnum>
    _$updateUserSettingDtoColorSchemeEnumValues = new BuiltSet<
        UpdateUserSettingDtoColorSchemeEnum>(const <UpdateUserSettingDtoColorSchemeEnum>[
  _$updateUserSettingDtoColorSchemeEnum_DARK,
  _$updateUserSettingDtoColorSchemeEnum_LIGHT,
]);

const UpdateUserSettingDtoViewModeEnum
    _$updateUserSettingDtoViewModeEnum_DEFAULT =
    const UpdateUserSettingDtoViewModeEnum._('DEFAULT');
const UpdateUserSettingDtoViewModeEnum _$updateUserSettingDtoViewModeEnum_ZEN =
    const UpdateUserSettingDtoViewModeEnum._('ZEN');

UpdateUserSettingDtoViewModeEnum _$updateUserSettingDtoViewModeEnumValueOf(
    String name) {
  switch (name) {
    case 'DEFAULT':
      return _$updateUserSettingDtoViewModeEnum_DEFAULT;
    case 'ZEN':
      return _$updateUserSettingDtoViewModeEnum_ZEN;
    default:
      return _$updateUserSettingDtoViewModeEnum_ZEN;
  }
}

final BuiltSet<UpdateUserSettingDtoViewModeEnum>
    _$updateUserSettingDtoViewModeEnumValues = new BuiltSet<
        UpdateUserSettingDtoViewModeEnum>(const <UpdateUserSettingDtoViewModeEnum>[
  _$updateUserSettingDtoViewModeEnum_DEFAULT,
  _$updateUserSettingDtoViewModeEnum_ZEN,
]);

Serializer<UpdateUserSettingDtoColorSchemeEnum>
    _$updateUserSettingDtoColorSchemeEnumSerializer =
    new _$UpdateUserSettingDtoColorSchemeEnumSerializer();
Serializer<UpdateUserSettingDtoViewModeEnum>
    _$updateUserSettingDtoViewModeEnumSerializer =
    new _$UpdateUserSettingDtoViewModeEnumSerializer();

class _$UpdateUserSettingDtoColorSchemeEnumSerializer
    implements PrimitiveSerializer<UpdateUserSettingDtoColorSchemeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DARK': 'DARK',
    'LIGHT': 'LIGHT',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DARK': 'DARK',
    'LIGHT': 'LIGHT',
  };

  @override
  final Iterable<Type> types = const <Type>[
    UpdateUserSettingDtoColorSchemeEnum
  ];
  @override
  final String wireName = 'UpdateUserSettingDtoColorSchemeEnum';

  @override
  Object serialize(
          Serializers serializers, UpdateUserSettingDtoColorSchemeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UpdateUserSettingDtoColorSchemeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UpdateUserSettingDtoColorSchemeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UpdateUserSettingDtoViewModeEnumSerializer
    implements PrimitiveSerializer<UpdateUserSettingDtoViewModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DEFAULT': 'DEFAULT',
    'ZEN': 'ZEN',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DEFAULT': 'DEFAULT',
    'ZEN': 'ZEN',
  };

  @override
  final Iterable<Type> types = const <Type>[UpdateUserSettingDtoViewModeEnum];
  @override
  final String wireName = 'UpdateUserSettingDtoViewModeEnum';

  @override
  Object serialize(
          Serializers serializers, UpdateUserSettingDtoViewModeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UpdateUserSettingDtoViewModeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UpdateUserSettingDtoViewModeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UpdateUserSettingDto extends UpdateUserSettingDto {
  @override
  final num? secId;
  @override
  final num? annualInterestRate;
  @override
  final String? currency;
  @override
  final String? baseCurrency;
  @override
  final String? benchmark;
  @override
  final UpdateUserSettingDtoColorSchemeEnum? colorScheme;
  @override
  final String? dateRange;
  @override
  final num? emergencyFund;
  @override
  final BuiltList<String>? filtersPeriodAccounts;
  @override
  final BuiltList<String>? filtersPeriodAssetClasses;
  @override
  final String? filtersPeriodDataSource;
  @override
  final String? filtersPeriodSymbol;
  @override
  final BuiltList<String>? filtersPeriodTags;
  @override
  final bool? isExperimentalFeatures;
  @override
  final bool? isRestrictedView;
  @override
  final String? language;
  @override
  final String? locale;
  @override
  final num? projectedTotalAmount;
  @override
  final String? retirementDate;
  @override
  final num? savingsRate;
  @override
  final UpdateUserSettingDtoViewModeEnum? viewMode;

  factory _$UpdateUserSettingDto(
          [void Function(UpdateUserSettingDtoBuilder)? updates]) =>
      (new UpdateUserSettingDtoBuilder()..update(updates))._build();

  _$UpdateUserSettingDto._(
      {this.secId,
      this.annualInterestRate,
      this.currency,
      this.baseCurrency,
      this.benchmark,
      this.colorScheme,
      this.dateRange,
      this.emergencyFund,
      this.filtersPeriodAccounts,
      this.filtersPeriodAssetClasses,
      this.filtersPeriodDataSource,
      this.filtersPeriodSymbol,
      this.filtersPeriodTags,
      this.isExperimentalFeatures,
      this.isRestrictedView,
      this.language,
      this.locale,
      this.projectedTotalAmount,
      this.retirementDate,
      this.savingsRate,
      this.viewMode})
      : super._();

  @override
  UpdateUserSettingDto rebuild(
          void Function(UpdateUserSettingDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUserSettingDtoBuilder toBuilder() =>
      new UpdateUserSettingDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUserSettingDto &&
        secId == other.secId &&
        annualInterestRate == other.annualInterestRate &&
        currency == other.currency &&
        baseCurrency == other.baseCurrency &&
        benchmark == other.benchmark &&
        colorScheme == other.colorScheme &&
        dateRange == other.dateRange &&
        emergencyFund == other.emergencyFund &&
        filtersPeriodAccounts == other.filtersPeriodAccounts &&
        filtersPeriodAssetClasses == other.filtersPeriodAssetClasses &&
        filtersPeriodDataSource == other.filtersPeriodDataSource &&
        filtersPeriodSymbol == other.filtersPeriodSymbol &&
        filtersPeriodTags == other.filtersPeriodTags &&
        isExperimentalFeatures == other.isExperimentalFeatures &&
        isRestrictedView == other.isRestrictedView &&
        language == other.language &&
        locale == other.locale &&
        projectedTotalAmount == other.projectedTotalAmount &&
        retirementDate == other.retirementDate &&
        savingsRate == other.savingsRate &&
        viewMode == other.viewMode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, secId.hashCode);
    _$hash = $jc(_$hash, annualInterestRate.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, baseCurrency.hashCode);
    _$hash = $jc(_$hash, benchmark.hashCode);
    _$hash = $jc(_$hash, colorScheme.hashCode);
    _$hash = $jc(_$hash, dateRange.hashCode);
    _$hash = $jc(_$hash, emergencyFund.hashCode);
    _$hash = $jc(_$hash, filtersPeriodAccounts.hashCode);
    _$hash = $jc(_$hash, filtersPeriodAssetClasses.hashCode);
    _$hash = $jc(_$hash, filtersPeriodDataSource.hashCode);
    _$hash = $jc(_$hash, filtersPeriodSymbol.hashCode);
    _$hash = $jc(_$hash, filtersPeriodTags.hashCode);
    _$hash = $jc(_$hash, isExperimentalFeatures.hashCode);
    _$hash = $jc(_$hash, isRestrictedView.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, locale.hashCode);
    _$hash = $jc(_$hash, projectedTotalAmount.hashCode);
    _$hash = $jc(_$hash, retirementDate.hashCode);
    _$hash = $jc(_$hash, savingsRate.hashCode);
    _$hash = $jc(_$hash, viewMode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateUserSettingDto')
          ..add('secId', secId)
          ..add('annualInterestRate', annualInterestRate)
          ..add('currency', currency)
          ..add('baseCurrency', baseCurrency)
          ..add('benchmark', benchmark)
          ..add('colorScheme', colorScheme)
          ..add('dateRange', dateRange)
          ..add('emergencyFund', emergencyFund)
          ..add('filtersPeriodAccounts', filtersPeriodAccounts)
          ..add('filtersPeriodAssetClasses', filtersPeriodAssetClasses)
          ..add('filtersPeriodDataSource', filtersPeriodDataSource)
          ..add('filtersPeriodSymbol', filtersPeriodSymbol)
          ..add('filtersPeriodTags', filtersPeriodTags)
          ..add('isExperimentalFeatures', isExperimentalFeatures)
          ..add('isRestrictedView', isRestrictedView)
          ..add('language', language)
          ..add('locale', locale)
          ..add('projectedTotalAmount', projectedTotalAmount)
          ..add('retirementDate', retirementDate)
          ..add('savingsRate', savingsRate)
          ..add('viewMode', viewMode))
        .toString();
  }
}

class UpdateUserSettingDtoBuilder
    implements Builder<UpdateUserSettingDto, UpdateUserSettingDtoBuilder> {
  _$UpdateUserSettingDto? _$v;

  num? _secId;
  num? get secId => _$this._secId;
  set secId(num? secId) => _$this._secId = secId;

  num? _annualInterestRate;
  num? get annualInterestRate => _$this._annualInterestRate;
  set annualInterestRate(num? annualInterestRate) =>
      _$this._annualInterestRate = annualInterestRate;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _baseCurrency;
  String? get baseCurrency => _$this._baseCurrency;
  set baseCurrency(String? baseCurrency) => _$this._baseCurrency = baseCurrency;

  String? _benchmark;
  String? get benchmark => _$this._benchmark;
  set benchmark(String? benchmark) => _$this._benchmark = benchmark;

  UpdateUserSettingDtoColorSchemeEnum? _colorScheme;
  UpdateUserSettingDtoColorSchemeEnum? get colorScheme => _$this._colorScheme;
  set colorScheme(UpdateUserSettingDtoColorSchemeEnum? colorScheme) =>
      _$this._colorScheme = colorScheme;

  String? _dateRange;
  String? get dateRange => _$this._dateRange;
  set dateRange(String? dateRange) => _$this._dateRange = dateRange;

  num? _emergencyFund;
  num? get emergencyFund => _$this._emergencyFund;
  set emergencyFund(num? emergencyFund) =>
      _$this._emergencyFund = emergencyFund;

  ListBuilder<String>? _filtersPeriodAccounts;
  ListBuilder<String> get filtersPeriodAccounts =>
      _$this._filtersPeriodAccounts ??= new ListBuilder<String>();
  set filtersPeriodAccounts(ListBuilder<String>? filtersPeriodAccounts) =>
      _$this._filtersPeriodAccounts = filtersPeriodAccounts;

  ListBuilder<String>? _filtersPeriodAssetClasses;
  ListBuilder<String> get filtersPeriodAssetClasses =>
      _$this._filtersPeriodAssetClasses ??= new ListBuilder<String>();
  set filtersPeriodAssetClasses(
          ListBuilder<String>? filtersPeriodAssetClasses) =>
      _$this._filtersPeriodAssetClasses = filtersPeriodAssetClasses;

  String? _filtersPeriodDataSource;
  String? get filtersPeriodDataSource => _$this._filtersPeriodDataSource;
  set filtersPeriodDataSource(String? filtersPeriodDataSource) =>
      _$this._filtersPeriodDataSource = filtersPeriodDataSource;

  String? _filtersPeriodSymbol;
  String? get filtersPeriodSymbol => _$this._filtersPeriodSymbol;
  set filtersPeriodSymbol(String? filtersPeriodSymbol) =>
      _$this._filtersPeriodSymbol = filtersPeriodSymbol;

  ListBuilder<String>? _filtersPeriodTags;
  ListBuilder<String> get filtersPeriodTags =>
      _$this._filtersPeriodTags ??= new ListBuilder<String>();
  set filtersPeriodTags(ListBuilder<String>? filtersPeriodTags) =>
      _$this._filtersPeriodTags = filtersPeriodTags;

  bool? _isExperimentalFeatures;
  bool? get isExperimentalFeatures => _$this._isExperimentalFeatures;
  set isExperimentalFeatures(bool? isExperimentalFeatures) =>
      _$this._isExperimentalFeatures = isExperimentalFeatures;

  bool? _isRestrictedView;
  bool? get isRestrictedView => _$this._isRestrictedView;
  set isRestrictedView(bool? isRestrictedView) =>
      _$this._isRestrictedView = isRestrictedView;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _locale;
  String? get locale => _$this._locale;
  set locale(String? locale) => _$this._locale = locale;

  num? _projectedTotalAmount;
  num? get projectedTotalAmount => _$this._projectedTotalAmount;
  set projectedTotalAmount(num? projectedTotalAmount) =>
      _$this._projectedTotalAmount = projectedTotalAmount;

  String? _retirementDate;
  String? get retirementDate => _$this._retirementDate;
  set retirementDate(String? retirementDate) =>
      _$this._retirementDate = retirementDate;

  num? _savingsRate;
  num? get savingsRate => _$this._savingsRate;
  set savingsRate(num? savingsRate) => _$this._savingsRate = savingsRate;

  UpdateUserSettingDtoViewModeEnum? _viewMode;
  UpdateUserSettingDtoViewModeEnum? get viewMode => _$this._viewMode;
  set viewMode(UpdateUserSettingDtoViewModeEnum? viewMode) =>
      _$this._viewMode = viewMode;

  UpdateUserSettingDtoBuilder() {
    UpdateUserSettingDto._defaults(this);
  }

  UpdateUserSettingDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _secId = $v.secId;
      _annualInterestRate = $v.annualInterestRate;
      _currency = $v.currency;
      _baseCurrency = $v.baseCurrency;
      _benchmark = $v.benchmark;
      _colorScheme = $v.colorScheme;
      _dateRange = $v.dateRange;
      _emergencyFund = $v.emergencyFund;
      _filtersPeriodAccounts = $v.filtersPeriodAccounts?.toBuilder();
      _filtersPeriodAssetClasses = $v.filtersPeriodAssetClasses?.toBuilder();
      _filtersPeriodDataSource = $v.filtersPeriodDataSource;
      _filtersPeriodSymbol = $v.filtersPeriodSymbol;
      _filtersPeriodTags = $v.filtersPeriodTags?.toBuilder();
      _isExperimentalFeatures = $v.isExperimentalFeatures;
      _isRestrictedView = $v.isRestrictedView;
      _language = $v.language;
      _locale = $v.locale;
      _projectedTotalAmount = $v.projectedTotalAmount;
      _retirementDate = $v.retirementDate;
      _savingsRate = $v.savingsRate;
      _viewMode = $v.viewMode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUserSettingDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateUserSettingDto;
  }

  @override
  void update(void Function(UpdateUserSettingDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateUserSettingDto build() => _build();

  _$UpdateUserSettingDto _build() {
    _$UpdateUserSettingDto _$result;
    try {
      _$result = _$v ??
          new _$UpdateUserSettingDto._(
              secId: secId,
              annualInterestRate: annualInterestRate,
              currency: currency,
              baseCurrency: baseCurrency,
              benchmark: benchmark,
              colorScheme: colorScheme,
              dateRange: dateRange,
              emergencyFund: emergencyFund,
              filtersPeriodAccounts: _filtersPeriodAccounts?.build(),
              filtersPeriodAssetClasses: _filtersPeriodAssetClasses?.build(),
              filtersPeriodDataSource: filtersPeriodDataSource,
              filtersPeriodSymbol: filtersPeriodSymbol,
              filtersPeriodTags: _filtersPeriodTags?.build(),
              isExperimentalFeatures: isExperimentalFeatures,
              isRestrictedView: isRestrictedView,
              language: language,
              locale: locale,
              projectedTotalAmount: projectedTotalAmount,
              retirementDate: retirementDate,
              savingsRate: savingsRate,
              viewMode: viewMode);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filtersPeriodAccounts';
        _filtersPeriodAccounts?.build();
        _$failedField = 'filtersPeriodAssetClasses';
        _filtersPeriodAssetClasses?.build();

        _$failedField = 'filtersPeriodTags';
        _filtersPeriodTags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateUserSettingDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
