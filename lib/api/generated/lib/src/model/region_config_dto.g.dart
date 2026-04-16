// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_config_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegionConfigDto extends RegionConfigDto {
  @override
  final String currency;
  @override
  final String dateFormat;
  @override
  final String locale;

  factory _$RegionConfigDto([void Function(RegionConfigDtoBuilder)? updates]) =>
      (new RegionConfigDtoBuilder()..update(updates))._build();

  _$RegionConfigDto._(
      {required this.currency, required this.dateFormat, required this.locale})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        currency, r'RegionConfigDto', 'currency');
    BuiltValueNullFieldError.checkNotNull(
        dateFormat, r'RegionConfigDto', 'dateFormat');
    BuiltValueNullFieldError.checkNotNull(locale, r'RegionConfigDto', 'locale');
  }

  @override
  RegionConfigDto rebuild(void Function(RegionConfigDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegionConfigDtoBuilder toBuilder() =>
      new RegionConfigDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegionConfigDto &&
        currency == other.currency &&
        dateFormat == other.dateFormat &&
        locale == other.locale;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, dateFormat.hashCode);
    _$hash = $jc(_$hash, locale.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegionConfigDto')
          ..add('currency', currency)
          ..add('dateFormat', dateFormat)
          ..add('locale', locale))
        .toString();
  }
}

class RegionConfigDtoBuilder
    implements Builder<RegionConfigDto, RegionConfigDtoBuilder> {
  _$RegionConfigDto? _$v;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _dateFormat;
  String? get dateFormat => _$this._dateFormat;
  set dateFormat(String? dateFormat) => _$this._dateFormat = dateFormat;

  String? _locale;
  String? get locale => _$this._locale;
  set locale(String? locale) => _$this._locale = locale;

  RegionConfigDtoBuilder() {
    RegionConfigDto._defaults(this);
  }

  RegionConfigDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currency = $v.currency;
      _dateFormat = $v.dateFormat;
      _locale = $v.locale;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegionConfigDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegionConfigDto;
  }

  @override
  void update(void Function(RegionConfigDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegionConfigDto build() => _build();

  _$RegionConfigDto _build() {
    final _$result = _$v ??
        new _$RegionConfigDto._(
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'RegionConfigDto', 'currency'),
            dateFormat: BuiltValueNullFieldError.checkNotNull(
                dateFormat, r'RegionConfigDto', 'dateFormat'),
            locale: BuiltValueNullFieldError.checkNotNull(
                locale, r'RegionConfigDto', 'locale'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
