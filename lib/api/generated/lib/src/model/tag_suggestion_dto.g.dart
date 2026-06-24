// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_suggestion_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagSuggestionDto extends TagSuggestionDto {
  @override
  final String tag;
  @override
  final num count;

  factory _$TagSuggestionDto(
          [void Function(TagSuggestionDtoBuilder)? updates]) =>
      (new TagSuggestionDtoBuilder()..update(updates))._build();

  _$TagSuggestionDto._({required this.tag, required this.count}) : super._() {
    BuiltValueNullFieldError.checkNotNull(tag, r'TagSuggestionDto', 'tag');
    BuiltValueNullFieldError.checkNotNull(count, r'TagSuggestionDto', 'count');
  }

  @override
  TagSuggestionDto rebuild(void Function(TagSuggestionDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagSuggestionDtoBuilder toBuilder() =>
      new TagSuggestionDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagSuggestionDto &&
        tag == other.tag &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tag.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TagSuggestionDto')
          ..add('tag', tag)
          ..add('count', count))
        .toString();
  }
}

class TagSuggestionDtoBuilder
    implements Builder<TagSuggestionDto, TagSuggestionDtoBuilder> {
  _$TagSuggestionDto? _$v;

  String? _tag;
  String? get tag => _$this._tag;
  set tag(String? tag) => _$this._tag = tag;

  num? _count;
  num? get count => _$this._count;
  set count(num? count) => _$this._count = count;

  TagSuggestionDtoBuilder() {
    TagSuggestionDto._defaults(this);
  }

  TagSuggestionDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tag = $v.tag;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagSuggestionDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TagSuggestionDto;
  }

  @override
  void update(void Function(TagSuggestionDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagSuggestionDto build() => _build();

  _$TagSuggestionDto _build() {
    final _$result = _$v ??
        new _$TagSuggestionDto._(
            tag: BuiltValueNullFieldError.checkNotNull(
                tag, r'TagSuggestionDto', 'tag'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'TagSuggestionDto', 'count'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
