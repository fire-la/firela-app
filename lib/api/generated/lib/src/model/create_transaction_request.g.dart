// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transaction_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateTransactionRequestFlagEnum _$createTransactionRequestFlagEnum_star =
    const CreateTransactionRequestFlagEnum._('star');
const CreateTransactionRequestFlagEnum
    _$createTransactionRequestFlagEnum_exclamation =
    const CreateTransactionRequestFlagEnum._('exclamation');

CreateTransactionRequestFlagEnum _$createTransactionRequestFlagEnumValueOf(
    String name) {
  switch (name) {
    case 'star':
      return _$createTransactionRequestFlagEnum_star;
    case 'exclamation':
      return _$createTransactionRequestFlagEnum_exclamation;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CreateTransactionRequestFlagEnum>
    _$createTransactionRequestFlagEnumValues = new BuiltSet<
        CreateTransactionRequestFlagEnum>(const <CreateTransactionRequestFlagEnum>[
  _$createTransactionRequestFlagEnum_star,
  _$createTransactionRequestFlagEnum_exclamation,
]);

Serializer<CreateTransactionRequestFlagEnum>
    _$createTransactionRequestFlagEnumSerializer =
    new _$CreateTransactionRequestFlagEnumSerializer();

class _$CreateTransactionRequestFlagEnumSerializer
    implements PrimitiveSerializer<CreateTransactionRequestFlagEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'star': '*',
    'exclamation': '!',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '*': 'star',
    '!': 'exclamation',
  };

  @override
  final Iterable<Type> types = const <Type>[CreateTransactionRequestFlagEnum];
  @override
  final String wireName = 'CreateTransactionRequestFlagEnum';

  @override
  Object serialize(
          Serializers serializers, CreateTransactionRequestFlagEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateTransactionRequestFlagEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateTransactionRequestFlagEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateTransactionRequest extends CreateTransactionRequest {
  @override
  final Date date;
  @override
  final String narration;
  @override
  final BuiltList<CreatePostingRequest> postings;
  @override
  final CreateTransactionRequestFlagEnum? flag;
  @override
  final String? payee;
  @override
  final BuiltList<String>? tags;
  @override
  final BuiltList<String>? links;
  @override
  final BuiltMap<String, JsonObject?>? meta;
  @override
  final String? idempotencyKey;

  factory _$CreateTransactionRequest(
          [void Function(CreateTransactionRequestBuilder)? updates]) =>
      (new CreateTransactionRequestBuilder()..update(updates))._build();

  _$CreateTransactionRequest._(
      {required this.date,
      required this.narration,
      required this.postings,
      this.flag,
      this.payee,
      this.tags,
      this.links,
      this.meta,
      this.idempotencyKey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        date, r'CreateTransactionRequest', 'date');
    BuiltValueNullFieldError.checkNotNull(
        narration, r'CreateTransactionRequest', 'narration');
    BuiltValueNullFieldError.checkNotNull(
        postings, r'CreateTransactionRequest', 'postings');
  }

  @override
  CreateTransactionRequest rebuild(
          void Function(CreateTransactionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransactionRequestBuilder toBuilder() =>
      new CreateTransactionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransactionRequest &&
        date == other.date &&
        narration == other.narration &&
        postings == other.postings &&
        flag == other.flag &&
        payee == other.payee &&
        tags == other.tags &&
        links == other.links &&
        meta == other.meta &&
        idempotencyKey == other.idempotencyKey;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateTransactionRequest')
          ..add('date', date)
          ..add('narration', narration)
          ..add('postings', postings)
          ..add('flag', flag)
          ..add('payee', payee)
          ..add('tags', tags)
          ..add('links', links)
          ..add('meta', meta)
          ..add('idempotencyKey', idempotencyKey))
        .toString();
  }
}

class CreateTransactionRequestBuilder
    implements
        Builder<CreateTransactionRequest, CreateTransactionRequestBuilder> {
  _$CreateTransactionRequest? _$v;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  String? _narration;
  String? get narration => _$this._narration;
  set narration(String? narration) => _$this._narration = narration;

  ListBuilder<CreatePostingRequest>? _postings;
  ListBuilder<CreatePostingRequest> get postings =>
      _$this._postings ??= new ListBuilder<CreatePostingRequest>();
  set postings(ListBuilder<CreatePostingRequest>? postings) =>
      _$this._postings = postings;

  CreateTransactionRequestFlagEnum? _flag;
  CreateTransactionRequestFlagEnum? get flag => _$this._flag;
  set flag(CreateTransactionRequestFlagEnum? flag) => _$this._flag = flag;

  String? _payee;
  String? get payee => _$this._payee;
  set payee(String? payee) => _$this._payee = payee;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  ListBuilder<String>? _links;
  ListBuilder<String> get links => _$this._links ??= new ListBuilder<String>();
  set links(ListBuilder<String>? links) => _$this._links = links;

  MapBuilder<String, JsonObject?>? _meta;
  MapBuilder<String, JsonObject?> get meta =>
      _$this._meta ??= new MapBuilder<String, JsonObject?>();
  set meta(MapBuilder<String, JsonObject?>? meta) => _$this._meta = meta;

  String? _idempotencyKey;
  String? get idempotencyKey => _$this._idempotencyKey;
  set idempotencyKey(String? idempotencyKey) =>
      _$this._idempotencyKey = idempotencyKey;

  CreateTransactionRequestBuilder() {
    CreateTransactionRequest._defaults(this);
  }

  CreateTransactionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _narration = $v.narration;
      _postings = $v.postings.toBuilder();
      _flag = $v.flag;
      _payee = $v.payee;
      _tags = $v.tags?.toBuilder();
      _links = $v.links?.toBuilder();
      _meta = $v.meta?.toBuilder();
      _idempotencyKey = $v.idempotencyKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransactionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransactionRequest;
  }

  @override
  void update(void Function(CreateTransactionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransactionRequest build() => _build();

  _$CreateTransactionRequest _build() {
    _$CreateTransactionRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateTransactionRequest._(
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'CreateTransactionRequest', 'date'),
              narration: BuiltValueNullFieldError.checkNotNull(
                  narration, r'CreateTransactionRequest', 'narration'),
              postings: postings.build(),
              flag: flag,
              payee: payee,
              tags: _tags?.build(),
              links: _links?.build(),
              meta: _meta?.build(),
              idempotencyKey: idempotencyKey);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postings';
        postings.build();

        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'links';
        _links?.build();
        _$failedField = 'meta';
        _meta?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTransactionRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
