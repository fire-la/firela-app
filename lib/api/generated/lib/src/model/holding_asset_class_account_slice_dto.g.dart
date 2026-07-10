// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holding_asset_class_account_slice_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HoldingAssetClassAccountSliceDto
    extends HoldingAssetClassAccountSliceDto {
  @override
  final String accountId;
  @override
  final String accountPath;
  @override
  final String? accountCurrency;
  @override
  final String marketValueBase;
  @override
  final num shareOfTotalPct;
  @override
  final BuiltList<AssetClassGroupDto> groups;
  @override
  final AssetClassGroupDto? uncategorized;
  @override
  final BuiltList<AccountItemWithAssetClassDto> holdings;

  factory _$HoldingAssetClassAccountSliceDto(
          [void Function(HoldingAssetClassAccountSliceDtoBuilder)? updates]) =>
      (new HoldingAssetClassAccountSliceDtoBuilder()..update(updates))._build();

  _$HoldingAssetClassAccountSliceDto._(
      {required this.accountId,
      required this.accountPath,
      this.accountCurrency,
      required this.marketValueBase,
      required this.shareOfTotalPct,
      required this.groups,
      this.uncategorized,
      required this.holdings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountId, r'HoldingAssetClassAccountSliceDto', 'accountId');
    BuiltValueNullFieldError.checkNotNull(
        accountPath, r'HoldingAssetClassAccountSliceDto', 'accountPath');
    BuiltValueNullFieldError.checkNotNull(marketValueBase,
        r'HoldingAssetClassAccountSliceDto', 'marketValueBase');
    BuiltValueNullFieldError.checkNotNull(shareOfTotalPct,
        r'HoldingAssetClassAccountSliceDto', 'shareOfTotalPct');
    BuiltValueNullFieldError.checkNotNull(
        groups, r'HoldingAssetClassAccountSliceDto', 'groups');
    BuiltValueNullFieldError.checkNotNull(
        holdings, r'HoldingAssetClassAccountSliceDto', 'holdings');
  }

  @override
  HoldingAssetClassAccountSliceDto rebuild(
          void Function(HoldingAssetClassAccountSliceDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HoldingAssetClassAccountSliceDtoBuilder toBuilder() =>
      new HoldingAssetClassAccountSliceDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HoldingAssetClassAccountSliceDto &&
        accountId == other.accountId &&
        accountPath == other.accountPath &&
        accountCurrency == other.accountCurrency &&
        marketValueBase == other.marketValueBase &&
        shareOfTotalPct == other.shareOfTotalPct &&
        groups == other.groups &&
        uncategorized == other.uncategorized &&
        holdings == other.holdings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, accountPath.hashCode);
    _$hash = $jc(_$hash, accountCurrency.hashCode);
    _$hash = $jc(_$hash, marketValueBase.hashCode);
    _$hash = $jc(_$hash, shareOfTotalPct.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, uncategorized.hashCode);
    _$hash = $jc(_$hash, holdings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HoldingAssetClassAccountSliceDto')
          ..add('accountId', accountId)
          ..add('accountPath', accountPath)
          ..add('accountCurrency', accountCurrency)
          ..add('marketValueBase', marketValueBase)
          ..add('shareOfTotalPct', shareOfTotalPct)
          ..add('groups', groups)
          ..add('uncategorized', uncategorized)
          ..add('holdings', holdings))
        .toString();
  }
}

class HoldingAssetClassAccountSliceDtoBuilder
    implements
        Builder<HoldingAssetClassAccountSliceDto,
            HoldingAssetClassAccountSliceDtoBuilder> {
  _$HoldingAssetClassAccountSliceDto? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _accountPath;
  String? get accountPath => _$this._accountPath;
  set accountPath(String? accountPath) => _$this._accountPath = accountPath;

  String? _accountCurrency;
  String? get accountCurrency => _$this._accountCurrency;
  set accountCurrency(String? accountCurrency) =>
      _$this._accountCurrency = accountCurrency;

  String? _marketValueBase;
  String? get marketValueBase => _$this._marketValueBase;
  set marketValueBase(String? marketValueBase) =>
      _$this._marketValueBase = marketValueBase;

  num? _shareOfTotalPct;
  num? get shareOfTotalPct => _$this._shareOfTotalPct;
  set shareOfTotalPct(num? shareOfTotalPct) =>
      _$this._shareOfTotalPct = shareOfTotalPct;

  ListBuilder<AssetClassGroupDto>? _groups;
  ListBuilder<AssetClassGroupDto> get groups =>
      _$this._groups ??= new ListBuilder<AssetClassGroupDto>();
  set groups(ListBuilder<AssetClassGroupDto>? groups) =>
      _$this._groups = groups;

  AssetClassGroupDtoBuilder? _uncategorized;
  AssetClassGroupDtoBuilder get uncategorized =>
      _$this._uncategorized ??= new AssetClassGroupDtoBuilder();
  set uncategorized(AssetClassGroupDtoBuilder? uncategorized) =>
      _$this._uncategorized = uncategorized;

  ListBuilder<AccountItemWithAssetClassDto>? _holdings;
  ListBuilder<AccountItemWithAssetClassDto> get holdings =>
      _$this._holdings ??= new ListBuilder<AccountItemWithAssetClassDto>();
  set holdings(ListBuilder<AccountItemWithAssetClassDto>? holdings) =>
      _$this._holdings = holdings;

  HoldingAssetClassAccountSliceDtoBuilder() {
    HoldingAssetClassAccountSliceDto._defaults(this);
  }

  HoldingAssetClassAccountSliceDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _accountPath = $v.accountPath;
      _accountCurrency = $v.accountCurrency;
      _marketValueBase = $v.marketValueBase;
      _shareOfTotalPct = $v.shareOfTotalPct;
      _groups = $v.groups.toBuilder();
      _uncategorized = $v.uncategorized?.toBuilder();
      _holdings = $v.holdings.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HoldingAssetClassAccountSliceDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HoldingAssetClassAccountSliceDto;
  }

  @override
  void update(void Function(HoldingAssetClassAccountSliceDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HoldingAssetClassAccountSliceDto build() => _build();

  _$HoldingAssetClassAccountSliceDto _build() {
    _$HoldingAssetClassAccountSliceDto _$result;
    try {
      _$result = _$v ??
          new _$HoldingAssetClassAccountSliceDto._(
              accountId: BuiltValueNullFieldError.checkNotNull(
                  accountId, r'HoldingAssetClassAccountSliceDto', 'accountId'),
              accountPath: BuiltValueNullFieldError.checkNotNull(accountPath,
                  r'HoldingAssetClassAccountSliceDto', 'accountPath'),
              accountCurrency: accountCurrency,
              marketValueBase: BuiltValueNullFieldError.checkNotNull(
                  marketValueBase,
                  r'HoldingAssetClassAccountSliceDto',
                  'marketValueBase'),
              shareOfTotalPct: BuiltValueNullFieldError.checkNotNull(
                  shareOfTotalPct,
                  r'HoldingAssetClassAccountSliceDto',
                  'shareOfTotalPct'),
              groups: groups.build(),
              uncategorized: _uncategorized?.build(),
              holdings: holdings.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groups';
        groups.build();
        _$failedField = 'uncategorized';
        _uncategorized?.build();
        _$failedField = 'holdings';
        holdings.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HoldingAssetClassAccountSliceDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
