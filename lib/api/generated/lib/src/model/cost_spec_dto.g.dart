// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cost_spec_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CostSpecDtoModeEnum _$costSpecDtoModeEnum_perUnit =
    const CostSpecDtoModeEnum._('perUnit');
const CostSpecDtoModeEnum _$costSpecDtoModeEnum_total =
    const CostSpecDtoModeEnum._('total');
const CostSpecDtoModeEnum _$costSpecDtoModeEnum_date =
    const CostSpecDtoModeEnum._('date');
const CostSpecDtoModeEnum _$costSpecDtoModeEnum_label =
    const CostSpecDtoModeEnum._('label');
const CostSpecDtoModeEnum _$costSpecDtoModeEnum_auto =
    const CostSpecDtoModeEnum._('auto');

CostSpecDtoModeEnum _$costSpecDtoModeEnumValueOf(String name) {
  switch (name) {
    case 'perUnit':
      return _$costSpecDtoModeEnum_perUnit;
    case 'total':
      return _$costSpecDtoModeEnum_total;
    case 'date':
      return _$costSpecDtoModeEnum_date;
    case 'label':
      return _$costSpecDtoModeEnum_label;
    case 'auto':
      return _$costSpecDtoModeEnum_auto;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CostSpecDtoModeEnum> _$costSpecDtoModeEnumValues =
    new BuiltSet<CostSpecDtoModeEnum>(const <CostSpecDtoModeEnum>[
  _$costSpecDtoModeEnum_perUnit,
  _$costSpecDtoModeEnum_total,
  _$costSpecDtoModeEnum_date,
  _$costSpecDtoModeEnum_label,
  _$costSpecDtoModeEnum_auto,
]);

Serializer<CostSpecDtoModeEnum> _$costSpecDtoModeEnumSerializer =
    new _$CostSpecDtoModeEnumSerializer();

class _$CostSpecDtoModeEnumSerializer
    implements PrimitiveSerializer<CostSpecDtoModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'perUnit': 'per-unit',
    'total': 'total',
    'date': 'date',
    'label': 'label',
    'auto': 'auto',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'per-unit': 'perUnit',
    'total': 'total',
    'date': 'date',
    'label': 'label',
    'auto': 'auto',
  };

  @override
  final Iterable<Type> types = const <Type>[CostSpecDtoModeEnum];
  @override
  final String wireName = 'CostSpecDtoModeEnum';

  @override
  Object serialize(Serializers serializers, CostSpecDtoModeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CostSpecDtoModeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CostSpecDtoModeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CostSpecDto extends CostSpecDto {
  @override
  final CostSpecDtoModeEnum mode;
  @override
  final String? numberPerUnit;
  @override
  final String? totalNumber;
  @override
  final String currency;
  @override
  final String? date;
  @override
  final String? label;
  @override
  final bool? merge;

  factory _$CostSpecDto([void Function(CostSpecDtoBuilder)? updates]) =>
      (new CostSpecDtoBuilder()..update(updates))._build();

  _$CostSpecDto._(
      {required this.mode,
      this.numberPerUnit,
      this.totalNumber,
      required this.currency,
      this.date,
      this.label,
      this.merge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(mode, r'CostSpecDto', 'mode');
    BuiltValueNullFieldError.checkNotNull(currency, r'CostSpecDto', 'currency');
  }

  @override
  CostSpecDto rebuild(void Function(CostSpecDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CostSpecDtoBuilder toBuilder() => new CostSpecDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CostSpecDto &&
        mode == other.mode &&
        numberPerUnit == other.numberPerUnit &&
        totalNumber == other.totalNumber &&
        currency == other.currency &&
        date == other.date &&
        label == other.label &&
        merge == other.merge;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, numberPerUnit.hashCode);
    _$hash = $jc(_$hash, totalNumber.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, merge.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CostSpecDto')
          ..add('mode', mode)
          ..add('numberPerUnit', numberPerUnit)
          ..add('totalNumber', totalNumber)
          ..add('currency', currency)
          ..add('date', date)
          ..add('label', label)
          ..add('merge', merge))
        .toString();
  }
}

class CostSpecDtoBuilder implements Builder<CostSpecDto, CostSpecDtoBuilder> {
  _$CostSpecDto? _$v;

  CostSpecDtoModeEnum? _mode;
  CostSpecDtoModeEnum? get mode => _$this._mode;
  set mode(CostSpecDtoModeEnum? mode) => _$this._mode = mode;

  String? _numberPerUnit;
  String? get numberPerUnit => _$this._numberPerUnit;
  set numberPerUnit(String? numberPerUnit) =>
      _$this._numberPerUnit = numberPerUnit;

  String? _totalNumber;
  String? get totalNumber => _$this._totalNumber;
  set totalNumber(String? totalNumber) => _$this._totalNumber = totalNumber;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  bool? _merge;
  bool? get merge => _$this._merge;
  set merge(bool? merge) => _$this._merge = merge;

  CostSpecDtoBuilder() {
    CostSpecDto._defaults(this);
  }

  CostSpecDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mode = $v.mode;
      _numberPerUnit = $v.numberPerUnit;
      _totalNumber = $v.totalNumber;
      _currency = $v.currency;
      _date = $v.date;
      _label = $v.label;
      _merge = $v.merge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CostSpecDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CostSpecDto;
  }

  @override
  void update(void Function(CostSpecDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CostSpecDto build() => _build();

  _$CostSpecDto _build() {
    final _$result = _$v ??
        new _$CostSpecDto._(
            mode: BuiltValueNullFieldError.checkNotNull(
                mode, r'CostSpecDto', 'mode'),
            numberPerUnit: numberPerUnit,
            totalNumber: totalNumber,
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'CostSpecDto', 'currency'),
            date: date,
            label: label,
            merge: merge);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
