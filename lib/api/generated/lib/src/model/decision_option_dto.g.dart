// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decision_option_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DecisionOptionDto extends DecisionOptionDto {
  @override
  final String value;
  @override
  final String labelKey;
  @override
  final String? descriptionKey;
  @override
  final bool? recommended;

  factory _$DecisionOptionDto(
          [void Function(DecisionOptionDtoBuilder)? updates]) =>
      (new DecisionOptionDtoBuilder()..update(updates))._build();

  _$DecisionOptionDto._(
      {required this.value,
      required this.labelKey,
      this.descriptionKey,
      this.recommended})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'DecisionOptionDto', 'value');
    BuiltValueNullFieldError.checkNotNull(
        labelKey, r'DecisionOptionDto', 'labelKey');
  }

  @override
  DecisionOptionDto rebuild(void Function(DecisionOptionDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DecisionOptionDtoBuilder toBuilder() =>
      new DecisionOptionDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DecisionOptionDto &&
        value == other.value &&
        labelKey == other.labelKey &&
        descriptionKey == other.descriptionKey &&
        recommended == other.recommended;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, labelKey.hashCode);
    _$hash = $jc(_$hash, descriptionKey.hashCode);
    _$hash = $jc(_$hash, recommended.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DecisionOptionDto')
          ..add('value', value)
          ..add('labelKey', labelKey)
          ..add('descriptionKey', descriptionKey)
          ..add('recommended', recommended))
        .toString();
  }
}

class DecisionOptionDtoBuilder
    implements Builder<DecisionOptionDto, DecisionOptionDtoBuilder> {
  _$DecisionOptionDto? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  String? _labelKey;
  String? get labelKey => _$this._labelKey;
  set labelKey(String? labelKey) => _$this._labelKey = labelKey;

  String? _descriptionKey;
  String? get descriptionKey => _$this._descriptionKey;
  set descriptionKey(String? descriptionKey) =>
      _$this._descriptionKey = descriptionKey;

  bool? _recommended;
  bool? get recommended => _$this._recommended;
  set recommended(bool? recommended) => _$this._recommended = recommended;

  DecisionOptionDtoBuilder() {
    DecisionOptionDto._defaults(this);
  }

  DecisionOptionDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _labelKey = $v.labelKey;
      _descriptionKey = $v.descriptionKey;
      _recommended = $v.recommended;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DecisionOptionDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DecisionOptionDto;
  }

  @override
  void update(void Function(DecisionOptionDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DecisionOptionDto build() => _build();

  _$DecisionOptionDto _build() {
    final _$result = _$v ??
        new _$DecisionOptionDto._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'DecisionOptionDto', 'value'),
            labelKey: BuiltValueNullFieldError.checkNotNull(
                labelKey, r'DecisionOptionDto', 'labelKey'),
            descriptionKey: descriptionKey,
            recommended: recommended);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
