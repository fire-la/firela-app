// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nlp_suggested_accounts_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NlpSuggestedAccountsDto extends NlpSuggestedAccountsDto {
  @override
  final NlpSuggestedAccountDto? source_;
  @override
  final NlpSuggestedAccountDto? destination;

  factory _$NlpSuggestedAccountsDto(
          [void Function(NlpSuggestedAccountsDtoBuilder)? updates]) =>
      (new NlpSuggestedAccountsDtoBuilder()..update(updates))._build();

  _$NlpSuggestedAccountsDto._({this.source_, this.destination}) : super._();

  @override
  NlpSuggestedAccountsDto rebuild(
          void Function(NlpSuggestedAccountsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NlpSuggestedAccountsDtoBuilder toBuilder() =>
      new NlpSuggestedAccountsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NlpSuggestedAccountsDto &&
        source_ == other.source_ &&
        destination == other.destination;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, destination.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NlpSuggestedAccountsDto')
          ..add('source_', source_)
          ..add('destination', destination))
        .toString();
  }
}

class NlpSuggestedAccountsDtoBuilder
    implements
        Builder<NlpSuggestedAccountsDto, NlpSuggestedAccountsDtoBuilder> {
  _$NlpSuggestedAccountsDto? _$v;

  NlpSuggestedAccountDtoBuilder? _source_;
  NlpSuggestedAccountDtoBuilder get source_ =>
      _$this._source_ ??= new NlpSuggestedAccountDtoBuilder();
  set source_(NlpSuggestedAccountDtoBuilder? source_) =>
      _$this._source_ = source_;

  NlpSuggestedAccountDtoBuilder? _destination;
  NlpSuggestedAccountDtoBuilder get destination =>
      _$this._destination ??= new NlpSuggestedAccountDtoBuilder();
  set destination(NlpSuggestedAccountDtoBuilder? destination) =>
      _$this._destination = destination;

  NlpSuggestedAccountsDtoBuilder() {
    NlpSuggestedAccountsDto._defaults(this);
  }

  NlpSuggestedAccountsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _source_ = $v.source_?.toBuilder();
      _destination = $v.destination?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NlpSuggestedAccountsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NlpSuggestedAccountsDto;
  }

  @override
  void update(void Function(NlpSuggestedAccountsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NlpSuggestedAccountsDto build() => _build();

  _$NlpSuggestedAccountsDto _build() {
    _$NlpSuggestedAccountsDto _$result;
    try {
      _$result = _$v ??
          new _$NlpSuggestedAccountsDto._(
              source_: _source_?.build(), destination: _destination?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'source_';
        _source_?.build();
        _$failedField = 'destination';
        _destination?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NlpSuggestedAccountsDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
