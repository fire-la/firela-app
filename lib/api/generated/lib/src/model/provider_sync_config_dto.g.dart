// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider_sync_config_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProviderSyncConfigDto extends ProviderSyncConfigDto {
  @override
  final String sourceAccount;
  @override
  final String defaultCurrency;
  @override
  final String defaultExpenseAccount;
  @override
  final String defaultIncomeAccount;
  @override
  final bool? filterPending;

  factory _$ProviderSyncConfigDto(
          [void Function(ProviderSyncConfigDtoBuilder)? updates]) =>
      (new ProviderSyncConfigDtoBuilder()..update(updates))._build();

  _$ProviderSyncConfigDto._(
      {required this.sourceAccount,
      required this.defaultCurrency,
      required this.defaultExpenseAccount,
      required this.defaultIncomeAccount,
      this.filterPending})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        sourceAccount, r'ProviderSyncConfigDto', 'sourceAccount');
    BuiltValueNullFieldError.checkNotNull(
        defaultCurrency, r'ProviderSyncConfigDto', 'defaultCurrency');
    BuiltValueNullFieldError.checkNotNull(defaultExpenseAccount,
        r'ProviderSyncConfigDto', 'defaultExpenseAccount');
    BuiltValueNullFieldError.checkNotNull(
        defaultIncomeAccount, r'ProviderSyncConfigDto', 'defaultIncomeAccount');
  }

  @override
  ProviderSyncConfigDto rebuild(
          void Function(ProviderSyncConfigDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProviderSyncConfigDtoBuilder toBuilder() =>
      new ProviderSyncConfigDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProviderSyncConfigDto &&
        sourceAccount == other.sourceAccount &&
        defaultCurrency == other.defaultCurrency &&
        defaultExpenseAccount == other.defaultExpenseAccount &&
        defaultIncomeAccount == other.defaultIncomeAccount &&
        filterPending == other.filterPending;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceAccount.hashCode);
    _$hash = $jc(_$hash, defaultCurrency.hashCode);
    _$hash = $jc(_$hash, defaultExpenseAccount.hashCode);
    _$hash = $jc(_$hash, defaultIncomeAccount.hashCode);
    _$hash = $jc(_$hash, filterPending.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProviderSyncConfigDto')
          ..add('sourceAccount', sourceAccount)
          ..add('defaultCurrency', defaultCurrency)
          ..add('defaultExpenseAccount', defaultExpenseAccount)
          ..add('defaultIncomeAccount', defaultIncomeAccount)
          ..add('filterPending', filterPending))
        .toString();
  }
}

class ProviderSyncConfigDtoBuilder
    implements Builder<ProviderSyncConfigDto, ProviderSyncConfigDtoBuilder> {
  _$ProviderSyncConfigDto? _$v;

  String? _sourceAccount;
  String? get sourceAccount => _$this._sourceAccount;
  set sourceAccount(String? sourceAccount) =>
      _$this._sourceAccount = sourceAccount;

  String? _defaultCurrency;
  String? get defaultCurrency => _$this._defaultCurrency;
  set defaultCurrency(String? defaultCurrency) =>
      _$this._defaultCurrency = defaultCurrency;

  String? _defaultExpenseAccount;
  String? get defaultExpenseAccount => _$this._defaultExpenseAccount;
  set defaultExpenseAccount(String? defaultExpenseAccount) =>
      _$this._defaultExpenseAccount = defaultExpenseAccount;

  String? _defaultIncomeAccount;
  String? get defaultIncomeAccount => _$this._defaultIncomeAccount;
  set defaultIncomeAccount(String? defaultIncomeAccount) =>
      _$this._defaultIncomeAccount = defaultIncomeAccount;

  bool? _filterPending;
  bool? get filterPending => _$this._filterPending;
  set filterPending(bool? filterPending) =>
      _$this._filterPending = filterPending;

  ProviderSyncConfigDtoBuilder() {
    ProviderSyncConfigDto._defaults(this);
  }

  ProviderSyncConfigDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceAccount = $v.sourceAccount;
      _defaultCurrency = $v.defaultCurrency;
      _defaultExpenseAccount = $v.defaultExpenseAccount;
      _defaultIncomeAccount = $v.defaultIncomeAccount;
      _filterPending = $v.filterPending;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProviderSyncConfigDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProviderSyncConfigDto;
  }

  @override
  void update(void Function(ProviderSyncConfigDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProviderSyncConfigDto build() => _build();

  _$ProviderSyncConfigDto _build() {
    final _$result = _$v ??
        new _$ProviderSyncConfigDto._(
            sourceAccount: BuiltValueNullFieldError.checkNotNull(
                sourceAccount, r'ProviderSyncConfigDto', 'sourceAccount'),
            defaultCurrency: BuiltValueNullFieldError.checkNotNull(
                defaultCurrency, r'ProviderSyncConfigDto', 'defaultCurrency'),
            defaultExpenseAccount: BuiltValueNullFieldError.checkNotNull(
                defaultExpenseAccount,
                r'ProviderSyncConfigDto',
                'defaultExpenseAccount'),
            defaultIncomeAccount: BuiltValueNullFieldError.checkNotNull(
                defaultIncomeAccount,
                r'ProviderSyncConfigDto',
                'defaultIncomeAccount'),
            filterPending: filterPending);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
