// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recurring_rule_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecurringRuleResponseDto extends RecurringRuleResponseDto {
  @override
  final String id;
  @override
  final String userId;
  @override
  final String name;
  @override
  final JsonObject? icon;
  @override
  final String frequency;
  @override
  final num expectedAmount;
  @override
  final JsonObject? expectedDay;
  @override
  final JsonObject? customIntervalDays;
  @override
  final String currency;
  @override
  final JsonObject? matchPayeePattern;
  @override
  final num matchAmountTolerance;
  @override
  final JsonObject? defaultExpenseAccount;
  @override
  final JsonObject? defaultPaymentAccount;
  @override
  final JsonObject? defaultPayee;
  @override
  final bool isActive;
  @override
  final String startDate;
  @override
  final JsonObject? endDate;
  @override
  final bool autoCreate;
  @override
  final JsonObject? lastOccurrence;
  @override
  final num totalCount;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$RecurringRuleResponseDto(
          [void Function(RecurringRuleResponseDtoBuilder)? updates]) =>
      (new RecurringRuleResponseDtoBuilder()..update(updates))._build();

  _$RecurringRuleResponseDto._(
      {required this.id,
      required this.userId,
      required this.name,
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
      required this.isActive,
      required this.startDate,
      this.endDate,
      required this.autoCreate,
      this.lastOccurrence,
      required this.totalCount,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'RecurringRuleResponseDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'RecurringRuleResponseDto', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        name, r'RecurringRuleResponseDto', 'name');
    BuiltValueNullFieldError.checkNotNull(
        frequency, r'RecurringRuleResponseDto', 'frequency');
    BuiltValueNullFieldError.checkNotNull(
        expectedAmount, r'RecurringRuleResponseDto', 'expectedAmount');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'RecurringRuleResponseDto', 'currency');
    BuiltValueNullFieldError.checkNotNull(matchAmountTolerance,
        r'RecurringRuleResponseDto', 'matchAmountTolerance');
    BuiltValueNullFieldError.checkNotNull(
        isActive, r'RecurringRuleResponseDto', 'isActive');
    BuiltValueNullFieldError.checkNotNull(
        startDate, r'RecurringRuleResponseDto', 'startDate');
    BuiltValueNullFieldError.checkNotNull(
        autoCreate, r'RecurringRuleResponseDto', 'autoCreate');
    BuiltValueNullFieldError.checkNotNull(
        totalCount, r'RecurringRuleResponseDto', 'totalCount');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'RecurringRuleResponseDto', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'RecurringRuleResponseDto', 'updatedAt');
  }

  @override
  RecurringRuleResponseDto rebuild(
          void Function(RecurringRuleResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecurringRuleResponseDtoBuilder toBuilder() =>
      new RecurringRuleResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecurringRuleResponseDto &&
        id == other.id &&
        userId == other.userId &&
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
        isActive == other.isActive &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        autoCreate == other.autoCreate &&
        lastOccurrence == other.lastOccurrence &&
        totalCount == other.totalCount &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
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
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, autoCreate.hashCode);
    _$hash = $jc(_$hash, lastOccurrence.hashCode);
    _$hash = $jc(_$hash, totalCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecurringRuleResponseDto')
          ..add('id', id)
          ..add('userId', userId)
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
          ..add('isActive', isActive)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('autoCreate', autoCreate)
          ..add('lastOccurrence', lastOccurrence)
          ..add('totalCount', totalCount)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class RecurringRuleResponseDtoBuilder
    implements
        Builder<RecurringRuleResponseDto, RecurringRuleResponseDtoBuilder> {
  _$RecurringRuleResponseDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  JsonObject? _icon;
  JsonObject? get icon => _$this._icon;
  set icon(JsonObject? icon) => _$this._icon = icon;

  String? _frequency;
  String? get frequency => _$this._frequency;
  set frequency(String? frequency) => _$this._frequency = frequency;

  num? _expectedAmount;
  num? get expectedAmount => _$this._expectedAmount;
  set expectedAmount(num? expectedAmount) =>
      _$this._expectedAmount = expectedAmount;

  JsonObject? _expectedDay;
  JsonObject? get expectedDay => _$this._expectedDay;
  set expectedDay(JsonObject? expectedDay) => _$this._expectedDay = expectedDay;

  JsonObject? _customIntervalDays;
  JsonObject? get customIntervalDays => _$this._customIntervalDays;
  set customIntervalDays(JsonObject? customIntervalDays) =>
      _$this._customIntervalDays = customIntervalDays;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  JsonObject? _matchPayeePattern;
  JsonObject? get matchPayeePattern => _$this._matchPayeePattern;
  set matchPayeePattern(JsonObject? matchPayeePattern) =>
      _$this._matchPayeePattern = matchPayeePattern;

  num? _matchAmountTolerance;
  num? get matchAmountTolerance => _$this._matchAmountTolerance;
  set matchAmountTolerance(num? matchAmountTolerance) =>
      _$this._matchAmountTolerance = matchAmountTolerance;

  JsonObject? _defaultExpenseAccount;
  JsonObject? get defaultExpenseAccount => _$this._defaultExpenseAccount;
  set defaultExpenseAccount(JsonObject? defaultExpenseAccount) =>
      _$this._defaultExpenseAccount = defaultExpenseAccount;

  JsonObject? _defaultPaymentAccount;
  JsonObject? get defaultPaymentAccount => _$this._defaultPaymentAccount;
  set defaultPaymentAccount(JsonObject? defaultPaymentAccount) =>
      _$this._defaultPaymentAccount = defaultPaymentAccount;

  JsonObject? _defaultPayee;
  JsonObject? get defaultPayee => _$this._defaultPayee;
  set defaultPayee(JsonObject? defaultPayee) =>
      _$this._defaultPayee = defaultPayee;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  JsonObject? _endDate;
  JsonObject? get endDate => _$this._endDate;
  set endDate(JsonObject? endDate) => _$this._endDate = endDate;

  bool? _autoCreate;
  bool? get autoCreate => _$this._autoCreate;
  set autoCreate(bool? autoCreate) => _$this._autoCreate = autoCreate;

  JsonObject? _lastOccurrence;
  JsonObject? get lastOccurrence => _$this._lastOccurrence;
  set lastOccurrence(JsonObject? lastOccurrence) =>
      _$this._lastOccurrence = lastOccurrence;

  num? _totalCount;
  num? get totalCount => _$this._totalCount;
  set totalCount(num? totalCount) => _$this._totalCount = totalCount;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  RecurringRuleResponseDtoBuilder() {
    RecurringRuleResponseDto._defaults(this);
  }

  RecurringRuleResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
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
      _isActive = $v.isActive;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _autoCreate = $v.autoCreate;
      _lastOccurrence = $v.lastOccurrence;
      _totalCount = $v.totalCount;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecurringRuleResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecurringRuleResponseDto;
  }

  @override
  void update(void Function(RecurringRuleResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecurringRuleResponseDto build() => _build();

  _$RecurringRuleResponseDto _build() {
    final _$result = _$v ??
        new _$RecurringRuleResponseDto._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'RecurringRuleResponseDto', 'id'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'RecurringRuleResponseDto', 'userId'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'RecurringRuleResponseDto', 'name'),
            icon: icon,
            frequency: BuiltValueNullFieldError.checkNotNull(
                frequency, r'RecurringRuleResponseDto', 'frequency'),
            expectedAmount: BuiltValueNullFieldError.checkNotNull(
                expectedAmount, r'RecurringRuleResponseDto', 'expectedAmount'),
            expectedDay: expectedDay,
            customIntervalDays: customIntervalDays,
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'RecurringRuleResponseDto', 'currency'),
            matchPayeePattern: matchPayeePattern,
            matchAmountTolerance: BuiltValueNullFieldError.checkNotNull(
                matchAmountTolerance, r'RecurringRuleResponseDto', 'matchAmountTolerance'),
            defaultExpenseAccount: defaultExpenseAccount,
            defaultPaymentAccount: defaultPaymentAccount,
            defaultPayee: defaultPayee,
            isActive: BuiltValueNullFieldError.checkNotNull(
                isActive, r'RecurringRuleResponseDto', 'isActive'),
            startDate: BuiltValueNullFieldError.checkNotNull(startDate, r'RecurringRuleResponseDto', 'startDate'),
            endDate: endDate,
            autoCreate: BuiltValueNullFieldError.checkNotNull(autoCreate, r'RecurringRuleResponseDto', 'autoCreate'),
            lastOccurrence: lastOccurrence,
            totalCount: BuiltValueNullFieldError.checkNotNull(totalCount, r'RecurringRuleResponseDto', 'totalCount'),
            createdAt: BuiltValueNullFieldError.checkNotNull(createdAt, r'RecurringRuleResponseDto', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(updatedAt, r'RecurringRuleResponseDto', 'updatedAt'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
