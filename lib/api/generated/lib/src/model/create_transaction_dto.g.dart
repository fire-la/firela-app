// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transaction_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateTransactionDtoFlagEnum _$createTransactionDtoFlagEnum_star =
    const CreateTransactionDtoFlagEnum._('star');
const CreateTransactionDtoFlagEnum _$createTransactionDtoFlagEnum_exclamation =
    const CreateTransactionDtoFlagEnum._('exclamation');

CreateTransactionDtoFlagEnum _$createTransactionDtoFlagEnumValueOf(
    String name) {
  switch (name) {
    case 'star':
      return _$createTransactionDtoFlagEnum_star;
    case 'exclamation':
      return _$createTransactionDtoFlagEnum_exclamation;
    default:
      return _$createTransactionDtoFlagEnum_exclamation;
  }
}

final BuiltSet<CreateTransactionDtoFlagEnum>
    _$createTransactionDtoFlagEnumValues = new BuiltSet<
        CreateTransactionDtoFlagEnum>(const <CreateTransactionDtoFlagEnum>[
  _$createTransactionDtoFlagEnum_star,
  _$createTransactionDtoFlagEnum_exclamation,
]);

Serializer<CreateTransactionDtoFlagEnum>
    _$createTransactionDtoFlagEnumSerializer =
    new _$CreateTransactionDtoFlagEnumSerializer();

class _$CreateTransactionDtoFlagEnumSerializer
    implements PrimitiveSerializer<CreateTransactionDtoFlagEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'star': '*',
    'exclamation': '!',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '*': 'star',
    '!': 'exclamation',
  };

  @override
  final Iterable<Type> types = const <Type>[CreateTransactionDtoFlagEnum];
  @override
  final String wireName = 'CreateTransactionDtoFlagEnum';

  @override
  Object serialize(Serializers serializers, CreateTransactionDtoFlagEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateTransactionDtoFlagEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateTransactionDtoFlagEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateTransactionDto extends CreateTransactionDto {
  @override
  final String date;
  @override
  final String narration;
  @override
  final BuiltList<CreatePostingDto> postings;
  @override
  final CreateTransactionDtoFlagEnum? flag;
  @override
  final String? payee;
  @override
  final BuiltList<String>? tags;
  @override
  final BuiltList<String>? links;
  @override
  final JsonObject? meta;
  @override
  final String? idempotencyKey;
  @override
  final bool? autoCreateAccounts;

  factory _$CreateTransactionDto(
          [void Function(CreateTransactionDtoBuilder)? updates]) =>
      (new CreateTransactionDtoBuilder()..update(updates))._build();

  _$CreateTransactionDto._(
      {required this.date,
      required this.narration,
      required this.postings,
      this.flag,
      this.payee,
      this.tags,
      this.links,
      this.meta,
      this.idempotencyKey,
      this.autoCreateAccounts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        date, r'CreateTransactionDto', 'date');
    BuiltValueNullFieldError.checkNotNull(
        narration, r'CreateTransactionDto', 'narration');
    BuiltValueNullFieldError.checkNotNull(
        postings, r'CreateTransactionDto', 'postings');
  }

  @override
  CreateTransactionDto rebuild(
          void Function(CreateTransactionDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransactionDtoBuilder toBuilder() =>
      new CreateTransactionDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransactionDto &&
        date == other.date &&
        narration == other.narration &&
        postings == other.postings &&
        flag == other.flag &&
        payee == other.payee &&
        tags == other.tags &&
        links == other.links &&
        meta == other.meta &&
        idempotencyKey == other.idempotencyKey &&
        autoCreateAccounts == other.autoCreateAccounts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, narration.hashCode);
    _$hash = $jc(_$hash, postings.hashCode);
    _$hash = $jc(_$hash, flag.hashCode);
    _$hash = $jc(_$hash, payee.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jc(_$hash, idempotencyKey.hashCode);
    _$hash = $jc(_$hash, autoCreateAccounts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateTransactionDto')
          ..add('date', date)
          ..add('narration', narration)
          ..add('postings', postings)
          ..add('flag', flag)
          ..add('payee', payee)
          ..add('tags', tags)
          ..add('links', links)
          ..add('meta', meta)
          ..add('idempotencyKey', idempotencyKey)
          ..add('autoCreateAccounts', autoCreateAccounts))
        .toString();
  }
}

class CreateTransactionDtoBuilder
    implements Builder<CreateTransactionDto, CreateTransactionDtoBuilder> {
  _$CreateTransactionDto? _$v;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _narration;
  String? get narration => _$this._narration;
  set narration(String? narration) => _$this._narration = narration;

  ListBuilder<CreatePostingDto>? _postings;
  ListBuilder<CreatePostingDto> get postings =>
      _$this._postings ??= new ListBuilder<CreatePostingDto>();
  set postings(ListBuilder<CreatePostingDto>? postings) =>
      _$this._postings = postings;

  CreateTransactionDtoFlagEnum? _flag;
  CreateTransactionDtoFlagEnum? get flag => _$this._flag;
  set flag(CreateTransactionDtoFlagEnum? flag) => _$this._flag = flag;

  String? _payee;
  String? get payee => _$this._payee;
  set payee(String? payee) => _$this._payee = payee;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  ListBuilder<String>? _links;
  ListBuilder<String> get links => _$this._links ??= new ListBuilder<String>();
  set links(ListBuilder<String>? links) => _$this._links = links;

  JsonObject? _meta;
  JsonObject? get meta => _$this._meta;
  set meta(JsonObject? meta) => _$this._meta = meta;

  String? _idempotencyKey;
  String? get idempotencyKey => _$this._idempotencyKey;
  set idempotencyKey(String? idempotencyKey) =>
      _$this._idempotencyKey = idempotencyKey;

  bool? _autoCreateAccounts;
  bool? get autoCreateAccounts => _$this._autoCreateAccounts;
  set autoCreateAccounts(bool? autoCreateAccounts) =>
      _$this._autoCreateAccounts = autoCreateAccounts;

  CreateTransactionDtoBuilder() {
    CreateTransactionDto._defaults(this);
  }

  CreateTransactionDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _narration = $v.narration;
      _postings = $v.postings.toBuilder();
      _flag = $v.flag;
      _payee = $v.payee;
      _tags = $v.tags?.toBuilder();
      _links = $v.links?.toBuilder();
      _meta = $v.meta;
      _idempotencyKey = $v.idempotencyKey;
      _autoCreateAccounts = $v.autoCreateAccounts;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransactionDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransactionDto;
  }

  @override
  void update(void Function(CreateTransactionDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransactionDto build() => _build();

  _$CreateTransactionDto _build() {
    _$CreateTransactionDto _$result;
    try {
      _$result = _$v ??
          new _$CreateTransactionDto._(
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'CreateTransactionDto', 'date'),
              narration: BuiltValueNullFieldError.checkNotNull(
                  narration, r'CreateTransactionDto', 'narration'),
              postings: postings.build(),
              flag: flag,
              payee: payee,
              tags: _tags?.build(),
              links: _links?.build(),
              meta: meta,
              idempotencyKey: idempotencyKey,
              autoCreateAccounts: autoCreateAccounts);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postings';
        postings.build();

        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTransactionDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
