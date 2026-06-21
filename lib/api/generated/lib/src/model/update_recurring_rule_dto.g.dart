// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_recurring_rule_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UpdateRecurringRuleDtoFrequencyEnum
    _$updateRecurringRuleDtoFrequencyEnum_WEEKLY =
    const UpdateRecurringRuleDtoFrequencyEnum._('WEEKLY');
const UpdateRecurringRuleDtoFrequencyEnum
    _$updateRecurringRuleDtoFrequencyEnum_BIWEEKLY =
    const UpdateRecurringRuleDtoFrequencyEnum._('BIWEEKLY');
const UpdateRecurringRuleDtoFrequencyEnum
    _$updateRecurringRuleDtoFrequencyEnum_MONTHLY =
    const UpdateRecurringRuleDtoFrequencyEnum._('MONTHLY');
const UpdateRecurringRuleDtoFrequencyEnum
    _$updateRecurringRuleDtoFrequencyEnum_BIMONTHLY =
    const UpdateRecurringRuleDtoFrequencyEnum._('BIMONTHLY');
const UpdateRecurringRuleDtoFrequencyEnum
    _$updateRecurringRuleDtoFrequencyEnum_QUARTERLY =
    const UpdateRecurringRuleDtoFrequencyEnum._('QUARTERLY');
const UpdateRecurringRuleDtoFrequencyEnum
    _$updateRecurringRuleDtoFrequencyEnum_YEARLY =
    const UpdateRecurringRuleDtoFrequencyEnum._('YEARLY');
const UpdateRecurringRuleDtoFrequencyEnum
    _$updateRecurringRuleDtoFrequencyEnum_CUSTOM =
    const UpdateRecurringRuleDtoFrequencyEnum._('CUSTOM');

