// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nlp_account_confirmation_data_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NlpAccountConfirmationDataDto extends NlpAccountConfirmationDataDto {
  @override
  final String invalidAccount;
  @override
  final String suggestedAccount;
  @override
  final BuiltList<String> similarAccounts;
  @override
  final String errorMessage;
  @override
  final JsonObject transactionContext;

  factory _$NlpAccountConfirmationDataDto(
          [void Function(NlpAccountConfirmationDataDtoBuilder)? updates]) =>
      (new NlpAccountConfirmationDataDtoBuilder()..update(updates))._build();

  _$NlpAccountConfirmationDataDto._(
      {required this.invalidAccount,
      required this.suggestedAccount,
      required this.similarAccounts,
      required this.errorMessage,
      required this.transactionContext})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        invalidAccount, r'NlpAccountConfirmationDataDto', 'invalidAccount');
    BuiltValueNullFieldError.checkNotNull(
        suggestedAccount, r'NlpAccountConfirmationDataDto', 'suggestedAccount');
    BuiltValueNullFieldError.checkNotNull(
        similarAccounts, r'NlpAccountConfirmationDataDto', 'similarAccounts');
    BuiltValueNullFieldError.checkNotNull(
        errorMessage, r'NlpAccountConfirmationDataDto', 'errorMessage');
    BuiltValueNullFieldError.checkNotNull(transactionContext,
        r'NlpAccountConfirmationDataDto', 'transactionContext');
  }

  @override
  NlpAccountConfirmationDataDto rebuild(
          void Function(NlpAccountConfirmationDataDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NlpAccountConfirmationDataDtoBuilder toBuilder() =>
      new NlpAccountConfirmationDataDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NlpAccountConfirmationDataDto &&
        invalidAccount == other.invalidAccount &&
        suggestedAccount == other.suggestedAccount &&
        similarAccounts == other.similarAccounts &&
        errorMessage == other.errorMessage &&
        transactionContext == other.transactionContext;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, invalidAccount.hashCode);
    _$hash = $jc(_$hash, suggestedAccount.hashCode);
    _$hash = $jc(_$hash, similarAccounts.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, transactionContext.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NlpAccountConfirmationDataDto')
          ..add('invalidAccount', invalidAccount)
          ..add('suggestedAccount', suggestedAccount)
          ..add('similarAccounts', similarAccounts)
          ..add('errorMessage', errorMessage)
          ..add('transactionContext', transactionContext))
        .toString();
  }
}

class NlpAccountConfirmationDataDtoBuilder
    implements
        Builder<NlpAccountConfirmationDataDto,
            NlpAccountConfirmationDataDtoBuilder> {
  _$NlpAccountConfirmationDataDto? _$v;

  String? _invalidAccount;
  String? get invalidAccount => _$this._invalidAccount;
  set invalidAccount(String? invalidAccount) =>
      _$this._invalidAccount = invalidAccount;

  String? _suggestedAccount;
  String? get suggestedAccount => _$this._suggestedAccount;
  set suggestedAccount(String? suggestedAccount) =>
      _$this._suggestedAccount = suggestedAccount;

  ListBuilder<String>? _similarAccounts;
  ListBuilder<String> get similarAccounts =>
      _$this._similarAccounts ??= new ListBuilder<String>();
  set similarAccounts(ListBuilder<String>? similarAccounts) =>
      _$this._similarAccounts = similarAccounts;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  JsonObject? _transactionContext;
  JsonObject? get transactionContext => _$this._transactionContext;
  set transactionContext(JsonObject? transactionContext) =>
      _$this._transactionContext = transactionContext;

  NlpAccountConfirmationDataDtoBuilder() {
    NlpAccountConfirmationDataDto._defaults(this);
  }

  NlpAccountConfirmationDataDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _invalidAccount = $v.invalidAccount;
      _suggestedAccount = $v.suggestedAccount;
      _similarAccounts = $v.similarAccounts.toBuilder();
      _errorMessage = $v.errorMessage;
      _transactionContext = $v.transactionContext;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NlpAccountConfirmationDataDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NlpAccountConfirmationDataDto;
  }

  @override
  void update(void Function(NlpAccountConfirmationDataDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NlpAccountConfirmationDataDto build() => _build();

  _$NlpAccountConfirmationDataDto _build() {
    _$NlpAccountConfirmationDataDto _$result;
    try {
      _$result = _$v ??
          new _$NlpAccountConfirmationDataDto._(
              invalidAccount: BuiltValueNullFieldError.checkNotNull(
                  invalidAccount,
                  r'NlpAccountConfirmationDataDto',
                  'invalidAccount'),
              suggestedAccount: BuiltValueNullFieldError.checkNotNull(
                  suggestedAccount,
                  r'NlpAccountConfirmationDataDto',
                  'suggestedAccount'),
              similarAccounts: similarAccounts.build(),
              errorMessage: BuiltValueNullFieldError.checkNotNull(errorMessage,
                  r'NlpAccountConfirmationDataDto', 'errorMessage'),
              transactionContext: BuiltValueNullFieldError.checkNotNull(
                  transactionContext,
                  r'NlpAccountConfirmationDataDto',
                  'transactionContext'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'similarAccounts';
        similarAccounts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NlpAccountConfirmationDataDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
