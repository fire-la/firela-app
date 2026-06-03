// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payee_autocomplete_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PayeeAutocompleteResponseDto extends PayeeAutocompleteResponseDto {
  @override
  final BuiltList<String> suggestions;

  factory _$PayeeAutocompleteResponseDto(
          [void Function(PayeeAutocompleteResponseDtoBuilder)? updates]) =>
      (new PayeeAutocompleteResponseDtoBuilder()..update(updates))._build();

  _$PayeeAutocompleteResponseDto._({required this.suggestions}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        suggestions, r'PayeeAutocompleteResponseDto', 'suggestions');
  }

  @override
  PayeeAutocompleteResponseDto rebuild(
          void Function(PayeeAutocompleteResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PayeeAutocompleteResponseDtoBuilder toBuilder() =>
      new PayeeAutocompleteResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PayeeAutocompleteResponseDto &&
        suggestions == other.suggestions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, suggestions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PayeeAutocompleteResponseDto')
          ..add('suggestions', suggestions))
        .toString();
  }
}

class PayeeAutocompleteResponseDtoBuilder
    implements
        Builder<PayeeAutocompleteResponseDto,
            PayeeAutocompleteResponseDtoBuilder> {
  _$PayeeAutocompleteResponseDto? _$v;

  ListBuilder<String>? _suggestions;
  ListBuilder<String> get suggestions =>
      _$this._suggestions ??= new ListBuilder<String>();
  set suggestions(ListBuilder<String>? suggestions) =>
      _$this._suggestions = suggestions;

  PayeeAutocompleteResponseDtoBuilder() {
    PayeeAutocompleteResponseDto._defaults(this);
  }

  PayeeAutocompleteResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _suggestions = $v.suggestions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PayeeAutocompleteResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PayeeAutocompleteResponseDto;
  }

  @override
  void update(void Function(PayeeAutocompleteResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PayeeAutocompleteResponseDto build() => _build();

  _$PayeeAutocompleteResponseDto _build() {
    _$PayeeAutocompleteResponseDto _$result;
    try {
      _$result = _$v ??
          new _$PayeeAutocompleteResponseDto._(
              suggestions: suggestions.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'suggestions';
        suggestions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PayeeAutocompleteResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
