// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider_sync_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProviderSyncDto extends ProviderSyncDto {
  @override
  final ProviderSyncConfigDto config;
  @override
  final BuiltList<dynamic> transactions;
  @override
  final String? provider;
  @override
  final String? syncId;

  factory _$ProviderSyncDto([void Function(ProviderSyncDtoBuilder)? updates]) =>
      (new ProviderSyncDtoBuilder()..update(updates))._build();

  _$ProviderSyncDto._(
      {required this.config,
      required this.transactions,
      this.provider,
      this.syncId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(config, r'ProviderSyncDto', 'config');
    BuiltValueNullFieldError.checkNotNull(
        transactions, r'ProviderSyncDto', 'transactions');
  }

  @override
  ProviderSyncDto rebuild(void Function(ProviderSyncDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProviderSyncDtoBuilder toBuilder() =>
      new ProviderSyncDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProviderSyncDto &&
        config == other.config &&
        transactions == other.transactions &&
        provider == other.provider &&
        syncId == other.syncId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, transactions.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, syncId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProviderSyncDto')
          ..add('config', config)
          ..add('transactions', transactions)
          ..add('provider', provider)
          ..add('syncId', syncId))
        .toString();
  }
}

class ProviderSyncDtoBuilder
    implements Builder<ProviderSyncDto, ProviderSyncDtoBuilder> {
  _$ProviderSyncDto? _$v;

  ProviderSyncConfigDtoBuilder? _config;
  ProviderSyncConfigDtoBuilder get config =>
      _$this._config ??= new ProviderSyncConfigDtoBuilder();
  set config(ProviderSyncConfigDtoBuilder? config) => _$this._config = config;

  ListBuilder<dynamic>? _transactions;
  ListBuilder<dynamic> get transactions =>
      _$this._transactions ??= new ListBuilder<dynamic>();
  set transactions(ListBuilder<dynamic>? transactions) =>
      _$this._transactions = transactions;

  String? _provider;
  String? get provider => _$this._provider;
  set provider(String? provider) => _$this._provider = provider;

  String? _syncId;
  String? get syncId => _$this._syncId;
  set syncId(String? syncId) => _$this._syncId = syncId;

  ProviderSyncDtoBuilder() {
    ProviderSyncDto._defaults(this);
  }

  ProviderSyncDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _config = $v.config.toBuilder();
      _transactions = $v.transactions.toBuilder();
      _provider = $v.provider;
      _syncId = $v.syncId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProviderSyncDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProviderSyncDto;
  }

  @override
  void update(void Function(ProviderSyncDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProviderSyncDto build() => _build();

  _$ProviderSyncDto _build() {
    _$ProviderSyncDto _$result;
    try {
      _$result = _$v ??
          new _$ProviderSyncDto._(
              config: config.build(),
              transactions: transactions.build(),
              provider: provider,
              syncId: syncId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        config.build();
        _$failedField = 'transactions';
        transactions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProviderSyncDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
