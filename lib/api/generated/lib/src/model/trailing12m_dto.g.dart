// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trailing12m_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Trailing12mDto extends Trailing12mDto {
  @override
  final String currency;
  @override
  final String expense;
  @override
  final String income;
  @override
  final String saving;
  @override
  final BuiltList<ExchangeRateWarningDto>? warnings;

  factory _$Trailing12mDto([void Function(Trailing12mDtoBuilder)? updates]) =>
      (new Trailing12mDtoBuilder()..update(updates))._build();

  _$Trailing12mDto._(
      {required this.currency,
      required this.expense,
      required this.income,
      required this.saving,
      this.warnings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        currency, r'Trailing12mDto', 'currency');
    BuiltValueNullFieldError.checkNotNull(
        expense, r'Trailing12mDto', 'expense');
    BuiltValueNullFieldError.checkNotNull(income, r'Trailing12mDto', 'income');
    BuiltValueNullFieldError.checkNotNull(saving, r'Trailing12mDto', 'saving');
  }

  @override
  Trailing12mDto rebuild(void Function(Trailing12mDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Trailing12mDtoBuilder toBuilder() =>
      new Trailing12mDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Trailing12mDto &&
        currency == other.currency &&
        expense == other.expense &&
        income == other.income &&
        saving == other.saving &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, expense.hashCode);
    _$hash = $jc(_$hash, income.hashCode);
    _$hash = $jc(_$hash, saving.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Trailing12mDto')
          ..add('currency', currency)
          ..add('expense', expense)
          ..add('income', income)
          ..add('saving', saving)
          ..add('warnings', warnings))
        .toString();
  }
}

class Trailing12mDtoBuilder
    implements Builder<Trailing12mDto, Trailing12mDtoBuilder> {
  _$Trailing12mDto? _$v;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _expense;
  String? get expense => _$this._expense;
  set expense(String? expense) => _$this._expense = expense;

  String? _income;
  String? get income => _$this._income;
  set income(String? income) => _$this._income = income;

  String? _saving;
  String? get saving => _$this._saving;
  set saving(String? saving) => _$this._saving = saving;

  ListBuilder<ExchangeRateWarningDto>? _warnings;
  ListBuilder<ExchangeRateWarningDto> get warnings =>
      _$this._warnings ??= new ListBuilder<ExchangeRateWarningDto>();
  set warnings(ListBuilder<ExchangeRateWarningDto>? warnings) =>
      _$this._warnings = warnings;

  Trailing12mDtoBuilder() {
    Trailing12mDto._defaults(this);
  }

  Trailing12mDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currency = $v.currency;
      _expense = $v.expense;
      _income = $v.income;
      _saving = $v.saving;
      _warnings = $v.warnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Trailing12mDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Trailing12mDto;
  }

  @override
  void update(void Function(Trailing12mDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Trailing12mDto build() => _build();

  _$Trailing12mDto _build() {
    _$Trailing12mDto _$result;
    try {
      _$result = _$v ??
          new _$Trailing12mDto._(
              currency: BuiltValueNullFieldError.checkNotNull(
                  currency, r'Trailing12mDto', 'currency'),
              expense: BuiltValueNullFieldError.checkNotNull(
                  expense, r'Trailing12mDto', 'expense'),
              income: BuiltValueNullFieldError.checkNotNull(
                  income, r'Trailing12mDto', 'income'),
              saving: BuiltValueNullFieldError.checkNotNull(
                  saving, r'Trailing12mDto', 'saving'),
              warnings: _warnings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Trailing12mDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
