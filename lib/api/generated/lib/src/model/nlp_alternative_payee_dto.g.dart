// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nlp_alternative_payee_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NlpAlternativePayeeDto extends NlpAlternativePayeeDto {
  @override
  final String id;
  @override
  final String name;
  @override
  final num similarity;

  factory _$NlpAlternativePayeeDto(
          [void Function(NlpAlternativePayeeDtoBuilder)? updates]) =>
      (new NlpAlternativePayeeDtoBuilder()..update(updates))._build();

  _$NlpAlternativePayeeDto._(
      {required this.id, required this.name, required this.similarity})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'NlpAlternativePayeeDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'NlpAlternativePayeeDto', 'name');
    BuiltValueNullFieldError.checkNotNull(
        similarity, r'NlpAlternativePayeeDto', 'similarity');
  }

  @override
  NlpAlternativePayeeDto rebuild(
          void Function(NlpAlternativePayeeDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NlpAlternativePayeeDtoBuilder toBuilder() =>
      new NlpAlternativePayeeDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NlpAlternativePayeeDto &&
        id == other.id &&
        name == other.name &&
        similarity == other.similarity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, similarity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NlpAlternativePayeeDto')
          ..add('id', id)
          ..add('name', name)
          ..add('similarity', similarity))
        .toString();
  }
}

class NlpAlternativePayeeDtoBuilder
    implements Builder<NlpAlternativePayeeDto, NlpAlternativePayeeDtoBuilder> {
  _$NlpAlternativePayeeDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  num? _similarity;
  num? get similarity => _$this._similarity;
  set similarity(num? similarity) => _$this._similarity = similarity;

  NlpAlternativePayeeDtoBuilder() {
    NlpAlternativePayeeDto._defaults(this);
  }

  NlpAlternativePayeeDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _similarity = $v.similarity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NlpAlternativePayeeDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NlpAlternativePayeeDto;
  }

  @override
  void update(void Function(NlpAlternativePayeeDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NlpAlternativePayeeDto build() => _build();

  _$NlpAlternativePayeeDto _build() {
    final _$result = _$v ??
        new _$NlpAlternativePayeeDto._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'NlpAlternativePayeeDto', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'NlpAlternativePayeeDto', 'name'),
            similarity: BuiltValueNullFieldError.checkNotNull(
                similarity, r'NlpAlternativePayeeDto', 'similarity'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
