// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decision_option_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DecisionOptionDtoValueEnum _$decisionOptionDtoValueEnum_UPGRADE_REPLACE =
    const DecisionOptionDtoValueEnum._('UPGRADE_REPLACE');
const DecisionOptionDtoValueEnum _$decisionOptionDtoValueEnum_LINK_KEEP_BOTH =
    const DecisionOptionDtoValueEnum._('LINK_KEEP_BOTH');
const DecisionOptionDtoValueEnum _$decisionOptionDtoValueEnum_IGNORE_NEW =
    const DecisionOptionDtoValueEnum._('IGNORE_NEW');
const DecisionOptionDtoValueEnum
    _$decisionOptionDtoValueEnum_CONFIRM_DIFFERENT =
    const DecisionOptionDtoValueEnum._('CONFIRM_DIFFERENT');
const DecisionOptionDtoValueEnum _$decisionOptionDtoValueEnum_ACCEPT =
    const DecisionOptionDtoValueEnum._('ACCEPT');
const DecisionOptionDtoValueEnum _$decisionOptionDtoValueEnum_REJECT =
    const DecisionOptionDtoValueEnum._('REJECT');
const DecisionOptionDtoValueEnum _$decisionOptionDtoValueEnum_ACCEPT_AND_LEARN =
    const DecisionOptionDtoValueEnum._('ACCEPT_AND_LEARN');
const DecisionOptionDtoValueEnum _$decisionOptionDtoValueEnum_CHOOSE_OTHER =
    const DecisionOptionDtoValueEnum._('CHOOSE_OTHER');
const DecisionOptionDtoValueEnum _$decisionOptionDtoValueEnum_CANCEL =
    const DecisionOptionDtoValueEnum._('CANCEL');
const DecisionOptionDtoValueEnum _$decisionOptionDtoValueEnum_FIX =
    const DecisionOptionDtoValueEnum._('FIX');
const DecisionOptionDtoValueEnum _$decisionOptionDtoValueEnum_IGNORE =
    const DecisionOptionDtoValueEnum._('IGNORE');

DecisionOptionDtoValueEnum _$decisionOptionDtoValueEnumValueOf(String name) {
  switch (name) {
    case 'UPGRADE_REPLACE':
      return _$decisionOptionDtoValueEnum_UPGRADE_REPLACE;
    case 'LINK_KEEP_BOTH':
      return _$decisionOptionDtoValueEnum_LINK_KEEP_BOTH;
    case 'IGNORE_NEW':
      return _$decisionOptionDtoValueEnum_IGNORE_NEW;
    case 'CONFIRM_DIFFERENT':
      return _$decisionOptionDtoValueEnum_CONFIRM_DIFFERENT;
    case 'ACCEPT':
      return _$decisionOptionDtoValueEnum_ACCEPT;
    case 'REJECT':
      return _$decisionOptionDtoValueEnum_REJECT;
    case 'ACCEPT_AND_LEARN':
      return _$decisionOptionDtoValueEnum_ACCEPT_AND_LEARN;
    case 'CHOOSE_OTHER':
      return _$decisionOptionDtoValueEnum_CHOOSE_OTHER;
    case 'CANCEL':
      return _$decisionOptionDtoValueEnum_CANCEL;
    case 'FIX':
      return _$decisionOptionDtoValueEnum_FIX;
    case 'IGNORE':
      return _$decisionOptionDtoValueEnum_IGNORE;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<DecisionOptionDtoValueEnum> _$decisionOptionDtoValueEnumValues =
    new BuiltSet<DecisionOptionDtoValueEnum>(const <DecisionOptionDtoValueEnum>[
  _$decisionOptionDtoValueEnum_UPGRADE_REPLACE,
  _$decisionOptionDtoValueEnum_LINK_KEEP_BOTH,
  _$decisionOptionDtoValueEnum_IGNORE_NEW,
  _$decisionOptionDtoValueEnum_CONFIRM_DIFFERENT,
  _$decisionOptionDtoValueEnum_ACCEPT,
  _$decisionOptionDtoValueEnum_REJECT,
  _$decisionOptionDtoValueEnum_ACCEPT_AND_LEARN,
  _$decisionOptionDtoValueEnum_CHOOSE_OTHER,
  _$decisionOptionDtoValueEnum_CANCEL,
  _$decisionOptionDtoValueEnum_FIX,
  _$decisionOptionDtoValueEnum_IGNORE,
]);

Serializer<DecisionOptionDtoValueEnum> _$decisionOptionDtoValueEnumSerializer =
    new _$DecisionOptionDtoValueEnumSerializer();

class _$DecisionOptionDtoValueEnumSerializer
    implements PrimitiveSerializer<DecisionOptionDtoValueEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UPGRADE_REPLACE': 'UPGRADE_REPLACE',
    'LINK_KEEP_BOTH': 'LINK_KEEP_BOTH',
    'IGNORE_NEW': 'IGNORE_NEW',
    'CONFIRM_DIFFERENT': 'CONFIRM_DIFFERENT',
    'ACCEPT': 'ACCEPT',
    'REJECT': 'REJECT',
    'ACCEPT_AND_LEARN': 'ACCEPT_AND_LEARN',
    'CHOOSE_OTHER': 'CHOOSE_OTHER',
    'CANCEL': 'CANCEL',
    'FIX': 'FIX',
    'IGNORE': 'IGNORE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UPGRADE_REPLACE': 'UPGRADE_REPLACE',
    'LINK_KEEP_BOTH': 'LINK_KEEP_BOTH',
    'IGNORE_NEW': 'IGNORE_NEW',
    'CONFIRM_DIFFERENT': 'CONFIRM_DIFFERENT',
    'ACCEPT': 'ACCEPT',
    'REJECT': 'REJECT',
    'ACCEPT_AND_LEARN': 'ACCEPT_AND_LEARN',
    'CHOOSE_OTHER': 'CHOOSE_OTHER',
    'CANCEL': 'CANCEL',
    'FIX': 'FIX',
    'IGNORE': 'IGNORE',
  };

  @override
  final Iterable<Type> types = const <Type>[DecisionOptionDtoValueEnum];
  @override
  final String wireName = 'DecisionOptionDtoValueEnum';

  @override
  Object serialize(Serializers serializers, DecisionOptionDtoValueEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DecisionOptionDtoValueEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DecisionOptionDtoValueEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DecisionOptionDto extends DecisionOptionDto {
  @override
  final DecisionOptionDtoValueEnum value;
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

  DecisionOptionDtoValueEnum? _value;
  DecisionOptionDtoValueEnum? get value => _$this._value;
  set value(DecisionOptionDtoValueEnum? value) => _$this._value = value;

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
