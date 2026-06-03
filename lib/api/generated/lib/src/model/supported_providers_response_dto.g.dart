// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supported_providers_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SupportedProvidersResponseDto extends SupportedProvidersResponseDto {
  @override
  final BuiltList<String> providers;

  factory _$SupportedProvidersResponseDto(
          [void Function(SupportedProvidersResponseDtoBuilder)? updates]) =>
      (new SupportedProvidersResponseDtoBuilder()..update(updates))._build();

  _$SupportedProvidersResponseDto._({required this.providers}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        providers, r'SupportedProvidersResponseDto', 'providers');
  }

  @override
  SupportedProvidersResponseDto rebuild(
          void Function(SupportedProvidersResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SupportedProvidersResponseDtoBuilder toBuilder() =>
      new SupportedProvidersResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SupportedProvidersResponseDto &&
        providers == other.providers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, providers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SupportedProvidersResponseDto')
          ..add('providers', providers))
        .toString();
  }
}

class SupportedProvidersResponseDtoBuilder
    implements
        Builder<SupportedProvidersResponseDto,
            SupportedProvidersResponseDtoBuilder> {
  _$SupportedProvidersResponseDto? _$v;

  ListBuilder<String>? _providers;
  ListBuilder<String> get providers =>
      _$this._providers ??= new ListBuilder<String>();
  set providers(ListBuilder<String>? providers) =>
      _$this._providers = providers;

  SupportedProvidersResponseDtoBuilder() {
    SupportedProvidersResponseDto._defaults(this);
  }

  SupportedProvidersResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _providers = $v.providers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SupportedProvidersResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SupportedProvidersResponseDto;
  }

  @override
  void update(void Function(SupportedProvidersResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SupportedProvidersResponseDto build() => _build();

  _$SupportedProvidersResponseDto _build() {
    _$SupportedProvidersResponseDto _$result;
    try {
      _$result = _$v ??
          new _$SupportedProvidersResponseDto._(providers: providers.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'providers';
        providers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SupportedProvidersResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
