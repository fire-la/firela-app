// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parser_contribution_relay_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParserContributionRelayResponseDto
    extends ParserContributionRelayResponseDto {
  @override
  final String issueUrl;
  @override
  final num issueNumber;

  factory _$ParserContributionRelayResponseDto(
          [void Function(ParserContributionRelayResponseDtoBuilder)?
              updates]) =>
      (new ParserContributionRelayResponseDtoBuilder()..update(updates))
          ._build();

  _$ParserContributionRelayResponseDto._(
      {required this.issueUrl, required this.issueNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        issueUrl, r'ParserContributionRelayResponseDto', 'issueUrl');
    BuiltValueNullFieldError.checkNotNull(
        issueNumber, r'ParserContributionRelayResponseDto', 'issueNumber');
  }

  @override
  ParserContributionRelayResponseDto rebuild(
          void Function(ParserContributionRelayResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParserContributionRelayResponseDtoBuilder toBuilder() =>
      new ParserContributionRelayResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParserContributionRelayResponseDto &&
        issueUrl == other.issueUrl &&
        issueNumber == other.issueNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, issueUrl.hashCode);
    _$hash = $jc(_$hash, issueNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParserContributionRelayResponseDto')
          ..add('issueUrl', issueUrl)
          ..add('issueNumber', issueNumber))
        .toString();
  }
}

class ParserContributionRelayResponseDtoBuilder
    implements
        Builder<ParserContributionRelayResponseDto,
            ParserContributionRelayResponseDtoBuilder> {
  _$ParserContributionRelayResponseDto? _$v;

  String? _issueUrl;
  String? get issueUrl => _$this._issueUrl;
  set issueUrl(String? issueUrl) => _$this._issueUrl = issueUrl;

  num? _issueNumber;
  num? get issueNumber => _$this._issueNumber;
  set issueNumber(num? issueNumber) => _$this._issueNumber = issueNumber;

  ParserContributionRelayResponseDtoBuilder() {
    ParserContributionRelayResponseDto._defaults(this);
  }

  ParserContributionRelayResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _issueUrl = $v.issueUrl;
      _issueNumber = $v.issueNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParserContributionRelayResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParserContributionRelayResponseDto;
  }

  @override
  void update(
      void Function(ParserContributionRelayResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParserContributionRelayResponseDto build() => _build();

  _$ParserContributionRelayResponseDto _build() {
    final _$result = _$v ??
        new _$ParserContributionRelayResponseDto._(
            issueUrl: BuiltValueNullFieldError.checkNotNull(
                issueUrl, r'ParserContributionRelayResponseDto', 'issueUrl'),
            issueNumber: BuiltValueNullFieldError.checkNotNull(issueNumber,
                r'ParserContributionRelayResponseDto', 'issueNumber'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
