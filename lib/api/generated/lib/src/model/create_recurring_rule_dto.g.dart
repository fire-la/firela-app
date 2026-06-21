// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_recurring_rule_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateRecurringRuleDtoFrequencyEnum
    _$createRecurringRuleDtoFrequencyEnum_WEEKLY =
    const CreateRecurringRuleDtoFrequencyEnum._('WEEKLY');
const CreateRecurringRuleDtoFrequencyEnum
    _$createRecurringRuleDtoFrequencyEnum_BIWEEKLY =
    const CreateRecurringRuleDtoFrequencyEnum._('BIWEEKLY');
const CreateRecurringRuleDtoFrequencyEnum
    _$createRecurringRuleDtoFrequencyEnum_MONTHLY =
    const CreateRecurringRuleDtoFrequencyEnum._('MONTHLY');
const CreateRecurringRuleDtoFrequencyEnum
    _$createRecurringRuleDtoFrequencyEnum_BIMONTHLY =
    const CreateRecurringRuleDtoFrequencyEnum._('BIMONTHLY');
const CreateRecurringRuleDtoFrequencyEnum
    _$createRecurringRuleDtoFrequencyEnum_QUARTERLY =
    const CreateRecurringRuleDtoFrequencyEnum._('QUARTERLY');
const CreateRecurringRuleDtoFrequencyEnum
    _$createRecurringRuleDtoFrequencyEnum_YEARLY =
    const CreateRecurringRuleDtoFrequencyEnum._('YEARLY');
const CreateRecurringRuleDtoFrequencyEnum
    _$createRecurringRuleDtoFrequencyEnum_CUSTOM =
    const CreateRecurringRuleDtoFrequencyEnum._('CUSTOM');

