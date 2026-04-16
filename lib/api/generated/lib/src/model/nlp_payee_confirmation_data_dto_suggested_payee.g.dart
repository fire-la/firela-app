// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nlp_payee_confirmation_data_dto_suggested_payee.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NlpPayeeConfirmationDataDtoSuggestedPayeeSource_Enum
    _$nlpPayeeConfirmationDataDtoSuggestedPayeeSourceEnum_user =
    const NlpPayeeConfirmationDataDtoSuggestedPayeeSource_Enum._('user');
const NlpPayeeConfirmationDataDtoSuggestedPayeeSource_Enum
    _$nlpPayeeConfirmationDataDtoSuggestedPayeeSourceEnum_global =
    const NlpPayeeConfirmationDataDtoSuggestedPayeeSource_Enum._('global');

NlpPayeeConfirmationDataDtoSuggestedPayeeSource_Enum
    _$nlpPayeeConfirmationDataDtoSuggestedPayeeSourceEnumValueOf(String name) {
  switch (name) {
    case 'user':
      return _$nlpPayeeConfirmationDataDtoSuggestedPayeeSourceEnum_user;
    case 'global':
      return _$nlpPayeeConfirmationDataDtoSuggestedPayeeSourceEnum_global;
    default:
      return _$nlpPayeeConfirmationDataDtoSuggestedPayeeSourceEnum_global;
  }
}

final BuiltSet<NlpPayeeConfirmationDataDtoSuggestedPayeeSource_Enum>
    _$nlpPayeeConfirmationDataDtoSuggestedPayeeSourceEnumValues = new BuiltSet<
        NlpPayeeConfirmationDataDtoSuggestedPayeeSource_Enum>(const <NlpPayeeConfirmationDataDtoSuggestedPayeeSource_Enum>[
  _$nlpPayeeConfirmationDataDtoSuggestedPayeeSourceEnum_user,
  _$nlpPayeeConfirmationDataDtoSuggestedPayeeSourceEnum_global,
]);

Serializer<NlpPayeeConfirmationDataDtoSuggestedPayeeSource_Enum>
    _$nlpPayeeConfirmationDataDtoSuggestedPayeeSourceEnumSerializer =
    new _$NlpPayeeConfirmationDataDtoSuggestedPayeeSource_EnumSerializer();

class _$NlpPayeeConfirmationDataDtoSuggestedPayeeSource_EnumSerializer
    implements
        PrimitiveSerializer<
            NlpPayeeConfirmationDataDtoSuggestedPayeeSource_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'user': 'user',
    'global': 'global',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'user': 'user',
    'global': 'global',
  };

  @override
  final Iterable<Type> types = const <Type>[
    NlpPayeeConfirmationDataDtoSuggestedPayeeSource_Enum
  ];
  @override
  final String wireName =
      'NlpPayeeConfirmationDataDtoSuggestedPayeeSource_Enum';

  @override
  Object serialize(Serializers serializers,
          NlpPayeeConfirmationDataDtoSuggestedPayeeSource_Enum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NlpPayeeConfirmationDataDtoSuggestedPayeeSource_Enum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NlpPayeeConfirmationDataDtoSuggestedPayeeSource_Enum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NlpPayeeConfirmationDataDtoSuggestedPayee
    extends NlpPayeeConfirmationDataDtoSuggestedPayee {
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

  factory _$NlpPayeeConfirmationDataDtoSuggestedPayee(
          [void Function(NlpPayeeConfirmationDataDtoSuggestedPayeeBuilder)?
              updates]) =>
      (new NlpPayeeConfirmationDataDtoSuggestedPayeeBuilder()..update(updates))
          ._build();

  _$NlpPayeeConfirmationDataDtoSuggestedPayee._(
      {required this.id,
      required this.name,
      this.category,
      this.source_,
      this.payeeProfileId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'NlpPayeeConfirmationDataDtoSuggestedPayee', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'NlpPayeeConfirmationDataDtoSuggestedPayee', 'name');
  }

  @override
  NlpPayeeConfirmationDataDtoSuggestedPayee rebuild(
          void Function(NlpPayeeConfirmationDataDtoSuggestedPayeeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NlpPayeeConfirmationDataDtoSuggestedPayeeBuilder toBuilder() =>
      new NlpPayeeConfirmationDataDtoSuggestedPayeeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NlpPayeeConfirmationDataDtoSuggestedPayee &&
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
    return (newBuiltValueToStringHelper(
            r'NlpPayeeConfirmationDataDtoSuggestedPayee')
          ..add('id', id)
          ..add('name', name)
          ..add('category', category)
          ..add('source_', source_)
          ..add('payeeProfileId', payeeProfileId))
        .toString();
  }
}

class NlpPayeeConfirmationDataDtoSuggestedPayeeBuilder
    implements
        Builder<NlpPayeeConfirmationDataDtoSuggestedPayee,
            NlpPayeeConfirmationDataDtoSuggestedPayeeBuilder>,
        NlpSuggestedPayeeDtoBuilder {
  _$NlpPayeeConfirmationDataDtoSuggestedPayee? _$v;

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

  NlpPayeeConfirmationDataDtoSuggestedPayeeBuilder() {
    NlpPayeeConfirmationDataDtoSuggestedPayee._defaults(this);
  }

  NlpPayeeConfirmationDataDtoSuggestedPayeeBuilder get _$this {
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
  void replace(covariant NlpPayeeConfirmationDataDtoSuggestedPayee other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NlpPayeeConfirmationDataDtoSuggestedPayee;
  }

  @override
  void update(
      void Function(NlpPayeeConfirmationDataDtoSuggestedPayeeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  NlpPayeeConfirmationDataDtoSuggestedPayee build() => _build();

  _$NlpPayeeConfirmationDataDtoSuggestedPayee _build() {
    final _$result = _$v ??
        new _$NlpPayeeConfirmationDataDtoSuggestedPayee._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'NlpPayeeConfirmationDataDtoSuggestedPayee', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'NlpPayeeConfirmationDataDtoSuggestedPayee', 'name'),
            category: category,
            source_: source_,
            payeeProfileId: payeeProfileId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
