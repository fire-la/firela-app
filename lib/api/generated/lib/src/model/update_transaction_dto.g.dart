// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_transaction_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UpdateTransactionDtoFlagEnum _$updateTransactionDtoFlagEnum_CLEARED =
    const UpdateTransactionDtoFlagEnum._('CLEARED');
const UpdateTransactionDtoFlagEnum _$updateTransactionDtoFlagEnum_PENDING =
    const UpdateTransactionDtoFlagEnum._('PENDING');
const UpdateTransactionDtoFlagEnum _$updateTransactionDtoFlagEnum_PADDING =
    const UpdateTransactionDtoFlagEnum._('PADDING');
const UpdateTransactionDtoFlagEnum _$updateTransactionDtoFlagEnum_SUMMARIZE =
    const UpdateTransactionDtoFlagEnum._('SUMMARIZE');
const UpdateTransactionDtoFlagEnum _$updateTransactionDtoFlagEnum_TRANSFER =
    const UpdateTransactionDtoFlagEnum._('TRANSFER');
const UpdateTransactionDtoFlagEnum _$updateTransactionDtoFlagEnum_CONVERSIONS =
    const UpdateTransactionDtoFlagEnum._('CONVERSIONS');

UpdateTransactionDtoFlagEnum _$updateTransactionDtoFlagEnumValueOf(
    String name) {
  switch (name) {
    case 'CLEARED':
      return _$updateTransactionDtoFlagEnum_CLEARED;
    case 'PENDING':
      return _$updateTransactionDtoFlagEnum_PENDING;
    case 'PADDING':
      return _$updateTransactionDtoFlagEnum_PADDING;
    case 'SUMMARIZE':
      return _$updateTransactionDtoFlagEnum_SUMMARIZE;
    case 'TRANSFER':
      return _$updateTransactionDtoFlagEnum_TRANSFER;
    case 'CONVERSIONS':
      return _$updateTransactionDtoFlagEnum_CONVERSIONS;
    default:
      return _$updateTransactionDtoFlagEnum_CONVERSIONS;
  }
}

final BuiltSet<UpdateTransactionDtoFlagEnum>
    _$updateTransactionDtoFlagEnumValues = new BuiltSet<
        UpdateTransactionDtoFlagEnum>(const <UpdateTransactionDtoFlagEnum>[
  _$updateTransactionDtoFlagEnum_CLEARED,
  _$updateTransactionDtoFlagEnum_PENDING,
  _$updateTransactionDtoFlagEnum_PADDING,
  _$updateTransactionDtoFlagEnum_SUMMARIZE,
  _$updateTransactionDtoFlagEnum_TRANSFER,
  _$updateTransactionDtoFlagEnum_CONVERSIONS,
]);

Serializer<UpdateTransactionDtoFlagEnum>
    _$updateTransactionDtoFlagEnumSerializer =
    new _$UpdateTransactionDtoFlagEnumSerializer();

class _$UpdateTransactionDtoFlagEnumSerializer
    implements PrimitiveSerializer<UpdateTransactionDtoFlagEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CLEARED': 'CLEARED',
    'PENDING': 'PENDING',
    'PADDING': 'PADDING',
    'SUMMARIZE': 'SUMMARIZE',
    'TRANSFER': 'TRANSFER',
    'CONVERSIONS': 'CONVERSIONS',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CLEARED': 'CLEARED',
    'PENDING': 'PENDING',
    'PADDING': 'PADDING',
    'SUMMARIZE': 'SUMMARIZE',
    'TRANSFER': 'TRANSFER',
    'CONVERSIONS': 'CONVERSIONS',
  };

  @override
  final Iterable<Type> types = const <Type>[UpdateTransactionDtoFlagEnum];
  @override
  final String wireName = 'UpdateTransactionDtoFlagEnum';

  @override
  Object serialize(Serializers serializers, UpdateTransactionDtoFlagEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UpdateTransactionDtoFlagEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UpdateTransactionDtoFlagEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UpdateTransactionDto extends UpdateTransactionDto {
  @override
  final UpdateTransactionDtoFlagEnum? flag;
  @override
  final String? payee;
  @override
  final String? narration;
  @override
  final BuiltList<String>? tags;
  @override
  final BuiltList<String>? links;
  @override
  final JsonObject? meta;

  factory _$UpdateTransactionDto(
          [void Function(UpdateTransactionDtoBuilder)? updates]) =>
      (new UpdateTransactionDtoBuilder()..update(updates))._build();

  _$UpdateTransactionDto._(
      {this.flag, this.payee, this.narration, this.tags, this.links, this.meta})
      : super._();

  @override
  UpdateTransactionDto rebuild(
          void Function(UpdateTransactionDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTransactionDtoBuilder toBuilder() =>
      new UpdateTransactionDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTransactionDto &&
        flag == other.flag &&
        payee == other.payee &&
        narration == other.narration &&
        tags == other.tags &&
        links == other.links &&
        meta == other.meta;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, flag.hashCode);
    _$hash = $jc(_$hash, payee.hashCode);
    _$hash = $jc(_$hash, narration.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateTransactionDto')
          ..add('flag', flag)
          ..add('payee', payee)
          ..add('narration', narration)
          ..add('tags', tags)
          ..add('links', links)
          ..add('meta', meta))
        .toString();
  }
}

class UpdateTransactionDtoBuilder
    implements Builder<UpdateTransactionDto, UpdateTransactionDtoBuilder> {
  _$UpdateTransactionDto? _$v;

  UpdateTransactionDtoFlagEnum? _flag;
  UpdateTransactionDtoFlagEnum? get flag => _$this._flag;
  set flag(UpdateTransactionDtoFlagEnum? flag) => _$this._flag = flag;

  String? _payee;
  String? get payee => _$this._payee;
  set payee(String? payee) => _$this._payee = payee;

  String? _narration;
  String? get narration => _$this._narration;
  set narration(String? narration) => _$this._narration = narration;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  ListBuilder<String>? _links;
  ListBuilder<String> get links => _$this._links ??= new ListBuilder<String>();
  set links(ListBuilder<String>? links) => _$this._links = links;

  JsonObject? _meta;
  JsonObject? get meta => _$this._meta;
  set meta(JsonObject? meta) => _$this._meta = meta;

  UpdateTransactionDtoBuilder() {
    UpdateTransactionDto._defaults(this);
  }

  UpdateTransactionDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _flag = $v.flag;
      _payee = $v.payee;
      _narration = $v.narration;
      _tags = $v.tags?.toBuilder();
      _links = $v.links?.toBuilder();
      _meta = $v.meta;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTransactionDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateTransactionDto;
  }

  @override
  void update(void Function(UpdateTransactionDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTransactionDto build() => _build();

  _$UpdateTransactionDto _build() {
    _$UpdateTransactionDto _$result;
    try {
      _$result = _$v ??
          new _$UpdateTransactionDto._(
              flag: flag,
              payee: payee,
              narration: narration,
              tags: _tags?.build(),
              links: _links?.build(),
              meta: meta);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateTransactionDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
