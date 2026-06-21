// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_rule_from_transaction_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateRuleFromTransactionDtoFrequencyEnum
    _$createRuleFromTransactionDtoFrequencyEnum_WEEKLY =
    const CreateRuleFromTransactionDtoFrequencyEnum._('WEEKLY');
const CreateRuleFromTransactionDtoFrequencyEnum
    _$createRuleFromTransactionDtoFrequencyEnum_BIWEEKLY =
    const CreateRuleFromTransactionDtoFrequencyEnum._('BIWEEKLY');
const CreateRuleFromTransactionDtoFrequencyEnum
    _$createRuleFromTransactionDtoFrequencyEnum_MONTHLY =
    const CreateRuleFromTransactionDtoFrequencyEnum._('MONTHLY');
const CreateRuleFromTransactionDtoFrequencyEnum
    _$createRuleFromTransactionDtoFrequencyEnum_BIMONTHLY =
    const CreateRuleFromTransactionDtoFrequencyEnum._('BIMONTHLY');
const CreateRuleFromTransactionDtoFrequencyEnum
    _$createRuleFromTransactionDtoFrequencyEnum_QUARTERLY =
    const CreateRuleFromTransactionDtoFrequencyEnum._('QUARTERLY');
const CreateRuleFromTransactionDtoFrequencyEnum
    _$createRuleFromTransactionDtoFrequencyEnum_YEARLY =
    const CreateRuleFromTransactionDtoFrequencyEnum._('YEARLY');
const CreateRuleFromTransactionDtoFrequencyEnum
    _$createRuleFromTransactionDtoFrequencyEnum_CUSTOM =
    const CreateRuleFromTransactionDtoFrequencyEnum._('CUSTOM');

CreateRuleFromTransactionDtoFrequencyEnum
    _$createRuleFromTransactionDtoFrequencyEnumValueOf(String name) {
  switch (name) {
    case 'WEEKLY':
      return _$createRuleFromTransactionDtoFrequencyEnum_WEEKLY;
    case 'BIWEEKLY':
      return _$createRuleFromTransactionDtoFrequencyEnum_BIWEEKLY;
    case 'MONTHLY':
      return _$createRuleFromTransactionDtoFrequencyEnum_MONTHLY;
    case 'BIMONTHLY':
      return _$createRuleFromTransactionDtoFrequencyEnum_BIMONTHLY;
    case 'QUARTERLY':
      return _$createRuleFromTransactionDtoFrequencyEnum_QUARTERLY;
    case 'YEARLY':
      return _$createRuleFromTransactionDtoFrequencyEnum_YEARLY;
    case 'CUSTOM':
      return _$createRuleFromTransactionDtoFrequencyEnum_CUSTOM;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CreateRuleFromTransactionDtoFrequencyEnum>
    _$createRuleFromTransactionDtoFrequencyEnumValues = new BuiltSet<
        CreateRuleFromTransactionDtoFrequencyEnum>(const <CreateRuleFromTransactionDtoFrequencyEnum>[
  _$createRuleFromTransactionDtoFrequencyEnum_WEEKLY,
  _$createRuleFromTransactionDtoFrequencyEnum_BIWEEKLY,
  _$createRuleFromTransactionDtoFrequencyEnum_MONTHLY,
  _$createRuleFromTransactionDtoFrequencyEnum_BIMONTHLY,
  _$createRuleFromTransactionDtoFrequencyEnum_QUARTERLY,
  _$createRuleFromTransactionDtoFrequencyEnum_YEARLY,
  _$createRuleFromTransactionDtoFrequencyEnum_CUSTOM,
]);

Serializer<CreateRuleFromTransactionDtoFrequencyEnum>
    _$createRuleFromTransactionDtoFrequencyEnumSerializer =
    new _$CreateRuleFromTransactionDtoFrequencyEnumSerializer();

class _$CreateRuleFromTransactionDtoFrequencyEnumSerializer
    implements PrimitiveSerializer<CreateRuleFromTransactionDtoFrequencyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'WEEKLY': 'WEEKLY',
    'BIWEEKLY': 'BIWEEKLY',
    'MONTHLY': 'MONTHLY',
    'BIMONTHLY': 'BIMONTHLY',
    'QUARTERLY': 'QUARTERLY',
    'YEARLY': 'YEARLY',
    'CUSTOM': 'CUSTOM',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'WEEKLY': 'WEEKLY',
    'BIWEEKLY': 'BIWEEKLY',
    'MONTHLY': 'MONTHLY',
    'BIMONTHLY': 'BIMONTHLY',
    'QUARTERLY': 'QUARTERLY',
    'YEARLY': 'YEARLY',
    'CUSTOM': 'CUSTOM',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CreateRuleFromTransactionDtoFrequencyEnum
  ];
  @override
  final String wireName = 'CreateRuleFromTransactionDtoFrequencyEnum';

  @override
  Object serialize(Serializers serializers,
          CreateRuleFromTransactionDtoFrequencyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateRuleFromTransactionDtoFrequencyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateRuleFromTransactionDtoFrequencyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateRuleFromTransactionDto extends CreateRuleFromTransactionDto {
  @override
  final CreateRuleFromTransactionDtoFrequencyEnum frequency;
  @override
  final String? name;
  @override
  final String? icon;

  factory _$CreateRuleFromTransactionDto(
          [void Function(CreateRuleFromTransactionDtoBuilder)? updates]) =>
      (new CreateRuleFromTransactionDtoBuilder()..update(updates))._build();

  _$CreateRuleFromTransactionDto._(
      {required this.frequency, this.name, this.icon})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        frequency, r'CreateRuleFromTransactionDto', 'frequency');
  }

  @override
  CreateRuleFromTransactionDto rebuild(
          void Function(CreateRuleFromTransactionDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateRuleFromTransactionDtoBuilder toBuilder() =>
      new CreateRuleFromTransactionDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateRuleFromTransactionDto &&
        frequency == other.frequency &&
        name == other.name &&
        icon == other.icon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateRuleFromTransactionDto')
          ..add('frequency', frequency)
          ..add('name', name)
          ..add('icon', icon))
        .toString();
  }
}

class CreateRuleFromTransactionDtoBuilder
    implements
        Builder<CreateRuleFromTransactionDto,
            CreateRuleFromTransactionDtoBuilder> {
  _$CreateRuleFromTransactionDto? _$v;

  CreateRuleFromTransactionDtoFrequencyEnum? _frequency;
  CreateRuleFromTransactionDtoFrequencyEnum? get frequency => _$this._frequency;
  set frequency(CreateRuleFromTransactionDtoFrequencyEnum? frequency) =>
      _$this._frequency = frequency;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  CreateRuleFromTransactionDtoBuilder() {
    CreateRuleFromTransactionDto._defaults(this);
  }

  CreateRuleFromTransactionDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _frequency = $v.frequency;
      _name = $v.name;
      _icon = $v.icon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateRuleFromTransactionDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateRuleFromTransactionDto;
  }

  @override
  void update(void Function(CreateRuleFromTransactionDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateRuleFromTransactionDto build() => _build();

  _$CreateRuleFromTransactionDto _build() {
    final _$result = _$v ??
        new _$CreateRuleFromTransactionDto._(
            frequency: BuiltValueNullFieldError.checkNotNull(
                frequency, r'CreateRuleFromTransactionDto', 'frequency'),
            name: name,
            icon: icon);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
