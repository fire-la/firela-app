// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_standards_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlatformStandardsResponseDto extends PlatformStandardsResponseDto {
  @override
  final PlatformStandardsPlatformDto platform;
  @override
  final String region;
  @override
  final BuiltList<AccountStandardResponseDto> templates;

  factory _$PlatformStandardsResponseDto(
          [void Function(PlatformStandardsResponseDtoBuilder)? updates]) =>
      (new PlatformStandardsResponseDtoBuilder()..update(updates))._build();

  _$PlatformStandardsResponseDto._(
      {required this.platform, required this.region, required this.templates})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        platform, r'PlatformStandardsResponseDto', 'platform');
    BuiltValueNullFieldError.checkNotNull(
        region, r'PlatformStandardsResponseDto', 'region');
    BuiltValueNullFieldError.checkNotNull(
        templates, r'PlatformStandardsResponseDto', 'templates');
  }

  @override
  PlatformStandardsResponseDto rebuild(
          void Function(PlatformStandardsResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlatformStandardsResponseDtoBuilder toBuilder() =>
      new PlatformStandardsResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlatformStandardsResponseDto &&
        platform == other.platform &&
        region == other.region &&
        templates == other.templates;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, templates.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlatformStandardsResponseDto')
          ..add('platform', platform)
          ..add('region', region)
          ..add('templates', templates))
        .toString();
  }
}

class PlatformStandardsResponseDtoBuilder
    implements
        Builder<PlatformStandardsResponseDto,
            PlatformStandardsResponseDtoBuilder> {
  _$PlatformStandardsResponseDto? _$v;

  PlatformStandardsPlatformDtoBuilder? _platform;
  PlatformStandardsPlatformDtoBuilder get platform =>
      _$this._platform ??= new PlatformStandardsPlatformDtoBuilder();
  set platform(PlatformStandardsPlatformDtoBuilder? platform) =>
      _$this._platform = platform;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  ListBuilder<AccountStandardResponseDto>? _templates;
  ListBuilder<AccountStandardResponseDto> get templates =>
      _$this._templates ??= new ListBuilder<AccountStandardResponseDto>();
  set templates(ListBuilder<AccountStandardResponseDto>? templates) =>
      _$this._templates = templates;

  PlatformStandardsResponseDtoBuilder() {
    PlatformStandardsResponseDto._defaults(this);
  }

  PlatformStandardsResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _platform = $v.platform.toBuilder();
      _region = $v.region;
      _templates = $v.templates.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlatformStandardsResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlatformStandardsResponseDto;
  }

  @override
  void update(void Function(PlatformStandardsResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlatformStandardsResponseDto build() => _build();

  _$PlatformStandardsResponseDto _build() {
    _$PlatformStandardsResponseDto _$result;
    try {
      _$result = _$v ??
          new _$PlatformStandardsResponseDto._(
              platform: platform.build(),
              region: BuiltValueNullFieldError.checkNotNull(
                  region, r'PlatformStandardsResponseDto', 'region'),
              templates: templates.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'platform';
        platform.build();

        _$failedField = 'templates';
        templates.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PlatformStandardsResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
