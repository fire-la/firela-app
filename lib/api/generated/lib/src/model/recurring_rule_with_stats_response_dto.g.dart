// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recurring_rule_with_stats_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecurringRuleWithStatsResponseDto
    extends RecurringRuleWithStatsResponseDto {
  @override
  final String id;
  @override
  final String userId;
  @override
  final String name;
  @override
  final String frequency;
  @override
  final num expectedAmount;
  @override
  final String currency;
  @override
  final num matchAmountTolerance;
  @override
  final bool isActive;
  @override
  final String startDate;
  @override
  final bool autoCreate;
  @override
  final num totalCount;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final num pendingCount;
  @override
  final num overdueCount;
  @override
  final num totalAmount;
  @override
  final num averageAmount;
  @override
  final num transactionCount;
  @override
  final num variance;
  @override
  final num upcomingCount;
  @override
  final JsonObject? icon;
  @override
  final JsonObject? expectedDay;
  @override
  final JsonObject? customIntervalDays;
  @override
  final JsonObject? matchPayeePattern;
  @override
  final JsonObject? defaultExpenseAccount;
  @override
  final JsonObject? defaultPaymentAccount;
  @override
  final JsonObject? defaultPayee;
  @override
  final JsonObject? endDate;
  @override
  final JsonObject? lastOccurrence;
  @override
  final JsonObject? nextExpectedDate;
  @override
  final JsonObject? firstDate;
  @override
  final JsonObject? lastDate;

  factory _$RecurringRuleWithStatsResponseDto(
          [void Function(RecurringRuleWithStatsResponseDtoBuilder)? updates]) =>
      (new RecurringRuleWithStatsResponseDtoBuilder()..update(updates))
          ._build();

  _$RecurringRuleWithStatsResponseDto._(
      {required this.id,
      required this.userId,
      required this.name,
      required this.frequency,
      required this.expectedAmount,
      required this.currency,
      required this.matchAmountTolerance,
      required this.isActive,
      required this.startDate,
      required this.autoCreate,
      required this.totalCount,
      required this.createdAt,
      required this.updatedAt,
      required this.pendingCount,
      required this.overdueCount,
      required this.totalAmount,
      required this.averageAmount,
      required this.transactionCount,
      required this.variance,
      required this.upcomingCount,
      this.icon,
      this.expectedDay,
      this.customIntervalDays,
      this.matchPayeePattern,
      this.defaultExpenseAccount,
      this.defaultPaymentAccount,
      this.defaultPayee,
      this.endDate,
      this.lastOccurrence,
      this.nextExpectedDate,
      this.firstDate,
      this.lastDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'RecurringRuleWithStatsResponseDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'RecurringRuleWithStatsResponseDto', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        name, r'RecurringRuleWithStatsResponseDto', 'name');
    BuiltValueNullFieldError.checkNotNull(
        frequency, r'RecurringRuleWithStatsResponseDto', 'frequency');
    BuiltValueNullFieldError.checkNotNull(
        expectedAmount, r'RecurringRuleWithStatsResponseDto', 'expectedAmount');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'RecurringRuleWithStatsResponseDto', 'currency');
    BuiltValueNullFieldError.checkNotNull(matchAmountTolerance,
        r'RecurringRuleWithStatsResponseDto', 'matchAmountTolerance');
    BuiltValueNullFieldError.checkNotNull(
        isActive, r'RecurringRuleWithStatsResponseDto', 'isActive');
    BuiltValueNullFieldError.checkNotNull(
        startDate, r'RecurringRuleWithStatsResponseDto', 'startDate');
    BuiltValueNullFieldError.checkNotNull(
        autoCreate, r'RecurringRuleWithStatsResponseDto', 'autoCreate');
    BuiltValueNullFieldError.checkNotNull(
        totalCount, r'RecurringRuleWithStatsResponseDto', 'totalCount');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'RecurringRuleWithStatsResponseDto', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'RecurringRuleWithStatsResponseDto', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(
        pendingCount, r'RecurringRuleWithStatsResponseDto', 'pendingCount');
    BuiltValueNullFieldError.checkNotNull(
        overdueCount, r'RecurringRuleWithStatsResponseDto', 'overdueCount');
    BuiltValueNullFieldError.checkNotNull(
        totalAmount, r'RecurringRuleWithStatsResponseDto', 'totalAmount');
    BuiltValueNullFieldError.checkNotNull(
        averageAmount, r'RecurringRuleWithStatsResponseDto', 'averageAmount');
    BuiltValueNullFieldError.checkNotNull(transactionCount,
        r'RecurringRuleWithStatsResponseDto', 'transactionCount');
    BuiltValueNullFieldError.checkNotNull(
        variance, r'RecurringRuleWithStatsResponseDto', 'variance');
    BuiltValueNullFieldError.checkNotNull(
        upcomingCount, r'RecurringRuleWithStatsResponseDto', 'upcomingCount');
  }

  @override
  RecurringRuleWithStatsResponseDto rebuild(
          void Function(RecurringRuleWithStatsResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecurringRuleWithStatsResponseDtoBuilder toBuilder() =>
      new RecurringRuleWithStatsResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecurringRuleWithStatsResponseDto &&
        id == other.id &&
        userId == other.userId &&
        name == other.name &&
        frequency == other.frequency &&
        expectedAmount == other.expectedAmount &&
        currency == other.currency &&
        matchAmountTolerance == other.matchAmountTolerance &&
        isActive == other.isActive &&
        startDate == other.startDate &&
        autoCreate == other.autoCreate &&
        totalCount == other.totalCount &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        pendingCount == other.pendingCount &&
        overdueCount == other.overdueCount &&
        totalAmount == other.totalAmount &&
        averageAmount == other.averageAmount &&
        transactionCount == other.transactionCount &&
        variance == other.variance &&
        upcomingCount == other.upcomingCount &&
        icon == other.icon &&
        expectedDay == other.expectedDay &&
        customIntervalDays == other.customIntervalDays &&
        matchPayeePattern == other.matchPayeePattern &&
        defaultExpenseAccount == other.defaultExpenseAccount &&
        defaultPaymentAccount == other.defaultPaymentAccount &&
        defaultPayee == other.defaultPayee &&
        endDate == other.endDate &&
        lastOccurrence == other.lastOccurrence &&
        nextExpectedDate == other.nextExpectedDate &&
        firstDate == other.firstDate &&
        lastDate == other.lastDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jc(_$hash, expectedAmount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, matchAmountTolerance.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, autoCreate.hashCode);
    _$hash = $jc(_$hash, totalCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, pendingCount.hashCode);
    _$hash = $jc(_$hash, overdueCount.hashCode);
    _$hash = $jc(_$hash, totalAmount.hashCode);
    _$hash = $jc(_$hash, averageAmount.hashCode);
    _$hash = $jc(_$hash, transactionCount.hashCode);
    _$hash = $jc(_$hash, variance.hashCode);
    _$hash = $jc(_$hash, upcomingCount.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, expectedDay.hashCode);
    _$hash = $jc(_$hash, customIntervalDays.hashCode);
    _$hash = $jc(_$hash, matchPayeePattern.hashCode);
    _$hash = $jc(_$hash, defaultExpenseAccount.hashCode);
    _$hash = $jc(_$hash, defaultPaymentAccount.hashCode);
    _$hash = $jc(_$hash, defaultPayee.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, lastOccurrence.hashCode);
    _$hash = $jc(_$hash, nextExpectedDate.hashCode);
    _$hash = $jc(_$hash, firstDate.hashCode);
    _$hash = $jc(_$hash, lastDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecurringRuleWithStatsResponseDto')
          ..add('id', id)
          ..add('userId', userId)
          ..add('name', name)
          ..add('frequency', frequency)
          ..add('expectedAmount', expectedAmount)
          ..add('currency', currency)
          ..add('matchAmountTolerance', matchAmountTolerance)
          ..add('isActive', isActive)
          ..add('startDate', startDate)
          ..add('autoCreate', autoCreate)
          ..add('totalCount', totalCount)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('pendingCount', pendingCount)
          ..add('overdueCount', overdueCount)
          ..add('totalAmount', totalAmount)
          ..add('averageAmount', averageAmount)
          ..add('transactionCount', transactionCount)
          ..add('variance', variance)
          ..add('upcomingCount', upcomingCount)
          ..add('icon', icon)
          ..add('expectedDay', expectedDay)
          ..add('customIntervalDays', customIntervalDays)
          ..add('matchPayeePattern', matchPayeePattern)
          ..add('defaultExpenseAccount', defaultExpenseAccount)
          ..add('defaultPaymentAccount', defaultPaymentAccount)
          ..add('defaultPayee', defaultPayee)
          ..add('endDate', endDate)
          ..add('lastOccurrence', lastOccurrence)
          ..add('nextExpectedDate', nextExpectedDate)
          ..add('firstDate', firstDate)
          ..add('lastDate', lastDate))
        .toString();
  }
}

class RecurringRuleWithStatsResponseDtoBuilder
    implements
        Builder<RecurringRuleWithStatsResponseDto,
            RecurringRuleWithStatsResponseDtoBuilder> {
  _$RecurringRuleWithStatsResponseDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _frequency;
  String? get frequency => _$this._frequency;
  set frequency(String? frequency) => _$this._frequency = frequency;

  num? _expectedAmount;
  num? get expectedAmount => _$this._expectedAmount;
  set expectedAmount(num? expectedAmount) =>
      _$this._expectedAmount = expectedAmount;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  num? _matchAmountTolerance;
  num? get matchAmountTolerance => _$this._matchAmountTolerance;
  set matchAmountTolerance(num? matchAmountTolerance) =>
      _$this._matchAmountTolerance = matchAmountTolerance;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  bool? _autoCreate;
  bool? get autoCreate => _$this._autoCreate;
  set autoCreate(bool? autoCreate) => _$this._autoCreate = autoCreate;

  num? _totalCount;
  num? get totalCount => _$this._totalCount;
  set totalCount(num? totalCount) => _$this._totalCount = totalCount;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  num? _pendingCount;
  num? get pendingCount => _$this._pendingCount;
  set pendingCount(num? pendingCount) => _$this._pendingCount = pendingCount;

  num? _overdueCount;
  num? get overdueCount => _$this._overdueCount;
  set overdueCount(num? overdueCount) => _$this._overdueCount = overdueCount;

  num? _totalAmount;
  num? get totalAmount => _$this._totalAmount;
  set totalAmount(num? totalAmount) => _$this._totalAmount = totalAmount;

  num? _averageAmount;
  num? get averageAmount => _$this._averageAmount;
  set averageAmount(num? averageAmount) =>
      _$this._averageAmount = averageAmount;

  num? _transactionCount;
  num? get transactionCount => _$this._transactionCount;
  set transactionCount(num? transactionCount) =>
      _$this._transactionCount = transactionCount;

  num? _variance;
  num? get variance => _$this._variance;
  set variance(num? variance) => _$this._variance = variance;

  num? _upcomingCount;
  num? get upcomingCount => _$this._upcomingCount;
  set upcomingCount(num? upcomingCount) =>
      _$this._upcomingCount = upcomingCount;

  JsonObject? _icon;
  JsonObject? get icon => _$this._icon;
  set icon(JsonObject? icon) => _$this._icon = icon;

  JsonObject? _expectedDay;
  JsonObject? get expectedDay => _$this._expectedDay;
  set expectedDay(JsonObject? expectedDay) => _$this._expectedDay = expectedDay;

  JsonObject? _customIntervalDays;
  JsonObject? get customIntervalDays => _$this._customIntervalDays;
  set customIntervalDays(JsonObject? customIntervalDays) =>
      _$this._customIntervalDays = customIntervalDays;

  JsonObject? _matchPayeePattern;
  JsonObject? get matchPayeePattern => _$this._matchPayeePattern;
  set matchPayeePattern(JsonObject? matchPayeePattern) =>
      _$this._matchPayeePattern = matchPayeePattern;

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

  JsonObject? _endDate;
  JsonObject? get endDate => _$this._endDate;
  set endDate(JsonObject? endDate) => _$this._endDate = endDate;

  JsonObject? _lastOccurrence;
  JsonObject? get lastOccurrence => _$this._lastOccurrence;
  set lastOccurrence(JsonObject? lastOccurrence) =>
      _$this._lastOccurrence = lastOccurrence;

  JsonObject? _nextExpectedDate;
  JsonObject? get nextExpectedDate => _$this._nextExpectedDate;
  set nextExpectedDate(JsonObject? nextExpectedDate) =>
      _$this._nextExpectedDate = nextExpectedDate;

  JsonObject? _firstDate;
  JsonObject? get firstDate => _$this._firstDate;
  set firstDate(JsonObject? firstDate) => _$this._firstDate = firstDate;

  JsonObject? _lastDate;
  JsonObject? get lastDate => _$this._lastDate;
  set lastDate(JsonObject? lastDate) => _$this._lastDate = lastDate;

  RecurringRuleWithStatsResponseDtoBuilder() {
    RecurringRuleWithStatsResponseDto._defaults(this);
  }

  RecurringRuleWithStatsResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _name = $v.name;
      _frequency = $v.frequency;
      _expectedAmount = $v.expectedAmount;
      _currency = $v.currency;
      _matchAmountTolerance = $v.matchAmountTolerance;
      _isActive = $v.isActive;
      _startDate = $v.startDate;
      _autoCreate = $v.autoCreate;
      _totalCount = $v.totalCount;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _pendingCount = $v.pendingCount;
      _overdueCount = $v.overdueCount;
      _totalAmount = $v.totalAmount;
      _averageAmount = $v.averageAmount;
      _transactionCount = $v.transactionCount;
      _variance = $v.variance;
      _upcomingCount = $v.upcomingCount;
      _icon = $v.icon;
      _expectedDay = $v.expectedDay;
      _customIntervalDays = $v.customIntervalDays;
      _matchPayeePattern = $v.matchPayeePattern;
      _defaultExpenseAccount = $v.defaultExpenseAccount;
      _defaultPaymentAccount = $v.defaultPaymentAccount;
      _defaultPayee = $v.defaultPayee;
      _endDate = $v.endDate;
      _lastOccurrence = $v.lastOccurrence;
      _nextExpectedDate = $v.nextExpectedDate;
      _firstDate = $v.firstDate;
      _lastDate = $v.lastDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecurringRuleWithStatsResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecurringRuleWithStatsResponseDto;
  }

  @override
  void update(
      void Function(RecurringRuleWithStatsResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecurringRuleWithStatsResponseDto build() => _build();

  _$RecurringRuleWithStatsResponseDto _build() {
    final _$result = _$v ??
        new _$RecurringRuleWithStatsResponseDto._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'RecurringRuleWithStatsResponseDto', 'id'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'RecurringRuleWithStatsResponseDto', 'userId'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'RecurringRuleWithStatsResponseDto', 'name'),
            frequency: BuiltValueNullFieldError.checkNotNull(
                frequency, r'RecurringRuleWithStatsResponseDto', 'frequency'),
            expectedAmount: BuiltValueNullFieldError.checkNotNull(
                expectedAmount, r'RecurringRuleWithStatsResponseDto', 'expectedAmount'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'RecurringRuleWithStatsResponseDto', 'currency'),
            matchAmountTolerance: BuiltValueNullFieldError.checkNotNull(
                matchAmountTolerance,
                r'RecurringRuleWithStatsResponseDto',
                'matchAmountTolerance'),
            isActive: BuiltValueNullFieldError.checkNotNull(isActive, r'RecurringRuleWithStatsResponseDto', 'isActive'),
            startDate: BuiltValueNullFieldError.checkNotNull(startDate, r'RecurringRuleWithStatsResponseDto', 'startDate'),
            autoCreate: BuiltValueNullFieldError.checkNotNull(autoCreate, r'RecurringRuleWithStatsResponseDto', 'autoCreate'),
            totalCount: BuiltValueNullFieldError.checkNotNull(totalCount, r'RecurringRuleWithStatsResponseDto', 'totalCount'),
            createdAt: BuiltValueNullFieldError.checkNotNull(createdAt, r'RecurringRuleWithStatsResponseDto', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(updatedAt, r'RecurringRuleWithStatsResponseDto', 'updatedAt'),
            pendingCount: BuiltValueNullFieldError.checkNotNull(pendingCount, r'RecurringRuleWithStatsResponseDto', 'pendingCount'),
            overdueCount: BuiltValueNullFieldError.checkNotNull(overdueCount, r'RecurringRuleWithStatsResponseDto', 'overdueCount'),
            totalAmount: BuiltValueNullFieldError.checkNotNull(totalAmount, r'RecurringRuleWithStatsResponseDto', 'totalAmount'),
            averageAmount: BuiltValueNullFieldError.checkNotNull(averageAmount, r'RecurringRuleWithStatsResponseDto', 'averageAmount'),
            transactionCount: BuiltValueNullFieldError.checkNotNull(transactionCount, r'RecurringRuleWithStatsResponseDto', 'transactionCount'),
            variance: BuiltValueNullFieldError.checkNotNull(variance, r'RecurringRuleWithStatsResponseDto', 'variance'),
            upcomingCount: BuiltValueNullFieldError.checkNotNull(upcomingCount, r'RecurringRuleWithStatsResponseDto', 'upcomingCount'),
            icon: icon,
            expectedDay: expectedDay,
            customIntervalDays: customIntervalDays,
            matchPayeePattern: matchPayeePattern,
            defaultExpenseAccount: defaultExpenseAccount,
            defaultPaymentAccount: defaultPaymentAccount,
            defaultPayee: defaultPayee,
            endDate: endDate,
            lastOccurrence: lastOccurrence,
            nextExpectedDate: nextExpectedDate,
            firstDate: firstDate,
            lastDate: lastDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
