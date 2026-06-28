// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'correct_transaction_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CorrectTransactionDtoFlagEnum _$correctTransactionDtoFlagEnum_star =
    const CorrectTransactionDtoFlagEnum._('star');
const CorrectTransactionDtoFlagEnum
    _$correctTransactionDtoFlagEnum_exclamation =
    const CorrectTransactionDtoFlagEnum._('exclamation');

CorrectTransactionDtoFlagEnum _$correctTransactionDtoFlagEnumValueOf(
    String name) {
  switch (name) {
    case 'star':
      return _$correctTransactionDtoFlagEnum_star;
    case 'exclamation':
      return _$correctTransactionDtoFlagEnum_exclamation;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CorrectTransactionDtoFlagEnum>
    _$correctTransactionDtoFlagEnumValues = new BuiltSet<
        CorrectTransactionDtoFlagEnum>(const <CorrectTransactionDtoFlagEnum>[
  _$correctTransactionDtoFlagEnum_star,
  _$correctTransactionDtoFlagEnum_exclamation,
]);

Serializer<CorrectTransactionDtoFlagEnum>
    _$correctTransactionDtoFlagEnumSerializer =
    new _$CorrectTransactionDtoFlagEnumSerializer();

class _$CorrectTransactionDtoFlagEnumSerializer
    implements PrimitiveSerializer<CorrectTransactionDtoFlagEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'star': '*',
    'exclamation': '!',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '*': 'star',
    '!': 'exclamation',
  };

  @override
  final Iterable<Type> types = const <Type>[CorrectTransactionDtoFlagEnum];
  @override
  final String wireName = 'CorrectTransactionDtoFlagEnum';

  @override
  Object serialize(
          Serializers serializers, CorrectTransactionDtoFlagEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CorrectTransactionDtoFlagEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CorrectTransactionDtoFlagEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CorrectTransactionDto extends CorrectTransactionDto {
  @override
  final String date;
  @override
  final CorrectTransactionDtoFlagEnum? flag;
  @override
  final String? payee;
  @override
  final String narration;
  @override
  final BuiltList<String>? tags;
  @override
  final BuiltList<String>? links;
  @override
  final BuiltList<CreatePostingDto> postings;
  @override
  final JsonObject? meta;
  @override
  final String? idempotencyKey;
  @override
  final bool? autoCreateAccounts;
  @override
  final String? correctionReason;

  factory _$CorrectTransactionDto(
          [void Function(CorrectTransactionDtoBuilder)? updates]) =>
      (new CorrectTransactionDtoBuilder()..update(updates))._build();

  _$CorrectTransactionDto._(
      {required this.date,
      this.flag,
      this.payee,
      required this.narration,
      this.tags,
      this.links,
      required this.postings,
      this.meta,
      this.idempotencyKey,
      this.autoCreateAccounts,
      this.correctionReason})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        date, r'CorrectTransactionDto', 'date');
    BuiltValueNullFieldError.checkNotNull(
        narration, r'CorrectTransactionDto', 'narration');
    BuiltValueNullFieldError.checkNotNull(
        postings, r'CorrectTransactionDto', 'postings');
  }

  @override
  CorrectTransactionDto rebuild(
          void Function(CorrectTransactionDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CorrectTransactionDtoBuilder toBuilder() =>
      new CorrectTransactionDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorrectTransactionDto &&
        date == other.date &&
        flag == other.flag &&
        payee == other.payee &&
        narration == other.narration &&
        tags == other.tags &&
        links == other.links &&
        postings == other.postings &&
        meta == other.meta &&
        idempotencyKey == other.idempotencyKey &&
        autoCreateAccounts == other.autoCreateAccounts &&
        correctionReason == other.correctionReason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, flag.hashCode);
    _$hash = $jc(_$hash, payee.hashCode);
    _$hash = $jc(_$hash, narration.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, postings.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jc(_$hash, idempotencyKey.hashCode);
    _$hash = $jc(_$hash, autoCreateAccounts.hashCode);
    _$hash = $jc(_$hash, correctionReason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CorrectTransactionDto')
          ..add('date', date)
          ..add('flag', flag)
          ..add('payee', payee)
          ..add('narration', narration)
          ..add('tags', tags)
          ..add('links', links)
          ..add('postings', postings)
          ..add('meta', meta)
          ..add('idempotencyKey', idempotencyKey)
          ..add('autoCreateAccounts', autoCreateAccounts)
          ..add('correctionReason', correctionReason))
        .toString();
  }
}

class CorrectTransactionDtoBuilder
    implements Builder<CorrectTransactionDto, CorrectTransactionDtoBuilder> {
  _$CorrectTransactionDto? _$v;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  CorrectTransactionDtoFlagEnum? _flag;
  CorrectTransactionDtoFlagEnum? get flag => _$this._flag;
  set flag(CorrectTransactionDtoFlagEnum? flag) => _$this._flag = flag;

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

  ListBuilder<CreatePostingDto>? _postings;
  ListBuilder<CreatePostingDto> get postings =>
      _$this._postings ??= new ListBuilder<CreatePostingDto>();
  set postings(ListBuilder<CreatePostingDto>? postings) =>
      _$this._postings = postings;

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

  String? _correctionReason;
  String? get correctionReason => _$this._correctionReason;
  set correctionReason(String? correctionReason) =>
      _$this._correctionReason = correctionReason;

  CorrectTransactionDtoBuilder() {
    CorrectTransactionDto._defaults(this);
  }

  CorrectTransactionDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _flag = $v.flag;
      _payee = $v.payee;
      _narration = $v.narration;
      _tags = $v.tags?.toBuilder();
      _links = $v.links?.toBuilder();
      _postings = $v.postings.toBuilder();
      _meta = $v.meta;
      _idempotencyKey = $v.idempotencyKey;
      _autoCreateAccounts = $v.autoCreateAccounts;
      _correctionReason = $v.correctionReason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorrectTransactionDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CorrectTransactionDto;
  }

  @override
  void update(void Function(CorrectTransactionDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CorrectTransactionDto build() => _build();

  _$CorrectTransactionDto _build() {
    _$CorrectTransactionDto _$result;
    try {
      _$result = _$v ??
          new _$CorrectTransactionDto._(
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'CorrectTransactionDto', 'date'),
              flag: flag,
              payee: payee,
              narration: BuiltValueNullFieldError.checkNotNull(
                  narration, r'CorrectTransactionDto', 'narration'),
              tags: _tags?.build(),
              links: _links?.build(),
              postings: postings.build(),
              meta: meta,
              idempotencyKey: idempotencyKey,
              autoCreateAccounts: autoCreateAccounts,
              correctionReason: correctionReason);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'links';
        _links?.build();
        _$failedField = 'postings';
        postings.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CorrectTransactionDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
