// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_list_viewpoint_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TransactionListViewpointDtoTypeEnum
    _$transactionListViewpointDtoTypeEnum_category =
    const TransactionListViewpointDtoTypeEnum._('category');

TransactionListViewpointDtoTypeEnum
    _$transactionListViewpointDtoTypeEnumValueOf(String name) {
  switch (name) {
    case 'category':
      return _$transactionListViewpointDtoTypeEnum_category;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TransactionListViewpointDtoTypeEnum>
    _$transactionListViewpointDtoTypeEnumValues = new BuiltSet<
        TransactionListViewpointDtoTypeEnum>(const <TransactionListViewpointDtoTypeEnum>[
  _$transactionListViewpointDtoTypeEnum_category,
]);

const TransactionListViewpointDtoFlowEnum
    _$transactionListViewpointDtoFlowEnum_income =
    const TransactionListViewpointDtoFlowEnum._('income');
const TransactionListViewpointDtoFlowEnum
    _$transactionListViewpointDtoFlowEnum_expense =
    const TransactionListViewpointDtoFlowEnum._('expense');

TransactionListViewpointDtoFlowEnum
    _$transactionListViewpointDtoFlowEnumValueOf(String name) {
  switch (name) {
    case 'income':
      return _$transactionListViewpointDtoFlowEnum_income;
    case 'expense':
      return _$transactionListViewpointDtoFlowEnum_expense;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TransactionListViewpointDtoFlowEnum>
    _$transactionListViewpointDtoFlowEnumValues = new BuiltSet<
        TransactionListViewpointDtoFlowEnum>(const <TransactionListViewpointDtoFlowEnum>[
  _$transactionListViewpointDtoFlowEnum_income,
  _$transactionListViewpointDtoFlowEnum_expense,
]);

Serializer<TransactionListViewpointDtoTypeEnum>
    _$transactionListViewpointDtoTypeEnumSerializer =
    new _$TransactionListViewpointDtoTypeEnumSerializer();
Serializer<TransactionListViewpointDtoFlowEnum>
    _$transactionListViewpointDtoFlowEnumSerializer =
    new _$TransactionListViewpointDtoFlowEnumSerializer();

class _$TransactionListViewpointDtoTypeEnumSerializer
    implements PrimitiveSerializer<TransactionListViewpointDtoTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'category': 'category',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'category': 'category',
  };

  @override
  final Iterable<Type> types = const <Type>[
    TransactionListViewpointDtoTypeEnum
  ];
  @override
  final String wireName = 'TransactionListViewpointDtoTypeEnum';

  @override
  Object serialize(
          Serializers serializers, TransactionListViewpointDtoTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TransactionListViewpointDtoTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TransactionListViewpointDtoTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TransactionListViewpointDtoFlowEnumSerializer
    implements PrimitiveSerializer<TransactionListViewpointDtoFlowEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'income': 'income',
    'expense': 'expense',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'income': 'income',
    'expense': 'expense',
  };

  @override
  final Iterable<Type> types = const <Type>[
    TransactionListViewpointDtoFlowEnum
  ];
  @override
  final String wireName = 'TransactionListViewpointDtoFlowEnum';

  @override
  Object serialize(
          Serializers serializers, TransactionListViewpointDtoFlowEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TransactionListViewpointDtoFlowEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TransactionListViewpointDtoFlowEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TransactionListViewpointDto extends TransactionListViewpointDto {
  @override
  final TransactionListViewpointDtoTypeEnum type;
  @override
  final TransactionListViewpointDtoFlowEnum flow;

  factory _$TransactionListViewpointDto(
          [void Function(TransactionListViewpointDtoBuilder)? updates]) =>
      (new TransactionListViewpointDtoBuilder()..update(updates))._build();

  _$TransactionListViewpointDto._({required this.type, required this.flow})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        type, r'TransactionListViewpointDto', 'type');
    BuiltValueNullFieldError.checkNotNull(
        flow, r'TransactionListViewpointDto', 'flow');
  }

  @override
  TransactionListViewpointDto rebuild(
          void Function(TransactionListViewpointDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionListViewpointDtoBuilder toBuilder() =>
      new TransactionListViewpointDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionListViewpointDto &&
        type == other.type &&
        flow == other.flow;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, flow.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransactionListViewpointDto')
          ..add('type', type)
          ..add('flow', flow))
        .toString();
  }
}

class TransactionListViewpointDtoBuilder
    implements
        Builder<TransactionListViewpointDto,
            TransactionListViewpointDtoBuilder> {
  _$TransactionListViewpointDto? _$v;

  TransactionListViewpointDtoTypeEnum? _type;
  TransactionListViewpointDtoTypeEnum? get type => _$this._type;
  set type(TransactionListViewpointDtoTypeEnum? type) => _$this._type = type;

  TransactionListViewpointDtoFlowEnum? _flow;
  TransactionListViewpointDtoFlowEnum? get flow => _$this._flow;
  set flow(TransactionListViewpointDtoFlowEnum? flow) => _$this._flow = flow;

  TransactionListViewpointDtoBuilder() {
    TransactionListViewpointDto._defaults(this);
  }

  TransactionListViewpointDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _flow = $v.flow;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionListViewpointDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionListViewpointDto;
  }

  @override
  void update(void Function(TransactionListViewpointDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionListViewpointDto build() => _build();

  _$TransactionListViewpointDto _build() {
    final _$result = _$v ??
        new _$TransactionListViewpointDto._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'TransactionListViewpointDto', 'type'),
            flow: BuiltValueNullFieldError.checkNotNull(
                flow, r'TransactionListViewpointDto', 'flow'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
