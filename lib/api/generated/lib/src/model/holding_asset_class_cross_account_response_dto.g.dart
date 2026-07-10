// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holding_asset_class_cross_account_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HoldingAssetClassCrossAccountResponseDto
    extends HoldingAssetClassCrossAccountResponseDto {
  @override
  final AssetClassAccountsResponseDto global;
  @override
  final BuiltList<HoldingAssetClassAccountSliceDto> byAccount;

  factory _$HoldingAssetClassCrossAccountResponseDto(
          [void Function(HoldingAssetClassCrossAccountResponseDtoBuilder)?
              updates]) =>
      (new HoldingAssetClassCrossAccountResponseDtoBuilder()..update(updates))
          ._build();

  _$HoldingAssetClassCrossAccountResponseDto._(
      {required this.global, required this.byAccount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        global, r'HoldingAssetClassCrossAccountResponseDto', 'global');
    BuiltValueNullFieldError.checkNotNull(
        byAccount, r'HoldingAssetClassCrossAccountResponseDto', 'byAccount');
  }

  @override
  HoldingAssetClassCrossAccountResponseDto rebuild(
          void Function(HoldingAssetClassCrossAccountResponseDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HoldingAssetClassCrossAccountResponseDtoBuilder toBuilder() =>
      new HoldingAssetClassCrossAccountResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HoldingAssetClassCrossAccountResponseDto &&
        global == other.global &&
        byAccount == other.byAccount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, global.hashCode);
    _$hash = $jc(_$hash, byAccount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'HoldingAssetClassCrossAccountResponseDto')
          ..add('global', global)
          ..add('byAccount', byAccount))
        .toString();
  }
}

class HoldingAssetClassCrossAccountResponseDtoBuilder
    implements
        Builder<HoldingAssetClassCrossAccountResponseDto,
            HoldingAssetClassCrossAccountResponseDtoBuilder> {
  _$HoldingAssetClassCrossAccountResponseDto? _$v;

  AssetClassAccountsResponseDtoBuilder? _global;
  AssetClassAccountsResponseDtoBuilder get global =>
      _$this._global ??= new AssetClassAccountsResponseDtoBuilder();
  set global(AssetClassAccountsResponseDtoBuilder? global) =>
      _$this._global = global;

  ListBuilder<HoldingAssetClassAccountSliceDto>? _byAccount;
  ListBuilder<HoldingAssetClassAccountSliceDto> get byAccount =>
      _$this._byAccount ??= new ListBuilder<HoldingAssetClassAccountSliceDto>();
  set byAccount(ListBuilder<HoldingAssetClassAccountSliceDto>? byAccount) =>
      _$this._byAccount = byAccount;

  HoldingAssetClassCrossAccountResponseDtoBuilder() {
    HoldingAssetClassCrossAccountResponseDto._defaults(this);
  }

  HoldingAssetClassCrossAccountResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _global = $v.global.toBuilder();
      _byAccount = $v.byAccount.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HoldingAssetClassCrossAccountResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HoldingAssetClassCrossAccountResponseDto;
  }

  @override
  void update(
      void Function(HoldingAssetClassCrossAccountResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HoldingAssetClassCrossAccountResponseDto build() => _build();

  _$HoldingAssetClassCrossAccountResponseDto _build() {
    _$HoldingAssetClassCrossAccountResponseDto _$result;
    try {
      _$result = _$v ??
          new _$HoldingAssetClassCrossAccountResponseDto._(
              global: global.build(), byAccount: byAccount.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'global';
        global.build();
        _$failedField = 'byAccount';
        byAccount.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HoldingAssetClassCrossAccountResponseDto',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
