// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expenses_by_category_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExpensesByCategoryResponseDto extends ExpensesByCategoryResponseDto {
  @override
  final String period;
  @override
  final String baseCurrency;
  @override
  final BuiltList<CategoryGroupDto> groups;
  @override
  final ExpensesByCategorySummaryDto summary;
  @override
  final BuiltList<ExchangeRateWarningDto>? warnings;

  factory _$ExpensesByCategoryResponseDto(
          [void Function(ExpensesByCategoryResponseDtoBuilder)? updates]) =>
      (new ExpensesByCategoryResponseDtoBuilder()..update(updates))._build();

  _$ExpensesByCategoryResponseDto._(
      {required this.period,
      required this.baseCurrency,
      required this.groups,
      required this.summary,
      this.warnings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        period, r'ExpensesByCategoryResponseDto', 'period');
    BuiltValueNullFieldError.checkNotNull(
        baseCurrency, r'ExpensesByCategoryResponseDto', 'baseCurrency');
    BuiltValueNullFieldError.checkNotNull(
        groups, r'ExpensesByCategoryResponseDto', 'groups');
    BuiltValueNullFieldError.checkNotNull(
        summary, r'ExpensesByCategoryResponseDto', 'summary');
  }

  @override
  ExpensesByCategoryResponseDto rebuild(
          void Function(ExpensesByCategoryResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExpensesByCategoryResponseDtoBuilder toBuilder() =>
      new ExpensesByCategoryResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExpensesByCategoryResponseDto &&
        period == other.period &&
        baseCurrency == other.baseCurrency &&
        groups == other.groups &&
        summary == other.summary &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, baseCurrency.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExpensesByCategoryResponseDto')
          ..add('period', period)
          ..add('baseCurrency', baseCurrency)
          ..add('groups', groups)
          ..add('summary', summary)
          ..add('warnings', warnings))
        .toString();
  }
}

class ExpensesByCategoryResponseDtoBuilder
    implements
        Builder<ExpensesByCategoryResponseDto,
            ExpensesByCategoryResponseDtoBuilder> {
  _$ExpensesByCategoryResponseDto? _$v;

  String? _period;
  String? get period => _$this._period;
  set period(String? period) => _$this._period = period;

  String? _baseCurrency;
  String? get baseCurrency => _$this._baseCurrency;
  set baseCurrency(String? baseCurrency) => _$this._baseCurrency = baseCurrency;

  ListBuilder<CategoryGroupDto>? _groups;
  ListBuilder<CategoryGroupDto> get groups =>
      _$this._groups ??= new ListBuilder<CategoryGroupDto>();
  set groups(ListBuilder<CategoryGroupDto>? groups) => _$this._groups = groups;

  ExpensesByCategorySummaryDtoBuilder? _summary;
  ExpensesByCategorySummaryDtoBuilder get summary =>
      _$this._summary ??= new ExpensesByCategorySummaryDtoBuilder();
  set summary(ExpensesByCategorySummaryDtoBuilder? summary) =>
      _$this._summary = summary;

  ListBuilder<ExchangeRateWarningDto>? _warnings;
  ListBuilder<ExchangeRateWarningDto> get warnings =>
      _$this._warnings ??= new ListBuilder<ExchangeRateWarningDto>();
  set warnings(ListBuilder<ExchangeRateWarningDto>? warnings) =>
      _$this._warnings = warnings;

  ExpensesByCategoryResponseDtoBuilder() {
    ExpensesByCategoryResponseDto._defaults(this);
  }

  ExpensesByCategoryResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _period = $v.period;
      _baseCurrency = $v.baseCurrency;
      _groups = $v.groups.toBuilder();
      _summary = $v.summary.toBuilder();
      _warnings = $v.warnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExpensesByCategoryResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExpensesByCategoryResponseDto;
  }

  @override
  void update(void Function(ExpensesByCategoryResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExpensesByCategoryResponseDto build() => _build();

  _$ExpensesByCategoryResponseDto _build() {
    _$ExpensesByCategoryResponseDto _$result;
    try {
      _$result = _$v ??
          new _$ExpensesByCategoryResponseDto._(
              period: BuiltValueNullFieldError.checkNotNull(
                  period, r'ExpensesByCategoryResponseDto', 'period'),
              baseCurrency: BuiltValueNullFieldError.checkNotNull(baseCurrency,
                  r'ExpensesByCategoryResponseDto', 'baseCurrency'),
              groups: groups.build(),
              summary: summary.build(),
              warnings: _warnings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groups';
        groups.build();
        _$failedField = 'summary';
        summary.build();
        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExpensesByCategoryResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