CreateRecurringRuleDtoFrequencyEnum
    _$createRecurringRuleDtoFrequencyEnumValueOf(String name) {
  switch (name) {
    case 'WEEKLY':
      return _$createRecurringRuleDtoFrequencyEnum_WEEKLY;
    case 'BIWEEKLY':
      return _$createRecurringRuleDtoFrequencyEnum_BIWEEKLY;
    case 'MONTHLY':
      return _$createRecurringRuleDtoFrequencyEnum_MONTHLY;
    case 'BIMONTHLY':
      return _$createRecurringRuleDtoFrequencyEnum_BIMONTHLY;
    case 'QUARTERLY':
      return _$createRecurringRuleDtoFrequencyEnum_QUARTERLY;
    case 'YEARLY':
      return _$createRecurringRuleDtoFrequencyEnum_YEARLY;
    case 'CUSTOM':
      return _$createRecurringRuleDtoFrequencyEnum_CUSTOM;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CreateRecurringRuleDtoFrequencyEnum>
    _$createRecurringRuleDtoFrequencyEnumValues = new BuiltSet<
        CreateRecurringRuleDtoFrequencyEnum>(const <CreateRecurringRuleDtoFrequencyEnum>[
  _$createRecurringRuleDtoFrequencyEnum_WEEKLY,
  _$createRecurringRuleDtoFrequencyEnum_BIWEEKLY,
  _$createRecurringRuleDtoFrequencyEnum_MONTHLY,
  _$createRecurringRuleDtoFrequencyEnum_BIMONTHLY,
  _$createRecurringRuleDtoFrequencyEnum_QUARTERLY,
  _$createRecurringRuleDtoFrequencyEnum_YEARLY,
  _$createRecurringRuleDtoFrequencyEnum_CUSTOM,
]);

Serializer<CreateRecurringRuleDtoFrequencyEnum>
    _$createRecurringRuleDtoFrequencyEnumSerializer =
    new _$CreateRecurringRuleDtoFrequencyEnumSerializer();

class _$CreateRecurringRuleDtoFrequencyEnumSerializer
    implements PrimitiveSerializer<CreateRecurringRuleDtoFrequencyEnum> {
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
    CreateRecurringRuleDtoFrequencyEnum
  ];
  @override
  final String wireName = 'CreateRecurringRuleDtoFrequencyEnum';

  @override
  Object serialize(
          Serializers serializers, CreateRecurringRuleDtoFrequencyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateRecurringRuleDtoFrequencyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateRecurringRuleDtoFrequencyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateRecurringRuleDto extends CreateRecurringRuleDto {
  @override
  final String name;
  @override
  final String? icon;
  @override
  final CreateRecurringRuleDtoFrequencyEnum frequency;
  @override
  final num expectedAmount;
  @override
  final num? expectedDay;
  @override
  final num? customIntervalDays;
  @override
  final String currency;
  @override
  final String? matchPayeePattern;
  @override
  final num matchAmountTolerance;
  @override
  final String? defaultExpenseAccount;
  @override
  final String? defaultPaymentAccount;
  @override
  final String? defaultPayee;
  @override
  final bool autoCreate;
  @override
  final String? startDate;
  @override
  final String? endDate;

  factory _$CreateRecurringRuleDto(
          [void Function(CreateRecurringRuleDtoBuilder)? updates]) =>
      (new CreateRecurringRuleDtoBuilder()..update(updates))._build();

  _$CreateRecurringRuleDto._(
      {required this.name,
      this.icon,
      required this.frequency,
      required this.expectedAmount,
      this.expectedDay,
      this.customIntervalDays,
      required this.currency,
      this.matchPayeePattern,
      required this.matchAmountTolerance,
      this.defaultExpenseAccount,
      this.defaultPaymentAccount,
      this.defaultPayee,
      required this.autoCreate,
      this.startDate,
      this.endDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'CreateRecurringRuleDto', 'name');
    BuiltValueNullFieldError.checkNotNull(
        frequency, r'CreateRecurringRuleDto', 'frequency');
    BuiltValueNullFieldError.checkNotNull(
        expectedAmount, r'CreateRecurringRuleDto', 'expectedAmount');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'CreateRecurringRuleDto', 'currency');
    BuiltValueNullFieldError.checkNotNull(matchAmountTolerance,
        r'CreateRecurringRuleDto', 'matchAmountTolerance');
    BuiltValueNullFieldError.checkNotNull(
        autoCreate, r'CreateRecurringRuleDto', 'autoCreate');
  }

  @override
  CreateRecurringRuleDto rebuild(
          void Function(CreateRecurringRuleDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateRecurringRuleDtoBuilder toBuilder() =>
      new CreateRecurringRuleDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateRecurringRuleDto &&
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
        startDate == other.startDate &&
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
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateRecurringRuleDto')
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
          ..add('startDate', startDate)
          ..add('endDate', endDate))
        .toString();
  }
}

class CreateRecurringRuleDtoBuilder
    implements Builder<CreateRecurringRuleDto, CreateRecurringRuleDtoBuilder> {
  _$CreateRecurringRuleDto? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  CreateRecurringRuleDtoFrequencyEnum? _frequency;
  CreateRecurringRuleDtoFrequencyEnum? get frequency => _$this._frequency;
  set frequency(CreateRecurringRuleDtoFrequencyEnum? frequency) =>
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

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  CreateRecurringRuleDtoBuilder() {
    CreateRecurringRuleDto._defaults(this);
  }

  CreateRecurringRuleDtoBuilder get _$this {
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
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateRecurringRuleDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateRecurringRuleDto;
  }

  @override
  void update(void Function(CreateRecurringRuleDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateRecurringRuleDto build() => _build();

  _$CreateRecurringRuleDto _build() {
    final _$result = _$v ??
        new _$CreateRecurringRuleDto._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CreateRecurringRuleDto', 'name'),
            icon: icon,
            frequency: BuiltValueNullFieldError.checkNotNull(
                frequency, r'CreateRecurringRuleDto', 'frequency'),
            expectedAmount: BuiltValueNullFieldError.checkNotNull(
                expectedAmount, r'CreateRecurringRuleDto', 'expectedAmount'),
            expectedDay: expectedDay,
            customIntervalDays: customIntervalDays,
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'CreateRecurringRuleDto', 'currency'),
            matchPayeePattern: matchPayeePattern,
            matchAmountTolerance: BuiltValueNullFieldError.checkNotNull(
                matchAmountTolerance,
                r'CreateRecurringRuleDto',
                'matchAmountTolerance'),
            defaultExpenseAccount: defaultExpenseAccount,
            defaultPaymentAccount: defaultPaymentAccount,
            defaultPayee: defaultPayee,
            autoCreate: BuiltValueNullFieldError.checkNotNull(
                autoCreate, r'CreateRecurringRuleDto', 'autoCreate'),
            startDate: startDate,
            endDate: endDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
