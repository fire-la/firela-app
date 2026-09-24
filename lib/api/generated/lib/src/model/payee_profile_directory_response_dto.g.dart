// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payee_profile_directory_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PayeeProfileDirectoryResponseDto
    extends PayeeProfileDirectoryResponseDto {
  @override
  final num total;
  @override
  final BuiltList<PayeeProfileDirectoryEntryDto> profiles;

  factory _$PayeeProfileDirectoryResponseDto(
          [void Function(PayeeProfileDirectoryResponseDtoBuilder)? updates]) =>
      (new PayeeProfileDirectoryResponseDtoBuilder()..update(updates))._build();

  _$PayeeProfileDirectoryResponseDto._(
      {required this.total, required this.profiles})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        total, r'PayeeProfileDirectoryResponseDto', 'total');
    BuiltValueNullFieldError.checkNotNull(
        profiles, r'PayeeProfileDirectoryResponseDto', 'profiles');
  }

  @override
  PayeeProfileDirectoryResponseDto rebuild(
          void Function(PayeeProfileDirectoryResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PayeeProfileDirectoryResponseDtoBuilder toBuilder() =>
      new PayeeProfileDirectoryResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PayeeProfileDirectoryResponseDto &&
        total == other.total &&
        profiles == other.profiles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, profiles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PayeeProfileDirectoryResponseDto')
          ..add('total', total)
          ..add('profiles', profiles))
        .toString();
  }
}

class PayeeProfileDirectoryResponseDtoBuilder
    implements
        Builder<PayeeProfileDirectoryResponseDto,
            PayeeProfileDirectoryResponseDtoBuilder> {
  _$PayeeProfileDirectoryResponseDto? _$v;

  num? _total;
  num? get total => _$this._total;
  set total(num? total) => _$this._total = total;

  ListBuilder<PayeeProfileDirectoryEntryDto>? _profiles;
  ListBuilder<PayeeProfileDirectoryEntryDto> get profiles =>
      _$this._profiles ??= new ListBuilder<PayeeProfileDirectoryEntryDto>();
  set profiles(ListBuilder<PayeeProfileDirectoryEntryDto>? profiles) =>
      _$this._profiles = profiles;

  PayeeProfileDirectoryResponseDtoBuilder() {
    PayeeProfileDirectoryResponseDto._defaults(this);
  }

  PayeeProfileDirectoryResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _profiles = $v.profiles.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PayeeProfileDirectoryResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PayeeProfileDirectoryResponseDto;
  }

  @override
  void update(void Function(PayeeProfileDirectoryResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PayeeProfileDirectoryResponseDto build() => _build();

  _$PayeeProfileDirectoryResponseDto _build() {
    _$PayeeProfileDirectoryResponseDto _$result;
    try {
      _$result = _$v ??
          new _$PayeeProfileDirectoryResponseDto._(
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'PayeeProfileDirectoryResponseDto', 'total'),
              profiles: profiles.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'profiles';
        profiles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PayeeProfileDirectoryResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
