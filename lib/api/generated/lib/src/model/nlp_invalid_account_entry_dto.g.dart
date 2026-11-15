// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nlp_invalid_account_entry_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NlpInvalidAccountEntryDto extends NlpInvalidAccountEntryDto {
  @override
  final String invalidAccount;
  @override
  final String? suggestedAccount;
  @override
  final BuiltList<NlpAccountCandidateDto> similarAccounts;
  @override
  final String errorMessage;

  factory _$NlpInvalidAccountEntryDto(
          [void Function(NlpInvalidAccountEntryDtoBuilder)? updates]) =>
      (new NlpInvalidAccountEntryDtoBuilder()..update(updates))._build();

  _$NlpInvalidAccountEntryDto._(
      {required this.invalidAccount,
      this.suggestedAccount,
      required this.similarAccounts,
      required this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        invalidAccount, r'NlpInvalidAccountEntryDto', 'invalidAccount');
    BuiltValueNullFieldError.checkNotNull(
        similarAccounts, r'NlpInvalidAccountEntryDto', 'similarAccounts');
    BuiltValueNullFieldError.checkNotNull(
        errorMessage, r'NlpInvalidAccountEntryDto', 'errorMessage');
  }

  @override
  NlpInvalidAccountEntryDto rebuild(
          void Function(NlpInvalidAccountEntryDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NlpInvalidAccountEntryDtoBuilder toBuilder() =>
      new NlpInvalidAccountEntryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NlpInvalidAccountEntryDto &&
        invalidAccount == other.invalidAccount &&
        suggestedAccount == other.suggestedAccount &&
        similarAccounts == other.similarAccounts &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, invalidAccount.hashCode);
    _$hash = $jc(_$hash, suggestedAccount.hashCode);
    _$hash = $jc(_$hash, similarAccounts.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NlpInvalidAccountEntryDto')
          ..add('invalidAccount', invalidAccount)
          ..add('suggestedAccount', suggestedAccount)
          ..add('similarAccounts', similarAccounts)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class NlpInvalidAccountEntryDtoBuilder
    implements
        Builder<NlpInvalidAccountEntryDto, NlpInvalidAccountEntryDtoBuilder> {
  _$NlpInvalidAccountEntryDto? _$v;

  String? _invalidAccount;
  String? get invalidAccount => _$this._invalidAccount;
  set invalidAccount(String? invalidAccount) =>
      _$this._invalidAccount = invalidAccount;

  String? _suggestedAccount;
  String? get suggestedAccount => _$this._suggestedAccount;
  set suggestedAccount(String? suggestedAccount) =>
      _$this._suggestedAccount = suggestedAccount;

  ListBuilder<NlpAccountCandidateDto>? _similarAccounts;
  ListBuilder<NlpAccountCandidateDto> get similarAccounts =>
      _$this._similarAccounts ??= new ListBuilder<NlpAccountCandidateDto>();
  set similarAccounts(ListBuilder<NlpAccountCandidateDto>? similarAccounts) =>
      _$this._similarAccounts = similarAccounts;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  NlpInvalidAccountEntryDtoBuilder() {
    NlpInvalidAccountEntryDto._defaults(this);
  }

  NlpInvalidAccountEntryDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _invalidAccount = $v.invalidAccount;
      _suggestedAccount = $v.suggestedAccount;
      _similarAccounts = $v.similarAccounts.toBuilder();
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NlpInvalidAccountEntryDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NlpInvalidAccountEntryDto;
  }

  @override
  void update(void Function(NlpInvalidAccountEntryDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NlpInvalidAccountEntryDto build() => _build();

  _$NlpInvalidAccountEntryDto _build() {
    _$NlpInvalidAccountEntryDto _$result;
    try {
      _$result = _$v ??
          new _$NlpInvalidAccountEntryDto._(
              invalidAccount: BuiltValueNullFieldError.checkNotNull(
                  invalidAccount,
                  r'NlpInvalidAccountEntryDto',
                  'invalidAccount'),
              suggestedAccount: suggestedAccount,
              similarAccounts: similarAccounts.build(),
              errorMessage: BuiltValueNullFieldError.checkNotNull(
                  errorMessage, r'NlpInvalidAccountEntryDto', 'errorMessage'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'similarAccounts';
        similarAccounts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NlpInvalidAccountEntryDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
