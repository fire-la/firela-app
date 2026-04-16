// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_class_summary_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssetClassSummaryDto extends AssetClassSummaryDto {
  @override
  final num totalAccounts;
  @override
  final num totalAssetClasses;
  @override
  final String baseCurrency;
  @override
  final BuiltList<AccountExchangeRateWarningDto>? warnings;

  factory _$AssetClassSummaryDto(
          [void Function(AssetClassSummaryDtoBuilder)? updates]) =>
      (new AssetClassSummaryDtoBuilder()..update(updates))._build();

  _$AssetClassSummaryDto._(
      {required this.totalAccounts,
      required this.totalAssetClasses,
      required this.baseCurrency,
      this.warnings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        totalAccounts, r'AssetClassSummaryDto', 'totalAccounts');
    BuiltValueNullFieldError.checkNotNull(
        totalAssetClasses, r'AssetClassSummaryDto', 'totalAssetClasses');
    BuiltValueNullFieldError.checkNotNull(
        baseCurrency, r'AssetClassSummaryDto', 'baseCurrency');
  }

  @override
  AssetClassSummaryDto rebuild(
          void Function(AssetClassSummaryDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssetClassSummaryDtoBuilder toBuilder() =>
      new AssetClassSummaryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssetClassSummaryDto &&
        totalAccounts == other.totalAccounts &&
        totalAssetClasses == other.totalAssetClasses &&
        baseCurrency == other.baseCurrency &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalAccounts.hashCode);
    _$hash = $jc(_$hash, totalAssetClasses.hashCode);
    _$hash = $jc(_$hash, baseCurrency.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AssetClassSummaryDto')
          ..add('totalAccounts', totalAccounts)
          ..add('totalAssetClasses', totalAssetClasses)
          ..add('baseCurrency', baseCurrency)
          ..add('warnings', warnings))
        .toString();
  }
}

class AssetClassSummaryDtoBuilder
    implements Builder<AssetClassSummaryDto, AssetClassSummaryDtoBuilder> {
  _$AssetClassSummaryDto? _$v;

  num? _totalAccounts;
  num? get totalAccounts => _$this._totalAccounts;
  set totalAccounts(num? totalAccounts) =>
      _$this._totalAccounts = totalAccounts;

  num? _totalAssetClasses;
  num? get totalAssetClasses => _$this._totalAssetClasses;
  set totalAssetClasses(num? totalAssetClasses) =>
      _$this._totalAssetClasses = totalAssetClasses;

  String? _baseCurrency;
  String? get baseCurrency => _$this._baseCurrency;
  set baseCurrency(String? baseCurrency) => _$this._baseCurrency = baseCurrency;

  ListBuilder<AccountExchangeRateWarningDto>? _warnings;
  ListBuilder<AccountExchangeRateWarningDto> get warnings =>
      _$this._warnings ??= new ListBuilder<AccountExchangeRateWarningDto>();
  set warnings(ListBuilder<AccountExchangeRateWarningDto>? warnings) =>
      _$this._warnings = warnings;

  AssetClassSummaryDtoBuilder() {
    AssetClassSummaryDto._defaults(this);
  }

  AssetClassSummaryDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalAccounts = $v.totalAccounts;
      _totalAssetClasses = $v.totalAssetClasses;
      _baseCurrency = $v.baseCurrency;
      _warnings = $v.warnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssetClassSummaryDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssetClassSummaryDto;
  }

  @override
  void update(void Function(AssetClassSummaryDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssetClassSummaryDto build() => _build();

  _$AssetClassSummaryDto _build() {
    _$AssetClassSummaryDto _$result;
    try {
      _$result = _$v ??
          new _$AssetClassSummaryDto._(
              totalAccounts: BuiltValueNullFieldError.checkNotNull(
                  totalAccounts, r'AssetClassSummaryDto', 'totalAccounts'),
              totalAssetClasses: BuiltValueNullFieldError.checkNotNull(
                  totalAssetClasses,
                  r'AssetClassSummaryDto',
                  'totalAssetClasses'),
              baseCurrency: BuiltValueNullFieldError.checkNotNull(
                  baseCurrency, r'AssetClassSummaryDto', 'baseCurrency'),
              warnings: _warnings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssetClassSummaryDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