UpdateRecurringRuleDtoFrequencyEnum
    _$updateRecurringRuleDtoFrequencyEnumValueOf(String name) {
  switch (name) {
    case 'WEEKLY':
      return _$updateRecurringRuleDtoFrequencyEnum_WEEKLY;
    case 'BIWEEKLY':
      return _$updateRecurringRuleDtoFrequencyEnum_BIWEEKLY;
    case 'MONTHLY':
      return _$updateRecurringRuleDtoFrequencyEnum_MONTHLY;
    case 'BIMONTHLY':
      return _$updateRecurringRuleDtoFrequencyEnum_BIMONTHLY;
    case 'QUARTERLY':
      return _$updateRecurringRuleDtoFrequencyEnum_QUARTERLY;
    case 'YEARLY':
      return _$updateRecurringRuleDtoFrequencyEnum_YEARLY;
    case 'CUSTOM':
      return _$updateRecurringRuleDtoFrequencyEnum_CUSTOM;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<UpdateRecurringRuleDtoFrequencyEnum>
    _$updateRecurringRuleDtoFrequencyEnumValues = new BuiltSet<
        UpdateRecurringRuleDtoFrequencyEnum>(const <UpdateRecurringRuleDtoFrequencyEnum>[
  _$updateRecurringRuleDtoFrequencyEnum_WEEKLY,
  _$updateRecurringRuleDtoFrequencyEnum_BIWEEKLY,
  _$updateRecurringRuleDtoFrequencyEnum_MONTHLY,
  _$updateRecurringRuleDtoFrequencyEnum_BIMONTHLY,
  _$updateRecurringRuleDtoFrequencyEnum_QUARTERLY,
  _$updateRecurringRuleDtoFrequencyEnum_YEARLY,
  _$updateRecurringRuleDtoFrequencyEnum_CUSTOM,
]);

Serializer<UpdateRecurringRuleDtoFrequencyEnum>
    _$updateRecurringRuleDtoFrequencyEnumSerializer =
    new _$UpdateRecurringRuleDtoFrequencyEnumSerializer();

class _$UpdateRecurringRuleDtoFrequencyEnumSerializer
    implements PrimitiveSerializer<UpdateRecurringRuleDtoFrequencyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'WEEKLY': 'WEEKLY',
    'BIWEEKLY': 'BIWEEKLY',
    'MONTHLY': 'MONTHLY',
    'BIMONTHLY': 'BIMONTHLY',
    'QUARTERLY': 'QUARTERLY',
    'YEARLY': 'YEARLY',
    'CUSTOM': 'CUSTOM',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'WEEKLY': 'WEEKLY',
    'BIWEEKLY': 'BIWEEKLY',
    'MONTHLY': 'MONTHLY',
    'BIMONTHLY': 'BIMONTHLY',
    'QUARTERLY': 'QUARTERLY',
    'YEARLY': 'YEARLY',
    'CUSTOM': 'CUSTOM',
  };

  @override
  final Iterable<Type> types = const <Type>[
    UpdateRecurringRuleDtoFrequencyEnum
  ];
  @override
  final String wireName = 'UpdateRecurringRuleDtoFrequencyEnum';

  @override
  Object serialize(
          Serializers serializers, UpdateRecurringRuleDtoFrequencyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UpdateRecurringRuleDtoFrequencyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UpdateRecurringRuleDtoFrequencyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UpdateRecurringRuleDto extends UpdateRecurringRuleDto {
  @override
  final String? name;
  @override
  final String? icon;
  @override
  final UpdateRecurringRuleDtoFrequencyEnum? frequency;
  @override
  final num? expectedAmount;
  @override
  final num? expectedDay;
  @override
  final num? customIntervalDays;
  @override
  final String? currency;
  @override
  final String? matchPayeePattern;
  @override
  final num? matchAmountTolerance;
  @override
  final String? defaultExpenseAccount;
  @override
  final String? defaultPaymentAccount;
  @override
  final String? defaultPayee;
  @override
  final bool? autoCreate;
  @override
  final bool? isActive;
  @override
  final String? endDate;

  factory _$UpdateRecurringRuleDto(
          [void Function(UpdateRecurringRuleDtoBuilder)? updates]) =>
      (new UpdateRecurringRuleDtoBuilder()..update(updates))._build();

  _$UpdateRecurringRuleDto._(
      {this.name,
      this.icon,
      this.frequency,
      this.expectedAmount,
      this.expectedDay,
      this.customIntervalDays,
      this.currency,
      this.matchPayeePattern,
      this.matchAmountTolerance,
      this.defaultExpenseAccount,
      this.defaultPaymentAccount,
      this.defaultPayee,
      this.autoCreate,
      this.isActive,
      this.endDate})
      : super._();

  @override
  UpdateRecurringRuleDto rebuild(
          void Function(UpdateRecurringRuleDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateRecurringRuleDtoBuilder toBuilder() =>
      new UpdateRecurringRuleDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateRecurringRuleDto &&
        name == other.name &&
        icon == other.icon &&
        frequency == other.frequency &&
        expectedAmount == other.expectedAmount &&
        expectedDay == other.expectedDay &&
        customIntervalDays == other.customIntervalDays &&
        currency == other.currency &&
        matchPayeePattern == other.matchPayeePattern &&
        matchAmountTolerance == other.matchAmountTolerance &&
        defaultExpenseAccount == other.defaultExpenseAccount &&
        defaultPaymentAccount == other.defaultPaymentAccount &&
        defaultPayee == other.defaultPayee &&
        autoCreate == other.autoCreate &&
        isActive == other.isActive &&
        endDate == other.endDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jc(_$hash, expectedAmount.hashCode);
    _$hash = $jc(_$hash, expectedDay.hashCode);
    _$hash = $jc(_$hash, customIntervalDays.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, matchPayeePattern.hashCode);
    _$hash = $jc(_$hash, matchAmountTolerance.hashCode);
    _$hash = $jc(_$hash, defaultExpenseAccount.hashCode);
    _$hash = $jc(_$hash, defaultPaymentAccount.hashCode);
    _$hash = $jc(_$hash, defaultPayee.hashCode);
    _$hash = $jc(_$hash, autoCreate.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateRecurringRuleDto')
          ..add('name', name)
          ..add('icon', icon)
          ..add('frequency', frequency)
          ..add('expectedAmount', expectedAmount)
          ..add('expectedDay', expectedDay)
          ..add('customIntervalDays', customIntervalDays)
          ..add('currency', currency)
          ..add('matchPayeePattern', matchPayeePattern)
          ..add('matchAmountTolerance', matchAmountTolerance)
          ..add('defaultExpenseAccount', defaultExpenseAccount)
          ..add('defaultPaymentAccount', defaultPaymentAccount)
          ..add('defaultPayee', defaultPayee)
          ..add('autoCreate', autoCreate)
          ..add('isActive', isActive)
          ..add('endDate', endDate))
        .toString();
  }
}

class UpdateRecurringRuleDtoBuilder
    implements Builder<UpdateRecurringRuleDto, UpdateRecurringRuleDtoBuilder> {
  _$UpdateRecurringRuleDto? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  UpdateRecurringRuleDtoFrequencyEnum? _frequency;
  UpdateRecurringRuleDtoFrequencyEnum? get frequency => _$this._frequency;
  set frequency(UpdateRecurringRuleDtoFrequencyEnum? frequency) =>
      _$this._frequency = frequency;

  num? _expectedAmount;
  num? get expectedAmount => _$this._expectedAmount;
  set expectedAmount(num? expectedAmount) =>
      _$this._expectedAmount = expectedAmount;

  num? _expectedDay;
  num? get expectedDay => _$this._expectedDay;
  set expectedDay(num? expectedDay) => _$this._expectedDay = expectedDay;

  num? _customIntervalDays;
  num? get customIntervalDays => _$this._customIntervalDays;
  set customIntervalDays(num? customIntervalDays) =>
      _$this._customIntervalDays = customIntervalDays;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _matchPayeePattern;
  String? get matchPayeePattern => _$this._matchPayeePattern;
  set matchPayeePattern(String? matchPayeePattern) =>
      _$this._matchPayeePattern = matchPayeePattern;

  num? _matchAmountTolerance;
  num? get matchAmountTolerance => _$this._matchAmountTolerance;
  set matchAmountTolerance(num? matchAmountTolerance) =>
      _$this._matchAmountTolerance = matchAmountTolerance;

  String? _defaultExpenseAccount;
  String? get defaultExpenseAccount => _$this._defaultExpenseAccount;
  set defaultExpenseAccount(String? defaultExpenseAccount) =>
      _$this._defaultExpenseAccount = defaultExpenseAccount;

  String? _defaultPaymentAccount;
  String? get defaultPaymentAccount => _$this._defaultPaymentAccount;
  set defaultPaymentAccount(String? defaultPaymentAccount) =>
      _$this._defaultPaymentAccount = defaultPaymentAccount;

  String? _defaultPayee;
  String? get defaultPayee => _$this._defaultPayee;
  set defaultPayee(String? defaultPayee) => _$this._defaultPayee = defaultPayee;

  bool? _autoCreate;
  bool? get autoCreate => _$this._autoCreate;
  set autoCreate(bool? autoCreate) => _$this._autoCreate = autoCreate;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  UpdateRecurringRuleDtoBuilder() {
    UpdateRecurringRuleDto._defaults(this);
  }

  UpdateRecurringRuleDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _icon = $v.icon;
      _frequency = $v.frequency;
      _expectedAmount = $v.expectedAmount;
      _expectedDay = $v.expectedDay;
      _customIntervalDays = $v.customIntervalDays;
      _currency = $v.currency;
      _matchPayeePattern = $v.matchPayeePattern;
      _matchAmountTolerance = $v.matchAmountTolerance;
      _defaultExpenseAccount = $v.defaultExpenseAccount;
      _defaultPaymentAccount = $v.defaultPaymentAccount;
      _defaultPayee = $v.defaultPayee;
      _autoCreate = $v.autoCreate;
      _isActive = $v.isActive;
      _endDate = $v.endDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateRecurringRuleDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateRecurringRuleDto;
  }

  @override
  void update(void Function(UpdateRecurringRuleDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateRecurringRuleDto build() => _build();

  _$UpdateRecurringRuleDto _build() {
    final _$result = _$v ??
        new _$UpdateRecurringRuleDto._(
            name: name,
            icon: icon,
            frequency: frequency,
            expectedAmount: expectedAmount,
            expectedDay: expectedDay,
            customIntervalDays: customIntervalDays,
            currency: currency,
            matchPayeePattern: matchPayeePattern,
            matchAmountTolerance: matchAmountTolerance,
            defaultExpenseAccount: defaultExpenseAccount,
            defaultPaymentAccount: defaultPaymentAccount,
            defaultPayee: defaultPayee,
            autoCreate: autoCreate,
            isActive: isActive,
            endDate: endDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
