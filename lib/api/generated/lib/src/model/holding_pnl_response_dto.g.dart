// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holding_pnl_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HoldingPnlResponseDtoMethodEnum
    _$holdingPnlResponseDtoMethodEnum_average =
    const HoldingPnlResponseDtoMethodEnum._('average');
const HoldingPnlResponseDtoMethodEnum _$holdingPnlResponseDtoMethodEnum_FIFO =
    const HoldingPnlResponseDtoMethodEnum._('FIFO');

HoldingPnlResponseDtoMethodEnum _$holdingPnlResponseDtoMethodEnumValueOf(
    String name) {
  switch (name) {
    case 'average':
      return _$holdingPnlResponseDtoMethodEnum_average;
    case 'FIFO':
      return _$holdingPnlResponseDtoMethodEnum_FIFO;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<HoldingPnlResponseDtoMethodEnum>
    _$holdingPnlResponseDtoMethodEnumValues = new BuiltSet<
        HoldingPnlResponseDtoMethodEnum>(const <HoldingPnlResponseDtoMethodEnum>[
  _$holdingPnlResponseDtoMethodEnum_average,
  _$holdingPnlResponseDtoMethodEnum_FIFO,
]);

Serializer<HoldingPnlResponseDtoMethodEnum>
    _$holdingPnlResponseDtoMethodEnumSerializer =
    new _$HoldingPnlResponseDtoMethodEnumSerializer();

class _$HoldingPnlResponseDtoMethodEnumSerializer
    implements PrimitiveSerializer<HoldingPnlResponseDtoMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'average': 'average',
    'FIFO': 'FIFO',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'average': 'average',
    'FIFO': 'FIFO',
  };

  @override
  final Iterable<Type> types = const <Type>[HoldingPnlResponseDtoMethodEnum];
  @override
  final String wireName = 'HoldingPnlResponseDtoMethodEnum';

  @override
  Object serialize(
          Serializers serializers, HoldingPnlResponseDtoMethodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  HoldingPnlResponseDtoMethodEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      HoldingPnlResponseDtoMethodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$HoldingPnlResponseDto extends HoldingPnlResponseDto {
  @override
  final String asOfDate;
  @override
  final String baseCurrency;
  @override
  final HoldingPnlResponseDtoMethodEnum method;
  @override
  final BuiltList<HoldingPnlRowDto> rows;
  @override
  final BuiltList<HoldingPnlWarningDto> warnings;

  factory _$HoldingPnlResponseDto(
          [void Function(HoldingPnlResponseDtoBuilder)? updates]) =>
      (new HoldingPnlResponseDtoBuilder()..update(updates))._build();

  _$HoldingPnlResponseDto._(
      {required this.asOfDate,
      required this.baseCurrency,
      required this.method,
      required this.rows,
      required this.warnings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        asOfDate, r'HoldingPnlResponseDto', 'asOfDate');
    BuiltValueNullFieldError.checkNotNull(
        baseCurrency, r'HoldingPnlResponseDto', 'baseCurrency');
    BuiltValueNullFieldError.checkNotNull(
        method, r'HoldingPnlResponseDto', 'method');
    BuiltValueNullFieldError.checkNotNull(
        rows, r'HoldingPnlResponseDto', 'rows');
    BuiltValueNullFieldError.checkNotNull(
        warnings, r'HoldingPnlResponseDto', 'warnings');
  }

  @override
  HoldingPnlResponseDto rebuild(
          void Function(HoldingPnlResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HoldingPnlResponseDtoBuilder toBuilder() =>
      new HoldingPnlResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HoldingPnlResponseDto &&
        asOfDate == other.asOfDate &&
        baseCurrency == other.baseCurrency &&
        method == other.method &&
        rows == other.rows &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, asOfDate.hashCode);
    _$hash = $jc(_$hash, baseCurrency.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, rows.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HoldingPnlResponseDto')
          ..add('asOfDate', asOfDate)
          ..add('baseCurrency', baseCurrency)
          ..add('method', method)
          ..add('rows', rows)
          ..add('warnings', warnings))
        .toString();
  }
}

class HoldingPnlResponseDtoBuilder
    implements Builder<HoldingPnlResponseDto, HoldingPnlResponseDtoBuilder> {
  _$HoldingPnlResponseDto? _$v;

  String? _asOfDate;
  String? get asOfDate => _$this._asOfDate;
  set asOfDate(String? asOfDate) => _$this._asOfDate = asOfDate;

  String? _baseCurrency;
  String? get baseCurrency => _$this._baseCurrency;
  set baseCurrency(String? baseCurrency) => _$this._baseCurrency = baseCurrency;

  HoldingPnlResponseDtoMethodEnum? _method;
  HoldingPnlResponseDtoMethodEnum? get method => _$this._method;
  set method(HoldingPnlResponseDtoMethodEnum? method) =>
      _$this._method = method;

  ListBuilder<HoldingPnlRowDto>? _rows;
  ListBuilder<HoldingPnlRowDto> get rows =>
      _$this._rows ??= new ListBuilder<HoldingPnlRowDto>();
  set rows(ListBuilder<HoldingPnlRowDto>? rows) => _$this._rows = rows;

  ListBuilder<HoldingPnlWarningDto>? _warnings;
  ListBuilder<HoldingPnlWarningDto> get warnings =>
      _$this._warnings ??= new ListBuilder<HoldingPnlWarningDto>();
  set warnings(ListBuilder<HoldingPnlWarningDto>? warnings) =>
      _$this._warnings = warnings;

  HoldingPnlResponseDtoBuilder() {
    HoldingPnlResponseDto._defaults(this);
  }

  HoldingPnlResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _asOfDate = $v.asOfDate;
      _baseCurrency = $v.baseCurrency;
      _method = $v.method;
      _rows = $v.rows.toBuilder();
      _warnings = $v.warnings.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HoldingPnlResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HoldingPnlResponseDto;
  }

  @override
  void update(void Function(HoldingPnlResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HoldingPnlResponseDto build() => _build();

  _$HoldingPnlResponseDto _build() {
    _$HoldingPnlResponseDto _$result;
    try {
      _$result = _$v ??
          new _$HoldingPnlResponseDto._(
              asOfDate: BuiltValueNullFieldError.checkNotNull(
                  asOfDate, r'HoldingPnlResponseDto', 'asOfDate'),
              baseCurrency: BuiltValueNullFieldError.checkNotNull(
                  baseCurrency, r'HoldingPnlResponseDto', 'baseCurrency'),
              method: BuiltValueNullFieldError.checkNotNull(
                  method, r'HoldingPnlResponseDto', 'method'),
              rows: rows.build(),
              warnings: warnings.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rows';
        rows.build();
        _$failedField = 'warnings';
        warnings.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HoldingPnlResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
