// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posting_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostingResponseDto extends PostingResponseDto {
  @override
  final String account;
  @override
  final String? units;
  @override
  final String? currency;

  factory _$PostingResponseDto(
          [void Function(PostingResponseDtoBuilder)? updates]) =>
      (new PostingResponseDtoBuilder()..update(updates))._build();

  _$PostingResponseDto._({required this.account, this.units, this.currency})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        account, r'PostingResponseDto', 'account');
  }

  @override
  PostingResponseDto rebuild(
          void Function(PostingResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostingResponseDtoBuilder toBuilder() =>
      new PostingResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostingResponseDto &&
        account == other.account &&
        units == other.units &&
        currency == other.currency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, units.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostingResponseDto')
          ..add('account', account)
          ..add('units', units)
          ..add('currency', currency))
        .toString();
  }
}

class PostingResponseDtoBuilder
    implements Builder<PostingResponseDto, PostingResponseDtoBuilder> {
  _$PostingResponseDto? _$v;

  String? _account;
  String? get account => _$this._account;
  set account(String? account) => _$this._account = account;

  String? _units;
  String? get units => _$this._units;
  set units(String? units) => _$this._units = units;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  PostingResponseDtoBuilder() {
    PostingResponseDto._defaults(this);
  }

  PostingResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _account = $v.account;
      _units = $v.units;
      _currency = $v.currency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostingResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostingResponseDto;
  }

  @override
  void update(void Function(PostingResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostingResponseDto build() => _build();

  _$PostingResponseDto _build() {
    final _$result = _$v ??
        new _$PostingResponseDto._(
            account: BuiltValueNullFieldError.checkNotNull(
                account, r'PostingResponseDto', 'account'),
            units: units,
            currency: currency);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
