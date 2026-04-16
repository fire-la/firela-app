// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nlp_suggested_payee_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NlpSuggestedPayeeDtoSource_Enum _$nlpSuggestedPayeeDtoSourceEnum_user =
    const NlpSuggestedPayeeDtoSource_Enum._('user');
const NlpSuggestedPayeeDtoSource_Enum _$nlpSuggestedPayeeDtoSourceEnum_global =
    const NlpSuggestedPayeeDtoSource_Enum._('global');

NlpSuggestedPayeeDtoSource_Enum _$nlpSuggestedPayeeDtoSourceEnumValueOf(
    String name) {
  switch (name) {
    case 'user':
      return _$nlpSuggestedPayeeDtoSourceEnum_user;
    case 'global':
      return _$nlpSuggestedPayeeDtoSourceEnum_global;
    default:
      return _$nlpSuggestedPayeeDtoSourceEnum_global;
  }
}

final BuiltSet<NlpSuggestedPayeeDtoSource_Enum>
    _$nlpSuggestedPayeeDtoSourceEnumValues = new BuiltSet<
        NlpSuggestedPayeeDtoSource_Enum>(const <NlpSuggestedPayeeDtoSource_Enum>[
  _$nlpSuggestedPayeeDtoSourceEnum_user,
  _$nlpSuggestedPayeeDtoSourceEnum_global,
]);

Serializer<NlpSuggestedPayeeDtoSource_Enum>
    _$nlpSuggestedPayeeDtoSourceEnumSerializer =
    new _$NlpSuggestedPayeeDtoSource_EnumSerializer();

class _$NlpSuggestedPayeeDtoSource_EnumSerializer
    implements PrimitiveSerializer<NlpSuggestedPayeeDtoSource_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'user': 'user',
    'global': 'global',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'user': 'user',
    'global': 'global',
  };

  @override
  final Iterable<Type> types = const <Type>[NlpSuggestedPayeeDtoSource_Enum];
  @override
  final String wireName = 'NlpSuggestedPayeeDtoSource_Enum';

  @override
  Object serialize(
          Serializers serializers, NlpSuggestedPayeeDtoSource_Enum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NlpSuggestedPayeeDtoSource_Enum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NlpSuggestedPayeeDtoSource_Enum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

abstract mixin class NlpSuggestedPayeeDtoBuilder {
  void replace(NlpSuggestedPayeeDto other);
  void update(void Function(NlpSuggestedPayeeDtoBuilder) updates);
  String? get id;
  set id(String? id);

  String? get name;
  set name(String? name);

  String? get category;
  set category(String? category);

  NlpSuggestedPayeeDtoSource_Enum? get source_;
  set source_(NlpSuggestedPayeeDtoSource_Enum? source_);

  String? get payeeProfileId;
  set payeeProfileId(String? payeeProfileId);
}

class _$$NlpSuggestedPayeeDto extends $NlpSuggestedPayeeDto {
  @override
  final String id;
  @override
  final String name;
  @override
  final String? category;
  @override
  final NlpSuggestedPayeeDtoSource_Enum? source_;
  @override
  final String? payeeProfileId;

  factory _$$NlpSuggestedPayeeDto(
          [void Function($NlpSuggestedPayeeDtoBuilder)? updates]) =>
      (new $NlpSuggestedPayeeDtoBuilder()..update(updates))._build();

  _$$NlpSuggestedPayeeDto._(
      {required this.id,
      required this.name,
      this.category,
      this.source_,
      this.payeeProfileId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'$NlpSuggestedPayeeDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'$NlpSuggestedPayeeDto', 'name');
  }

  @override
  $NlpSuggestedPayeeDto rebuild(
          void Function($NlpSuggestedPayeeDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $NlpSuggestedPayeeDtoBuilder toBuilder() =>
      new $NlpSuggestedPayeeDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $NlpSuggestedPayeeDto &&
        id == other.id &&
        name == other.name &&
        category == other.category &&
        source_ == other.source_ &&
        payeeProfileId == other.payeeProfileId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, payeeProfileId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$NlpSuggestedPayeeDto')
          ..add('id', id)
          ..add('name', name)
          ..add('category', category)
          ..add('source_', source_)
          ..add('payeeProfileId', payeeProfileId))
        .toString();
  }
}

class $NlpSuggestedPayeeDtoBuilder
    implements
        Builder<$NlpSuggestedPayeeDto, $NlpSuggestedPayeeDtoBuilder>,
        NlpSuggestedPayeeDtoBuilder {
  _$$NlpSuggestedPayeeDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  String? _category;
  String? get category => _$this._category;
  set category(covariant String? category) => _$this._category = category;

  NlpSuggestedPayeeDtoSource_Enum? _source_;
  NlpSuggestedPayeeDtoSource_Enum? get source_ => _$this._source_;
  set source_(covariant NlpSuggestedPayeeDtoSource_Enum? source_) =>
      _$this._source_ = source_;

  String? _payeeProfileId;
  String? get payeeProfileId => _$this._payeeProfileId;
  set payeeProfileId(covariant String? payeeProfileId) =>
      _$this._payeeProfileId = payeeProfileId;

  $NlpSuggestedPayeeDtoBuilder() {
    $NlpSuggestedPayeeDto._defaults(this);
  }

  $NlpSuggestedPayeeDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _category = $v.category;
      _source_ = $v.source_;
      _payeeProfileId = $v.payeeProfileId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $NlpSuggestedPayeeDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$NlpSuggestedPayeeDto;
  }

  @override
  void update(void Function($NlpSuggestedPayeeDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $NlpSuggestedPayeeDto build() => _build();

  _$$NlpSuggestedPayeeDto _build() {
    final _$result = _$v ??
        new _$$NlpSuggestedPayeeDto._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'$NlpSuggestedPayeeDto', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'$NlpSuggestedPayeeDto', 'name'),
            category: category,
            source_: source_,
            payeeProfileId: payeeProfileId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
