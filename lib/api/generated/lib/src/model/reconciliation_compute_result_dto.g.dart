// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reconciliation_compute_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReconciliationComputeResultDtoSuggestedActionEnum
    _$reconciliationComputeResultDtoSuggestedActionEnum_assert_ =
    const ReconciliationComputeResultDtoSuggestedActionEnum._('assert_');
const ReconciliationComputeResultDtoSuggestedActionEnum
    _$reconciliationComputeResultDtoSuggestedActionEnum_pad =
    const ReconciliationComputeResultDtoSuggestedActionEnum._('pad');

ReconciliationComputeResultDtoSuggestedActionEnum
    _$reconciliationComputeResultDtoSuggestedActionEnumValueOf(String name) {
  switch (name) {
    case 'assert_':
      return _$reconciliationComputeResultDtoSuggestedActionEnum_assert_;
    case 'pad':
      return _$reconciliationComputeResultDtoSuggestedActionEnum_pad;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ReconciliationComputeResultDtoSuggestedActionEnum>
    _$reconciliationComputeResultDtoSuggestedActionEnumValues = new BuiltSet<
        ReconciliationComputeResultDtoSuggestedActionEnum>(const <ReconciliationComputeResultDtoSuggestedActionEnum>[
  _$reconciliationComputeResultDtoSuggestedActionEnum_assert_,
  _$reconciliationComputeResultDtoSuggestedActionEnum_pad,
]);

Serializer<ReconciliationComputeResultDtoSuggestedActionEnum>
    _$reconciliationComputeResultDtoSuggestedActionEnumSerializer =
    new _$ReconciliationComputeResultDtoSuggestedActionEnumSerializer();

class _$ReconciliationComputeResultDtoSuggestedActionEnumSerializer
    implements
        PrimitiveSerializer<ReconciliationComputeResultDtoSuggestedActionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'assert_': 'assert',
    'pad': 'pad',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'assert': 'assert_',
    'pad': 'pad',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ReconciliationComputeResultDtoSuggestedActionEnum
  ];
  @override
  final String wireName = 'ReconciliationComputeResultDtoSuggestedActionEnum';

  @override
  Object serialize(Serializers serializers,
          ReconciliationComputeResultDtoSuggestedActionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReconciliationComputeResultDtoSuggestedActionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReconciliationComputeResultDtoSuggestedActionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ReconciliationComputeResultDto extends ReconciliationComputeResultDto {
  @override
  final String accountId;
  @override
  final String asOfDate;
  @override
  final String bookBalance;
  @override
  final String actualBalance;
  @override
  final String currency;
  @override
  final String diff;
  @override
  final String tolerance;
  @override
  final bool withinTolerance;
  @override
  final ReconciliationComputeResultDtoSuggestedActionEnum suggestedAction;

  factory _$ReconciliationComputeResultDto(
          [void Function(ReconciliationComputeResultDtoBuilder)? updates]) =>
      (new ReconciliationComputeResultDtoBuilder()..update(updates))._build();

  _$ReconciliationComputeResultDto._(
      {required this.accountId,
      required this.asOfDate,
      required this.bookBalance,
      required this.actualBalance,
      required this.currency,
      required this.diff,
      required this.tolerance,
      required this.withinTolerance,
      required this.suggestedAction})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountId, r'ReconciliationComputeResultDto', 'accountId');
    BuiltValueNullFieldError.checkNotNull(
        asOfDate, r'ReconciliationComputeResultDto', 'asOfDate');
    BuiltValueNullFieldError.checkNotNull(
        bookBalance, r'ReconciliationComputeResultDto', 'bookBalance');
    BuiltValueNullFieldError.checkNotNull(
        actualBalance, r'ReconciliationComputeResultDto', 'actualBalance');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'ReconciliationComputeResultDto', 'currency');
    BuiltValueNullFieldError.checkNotNull(
        diff, r'ReconciliationComputeResultDto', 'diff');
    BuiltValueNullFieldError.checkNotNull(
        tolerance, r'ReconciliationComputeResultDto', 'tolerance');
    BuiltValueNullFieldError.checkNotNull(
        withinTolerance, r'ReconciliationComputeResultDto', 'withinTolerance');
    BuiltValueNullFieldError.checkNotNull(
        suggestedAction, r'ReconciliationComputeResultDto', 'suggestedAction');
  }

  @override
  ReconciliationComputeResultDto rebuild(
          void Function(ReconciliationComputeResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReconciliationComputeResultDtoBuilder toBuilder() =>
      new ReconciliationComputeResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReconciliationComputeResultDto &&
        accountId == other.accountId &&
        asOfDate == other.asOfDate &&
        bookBalance == other.bookBalance &&
        actualBalance == other.actualBalance &&
        currency == other.currency &&
        diff == other.diff &&
        tolerance == other.tolerance &&
        withinTolerance == other.withinTolerance &&
        suggestedAction == other.suggestedAction;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, asOfDate.hashCode);
    _$hash = $jc(_$hash, bookBalance.hashCode);
    _$hash = $jc(_$hash, actualBalance.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, diff.hashCode);
    _$hash = $jc(_$hash, tolerance.hashCode);
    _$hash = $jc(_$hash, withinTolerance.hashCode);
    _$hash = $jc(_$hash, suggestedAction.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReconciliationComputeResultDto')
          ..add('accountId', accountId)
          ..add('asOfDate', asOfDate)
          ..add('bookBalance', bookBalance)
          ..add('actualBalance', actualBalance)
          ..add('currency', currency)
          ..add('diff', diff)
          ..add('tolerance', tolerance)
          ..add('withinTolerance', withinTolerance)
          ..add('suggestedAction', suggestedAction))
        .toString();
  }
}

