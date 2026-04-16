// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nlp_suggested_account_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NlpSuggestedAccountDto extends NlpSuggestedAccountDto {
  @override
  final String account;
  @override
  final num? confidence;

  factory _$NlpSuggestedAccountDto(
          [void Function(NlpSuggestedAccountDtoBuilder)? updates]) =>
      (new NlpSuggestedAccountDtoBuilder()..update(updates))._build();

  _$NlpSuggestedAccountDto._({required this.account, this.confidence})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        account, r'NlpSuggestedAccountDto', 'account');
  }

  @override
  NlpSuggestedAccountDto rebuild(
          void Function(NlpSuggestedAccountDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NlpSuggestedAccountDtoBuilder toBuilder() =>
      new NlpSuggestedAccountDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NlpSuggestedAccountDto &&
        account == other.account &&
        confidence == other.confidence;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NlpSuggestedAccountDto')
          ..add('account', account)
          ..add('confidence', confidence))
        .toString();
  }
}

class NlpSuggestedAccountDtoBuilder
    implements Builder<NlpSuggestedAccountDto, NlpSuggestedAccountDtoBuilder> {
  _$NlpSuggestedAccountDto? _$v;

  String? _account;
  String? get account => _$this._account;
  set account(String? account) => _$this._account = account;

  num? _confidence;
  num? get confidence => _$this._confidence;
  set confidence(num? confidence) => _$this._confidence = confidence;

  NlpSuggestedAccountDtoBuilder() {
    NlpSuggestedAccountDto._defaults(this);
  }

  NlpSuggestedAccountDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _account = $v.account;
      _confidence = $v.confidence;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NlpSuggestedAccountDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NlpSuggestedAccountDto;
  }

  @override
  void update(void Function(NlpSuggestedAccountDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NlpSuggestedAccountDto build() => _build();

  _$NlpSuggestedAccountDto _build() {
    final _$result = _$v ??
        new _$NlpSuggestedAccountDto._(
            account: BuiltValueNullFieldError.checkNotNull(
                account, r'NlpSuggestedAccountDto', 'account'),
            confidence: confidence);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
