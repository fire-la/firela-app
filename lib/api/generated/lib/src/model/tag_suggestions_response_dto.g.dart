// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_suggestions_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagSuggestionsResponseDto extends TagSuggestionsResponseDto {
  @override
  final BuiltList<TagSuggestionDto> data;

  factory _$TagSuggestionsResponseDto(
          [void Function(TagSuggestionsResponseDtoBuilder)? updates]) =>
      (new TagSuggestionsResponseDtoBuilder()..update(updates))._build();

  _$TagSuggestionsResponseDto._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        data, r'TagSuggestionsResponseDto', 'data');
  }

  @override
  TagSuggestionsResponseDto rebuild(
          void Function(TagSuggestionsResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagSuggestionsResponseDtoBuilder toBuilder() =>
      new TagSuggestionsResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagSuggestionsResponseDto && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TagSuggestionsResponseDto')
          ..add('data', data))
        .toString();
  }
}

class TagSuggestionsResponseDtoBuilder
    implements
        Builder<TagSuggestionsResponseDto, TagSuggestionsResponseDtoBuilder> {
  _$TagSuggestionsResponseDto? _$v;

  ListBuilder<TagSuggestionDto>? _data;
  ListBuilder<TagSuggestionDto> get data =>
      _$this._data ??= new ListBuilder<TagSuggestionDto>();
  set data(ListBuilder<TagSuggestionDto>? data) => _$this._data = data;

  TagSuggestionsResponseDtoBuilder() {
    TagSuggestionsResponseDto._defaults(this);
  }

  TagSuggestionsResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagSuggestionsResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TagSuggestionsResponseDto;
  }

  @override
  void update(void Function(TagSuggestionsResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagSuggestionsResponseDto build() => _build();

  _$TagSuggestionsResponseDto _build() {
    _$TagSuggestionsResponseDto _$result;
    try {
      _$result = _$v ?? new _$TagSuggestionsResponseDto._(data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TagSuggestionsResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
