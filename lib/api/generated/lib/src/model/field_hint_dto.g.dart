// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_hint_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FieldHintDtoSignConventionEnum
    _$fieldHintDtoSignConventionEnum_negativeExpense =
    const FieldHintDtoSignConventionEnum._('negativeExpense');
const FieldHintDtoSignConventionEnum
    _$fieldHintDtoSignConventionEnum_positiveExpense =
    const FieldHintDtoSignConventionEnum._('positiveExpense');
const FieldHintDtoSignConventionEnum
    _$fieldHintDtoSignConventionEnum_separateColumns =
    const FieldHintDtoSignConventionEnum._('separateColumns');

FieldHintDtoSignConventionEnum _$fieldHintDtoSignConventionEnumValueOf(
    String name) {
  switch (name) {
    case 'negativeExpense':
      return _$fieldHintDtoSignConventionEnum_negativeExpense;
    case 'positiveExpense':
      return _$fieldHintDtoSignConventionEnum_positiveExpense;
    case 'separateColumns':
      return _$fieldHintDtoSignConventionEnum_separateColumns;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<FieldHintDtoSignConventionEnum>
    _$fieldHintDtoSignConventionEnumValues = new BuiltSet<
        FieldHintDtoSignConventionEnum>(const <FieldHintDtoSignConventionEnum>[
  _$fieldHintDtoSignConventionEnum_negativeExpense,
  _$fieldHintDtoSignConventionEnum_positiveExpense,
  _$fieldHintDtoSignConventionEnum_separateColumns,
]);

Serializer<FieldHintDtoSignConventionEnum>
    _$fieldHintDtoSignConventionEnumSerializer =
    new _$FieldHintDtoSignConventionEnumSerializer();

class _$FieldHintDtoSignConventionEnumSerializer
    implements PrimitiveSerializer<FieldHintDtoSignConventionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'negativeExpense': 'negative-expense',
    'positiveExpense': 'positive-expense',
    'separateColumns': 'separate-columns',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'negative-expense': 'negativeExpense',
    'positive-expense': 'positiveExpense',
    'separate-columns': 'separateColumns',
  };

  @override
  final Iterable<Type> types = const <Type>[FieldHintDtoSignConventionEnum];
  @override
  final String wireName = 'FieldHintDtoSignConventionEnum';

  @override
  Object serialize(
          Serializers serializers, FieldHintDtoSignConventionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FieldHintDtoSignConventionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FieldHintDtoSignConventionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FieldHintDto extends FieldHintDto {
  @override
  final String columnName;
  @override
  final String? format;
  @override
  final FieldHintDtoSignConventionEnum? signConvention;
  @override
  final String? creditColumn;
  @override
  final String? debitColumn;

  factory _$FieldHintDto([void Function(FieldHintDtoBuilder)? updates]) =>
      (new FieldHintDtoBuilder()..update(updates))._build();

  _$FieldHintDto._(
      {required this.columnName,
      this.format,
      this.signConvention,
      this.creditColumn,
      this.debitColumn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        columnName, r'FieldHintDto', 'columnName');
  }

  @override
  FieldHintDto rebuild(void Function(FieldHintDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldHintDtoBuilder toBuilder() => new FieldHintDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FieldHintDto &&
        columnName == other.columnName &&
        format == other.format &&
        signConvention == other.signConvention &&
        creditColumn == other.creditColumn &&
        debitColumn == other.debitColumn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, columnName.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, signConvention.hashCode);
    _$hash = $jc(_$hash, creditColumn.hashCode);
    _$hash = $jc(_$hash, debitColumn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FieldHintDto')
          ..add('columnName', columnName)
          ..add('format', format)
          ..add('signConvention', signConvention)
          ..add('creditColumn', creditColumn)
          ..add('debitColumn', debitColumn))
        .toString();
  }
}

class FieldHintDtoBuilder
    implements Builder<FieldHintDto, FieldHintDtoBuilder> {
  _$FieldHintDto? _$v;

  String? _columnName;
  String? get columnName => _$this._columnName;
  set columnName(String? columnName) => _$this._columnName = columnName;

  String? _format;
  String? get format => _$this._format;
  set format(String? format) => _$this._format = format;

  FieldHintDtoSignConventionEnum? _signConvention;
  FieldHintDtoSignConventionEnum? get signConvention => _$this._signConvention;
  set signConvention(FieldHintDtoSignConventionEnum? signConvention) =>
      _$this._signConvention = signConvention;

  String? _creditColumn;
  String? get creditColumn => _$this._creditColumn;
  set creditColumn(String? creditColumn) => _$this._creditColumn = creditColumn;

  String? _debitColumn;
  String? get debitColumn => _$this._debitColumn;
  set debitColumn(String? debitColumn) => _$this._debitColumn = debitColumn;

  FieldHintDtoBuilder() {
    FieldHintDto._defaults(this);
  }

  FieldHintDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _columnName = $v.columnName;
      _format = $v.format;
      _signConvention = $v.signConvention;
      _creditColumn = $v.creditColumn;
      _debitColumn = $v.debitColumn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldHintDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FieldHintDto;
  }

  @override
  void update(void Function(FieldHintDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FieldHintDto build() => _build();

  _$FieldHintDto _build() {
    final _$result = _$v ??
        new _$FieldHintDto._(
            columnName: BuiltValueNullFieldError.checkNotNull(
                columnName, r'FieldHintDto', 'columnName'),
            format: format,
            signConvention: signConvention,
            creditColumn: creditColumn,
            debitColumn: debitColumn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