class ReconciliationComputeResultDtoBuilder
    implements
        Builder<ReconciliationComputeResultDto,
            ReconciliationComputeResultDtoBuilder> {
  _$ReconciliationComputeResultDto? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _asOfDate;
  String? get asOfDate => _$this._asOfDate;
  set asOfDate(String? asOfDate) => _$this._asOfDate = asOfDate;

  String? _bookBalance;
  String? get bookBalance => _$this._bookBalance;
  set bookBalance(String? bookBalance) => _$this._bookBalance = bookBalance;

  String? _actualBalance;
  String? get actualBalance => _$this._actualBalance;
  set actualBalance(String? actualBalance) =>
      _$this._actualBalance = actualBalance;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _diff;
  String? get diff => _$this._diff;
  set diff(String? diff) => _$this._diff = diff;

  String? _tolerance;
  String? get tolerance => _$this._tolerance;
  set tolerance(String? tolerance) => _$this._tolerance = tolerance;

  bool? _withinTolerance;
  bool? get withinTolerance => _$this._withinTolerance;
  set withinTolerance(bool? withinTolerance) =>
      _$this._withinTolerance = withinTolerance;

  ReconciliationComputeResultDtoSuggestedActionEnum? _suggestedAction;
  ReconciliationComputeResultDtoSuggestedActionEnum? get suggestedAction =>
      _$this._suggestedAction;
  set suggestedAction(
          ReconciliationComputeResultDtoSuggestedActionEnum? suggestedAction) =>
      _$this._suggestedAction = suggestedAction;

  ReconciliationComputeResultDtoBuilder() {
    ReconciliationComputeResultDto._defaults(this);
  }

  ReconciliationComputeResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _asOfDate = $v.asOfDate;
      _bookBalance = $v.bookBalance;
      _actualBalance = $v.actualBalance;
      _currency = $v.currency;
      _diff = $v.diff;
      _tolerance = $v.tolerance;
      _withinTolerance = $v.withinTolerance;
      _suggestedAction = $v.suggestedAction;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReconciliationComputeResultDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReconciliationComputeResultDto;
  }

  @override
  void update(void Function(ReconciliationComputeResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReconciliationComputeResultDto build() => _build();

  _$ReconciliationComputeResultDto _build() {
    final _$result = _$v ??
        new _$ReconciliationComputeResultDto._(
            accountId: BuiltValueNullFieldError.checkNotNull(
                accountId, r'ReconciliationComputeResultDto', 'accountId'),
            asOfDate: BuiltValueNullFieldError.checkNotNull(
                asOfDate, r'ReconciliationComputeResultDto', 'asOfDate'),
            bookBalance: BuiltValueNullFieldError.checkNotNull(
                bookBalance, r'ReconciliationComputeResultDto', 'bookBalance'),
            actualBalance: BuiltValueNullFieldError.checkNotNull(
                actualBalance, r'ReconciliationComputeResultDto', 'actualBalance'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'ReconciliationComputeResultDto', 'currency'),
            diff: BuiltValueNullFieldError.checkNotNull(
                diff, r'ReconciliationComputeResultDto', 'diff'),
            tolerance: BuiltValueNullFieldError.checkNotNull(
                tolerance, r'ReconciliationComputeResultDto', 'tolerance'),
            withinTolerance:
                BuiltValueNullFieldError.checkNotNull(withinTolerance, r'ReconciliationComputeResultDto', 'withinTolerance'),
            suggestedAction: BuiltValueNullFieldError.checkNotNull(suggestedAction, r'ReconciliationComputeResultDto', 'suggestedAction'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
