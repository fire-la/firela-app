// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_group_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlatformGroupDto extends PlatformGroupDto {
  @override
  final String platformId;
  @override
  final String platformName;
  @override
  final BuiltList<AccountItemDto> accounts;
  @override
  final String totalBalance;

  factory _$PlatformGroupDto(
          [void Function(PlatformGroupDtoBuilder)? updates]) =>
      (new PlatformGroupDtoBuilder()..update(updates))._build();

  _$PlatformGroupDto._(
      {required this.platformId,
      required this.platformName,
      required this.accounts,
      required this.totalBalance})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        platformId, r'PlatformGroupDto', 'platformId');
    BuiltValueNullFieldError.checkNotNull(
        platformName, r'PlatformGroupDto', 'platformName');
    BuiltValueNullFieldError.checkNotNull(
        accounts, r'PlatformGroupDto', 'accounts');
    BuiltValueNullFieldError.checkNotNull(
        totalBalance, r'PlatformGroupDto', 'totalBalance');
  }

  @override
  PlatformGroupDto rebuild(void Function(PlatformGroupDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlatformGroupDtoBuilder toBuilder() =>
      new PlatformGroupDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlatformGroupDto &&
        platformId == other.platformId &&
        platformName == other.platformName &&
        accounts == other.accounts &&
        totalBalance == other.totalBalance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, platformId.hashCode);
    _$hash = $jc(_$hash, platformName.hashCode);
    _$hash = $jc(_$hash, accounts.hashCode);
    _$hash = $jc(_$hash, totalBalance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlatformGroupDto')
          ..add('platformId', platformId)
          ..add('platformName', platformName)
          ..add('accounts', accounts)
          ..add('totalBalance', totalBalance))
        .toString();
  }
}

class PlatformGroupDtoBuilder
    implements Builder<PlatformGroupDto, PlatformGroupDtoBuilder> {
  _$PlatformGroupDto? _$v;

  String? _platformId;
  String? get platformId => _$this._platformId;
  set platformId(String? platformId) => _$this._platformId = platformId;

  String? _platformName;
  String? get platformName => _$this._platformName;
  set platformName(String? platformName) => _$this._platformName = platformName;

  ListBuilder<AccountItemDto>? _accounts;
  ListBuilder<AccountItemDto> get accounts =>
      _$this._accounts ??= new ListBuilder<AccountItemDto>();
  set accounts(ListBuilder<AccountItemDto>? accounts) =>
      _$this._accounts = accounts;

  String? _totalBalance;
  String? get totalBalance => _$this._totalBalance;
  set totalBalance(String? totalBalance) => _$this._totalBalance = totalBalance;

  PlatformGroupDtoBuilder() {
    PlatformGroupDto._defaults(this);
  }

  PlatformGroupDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _platformId = $v.platformId;
      _platformName = $v.platformName;
      _accounts = $v.accounts.toBuilder();
      _totalBalance = $v.totalBalance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlatformGroupDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlatformGroupDto;
  }

  @override
  void update(void Function(PlatformGroupDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlatformGroupDto build() => _build();

  _$PlatformGroupDto _build() {
    _$PlatformGroupDto _$result;
    try {
      _$result = _$v ??
          new _$PlatformGroupDto._(
              platformId: BuiltValueNullFieldError.checkNotNull(
                  platformId, r'PlatformGroupDto', 'platformId'),
              platformName: BuiltValueNullFieldError.checkNotNull(
                  platformName, r'PlatformGroupDto', 'platformName'),
              accounts: accounts.build(),
              totalBalance: BuiltValueNullFieldError.checkNotNull(
                  totalBalance, r'PlatformGroupDto', 'totalBalance'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accounts';
        accounts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PlatformGroupDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
