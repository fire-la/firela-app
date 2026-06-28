// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resolve_review_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ResolveReviewDtoActionEnum _$resolveReviewDtoActionEnum_UPGRADE_REPLACE =
    const ResolveReviewDtoActionEnum._('UPGRADE_REPLACE');
const ResolveReviewDtoActionEnum _$resolveReviewDtoActionEnum_LINK_KEEP_BOTH =
    const ResolveReviewDtoActionEnum._('LINK_KEEP_BOTH');
const ResolveReviewDtoActionEnum _$resolveReviewDtoActionEnum_IGNORE_NEW =
    const ResolveReviewDtoActionEnum._('IGNORE_NEW');
const ResolveReviewDtoActionEnum
    _$resolveReviewDtoActionEnum_CONFIRM_DIFFERENT =
    const ResolveReviewDtoActionEnum._('CONFIRM_DIFFERENT');
const ResolveReviewDtoActionEnum _$resolveReviewDtoActionEnum_ACCEPT =
    const ResolveReviewDtoActionEnum._('ACCEPT');
const ResolveReviewDtoActionEnum _$resolveReviewDtoActionEnum_REJECT =
    const ResolveReviewDtoActionEnum._('REJECT');
const ResolveReviewDtoActionEnum _$resolveReviewDtoActionEnum_ACCEPT_AND_LEARN =
    const ResolveReviewDtoActionEnum._('ACCEPT_AND_LEARN');
const ResolveReviewDtoActionEnum _$resolveReviewDtoActionEnum_CHOOSE_OTHER =
    const ResolveReviewDtoActionEnum._('CHOOSE_OTHER');
const ResolveReviewDtoActionEnum _$resolveReviewDtoActionEnum_CANCEL =
    const ResolveReviewDtoActionEnum._('CANCEL');
const ResolveReviewDtoActionEnum _$resolveReviewDtoActionEnum_FIX =
    const ResolveReviewDtoActionEnum._('FIX');
const ResolveReviewDtoActionEnum _$resolveReviewDtoActionEnum_IGNORE =
    const ResolveReviewDtoActionEnum._('IGNORE');

ResolveReviewDtoActionEnum _$resolveReviewDtoActionEnumValueOf(String name) {
  switch (name) {
    case 'UPGRADE_REPLACE':
      return _$resolveReviewDtoActionEnum_UPGRADE_REPLACE;
    case 'LINK_KEEP_BOTH':
      return _$resolveReviewDtoActionEnum_LINK_KEEP_BOTH;
    case 'IGNORE_NEW':
      return _$resolveReviewDtoActionEnum_IGNORE_NEW;
    case 'CONFIRM_DIFFERENT':
      return _$resolveReviewDtoActionEnum_CONFIRM_DIFFERENT;
    case 'ACCEPT':
      return _$resolveReviewDtoActionEnum_ACCEPT;
    case 'REJECT':
      return _$resolveReviewDtoActionEnum_REJECT;
    case 'ACCEPT_AND_LEARN':
      return _$resolveReviewDtoActionEnum_ACCEPT_AND_LEARN;
    case 'CHOOSE_OTHER':
      return _$resolveReviewDtoActionEnum_CHOOSE_OTHER;
    case 'CANCEL':
      return _$resolveReviewDtoActionEnum_CANCEL;
    case 'FIX':
      return _$resolveReviewDtoActionEnum_FIX;
    case 'IGNORE':
      return _$resolveReviewDtoActionEnum_IGNORE;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ResolveReviewDtoActionEnum> _$resolveReviewDtoActionEnumValues =
    new BuiltSet<ResolveReviewDtoActionEnum>(const <ResolveReviewDtoActionEnum>[
  _$resolveReviewDtoActionEnum_UPGRADE_REPLACE,
  _$resolveReviewDtoActionEnum_LINK_KEEP_BOTH,
  _$resolveReviewDtoActionEnum_IGNORE_NEW,
  _$resolveReviewDtoActionEnum_CONFIRM_DIFFERENT,
  _$resolveReviewDtoActionEnum_ACCEPT,
  _$resolveReviewDtoActionEnum_REJECT,
  _$resolveReviewDtoActionEnum_ACCEPT_AND_LEARN,
  _$resolveReviewDtoActionEnum_CHOOSE_OTHER,
  _$resolveReviewDtoActionEnum_CANCEL,
  _$resolveReviewDtoActionEnum_FIX,
  _$resolveReviewDtoActionEnum_IGNORE,
]);

Serializer<ResolveReviewDtoActionEnum> _$resolveReviewDtoActionEnumSerializer =
    new _$ResolveReviewDtoActionEnumSerializer();

class _$ResolveReviewDtoActionEnumSerializer
    implements PrimitiveSerializer<ResolveReviewDtoActionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UPGRADE_REPLACE': 'UPGRADE_REPLACE',
    'LINK_KEEP_BOTH': 'LINK_KEEP_BOTH',
    'IGNORE_NEW': 'IGNORE_NEW',
    'CONFIRM_DIFFERENT': 'CONFIRM_DIFFERENT',
    'ACCEPT': 'ACCEPT',
    'REJECT': 'REJECT',
    'ACCEPT_AND_LEARN': 'ACCEPT_AND_LEARN',
    'CHOOSE_OTHER': 'CHOOSE_OTHER',
    'CANCEL': 'CANCEL',
    'FIX': 'FIX',
    'IGNORE': 'IGNORE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UPGRADE_REPLACE': 'UPGRADE_REPLACE',
    'LINK_KEEP_BOTH': 'LINK_KEEP_BOTH',
    'IGNORE_NEW': 'IGNORE_NEW',
    'CONFIRM_DIFFERENT': 'CONFIRM_DIFFERENT',
    'ACCEPT': 'ACCEPT',
    'REJECT': 'REJECT',
    'ACCEPT_AND_LEARN': 'ACCEPT_AND_LEARN',
    'CHOOSE_OTHER': 'CHOOSE_OTHER',
    'CANCEL': 'CANCEL',
    'FIX': 'FIX',
    'IGNORE': 'IGNORE',
  };

  @override
  final Iterable<Type> types = const <Type>[ResolveReviewDtoActionEnum];
  @override
  final String wireName = 'ResolveReviewDtoActionEnum';

  @override
  Object serialize(Serializers serializers, ResolveReviewDtoActionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ResolveReviewDtoActionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ResolveReviewDtoActionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ResolveReviewDto extends ResolveReviewDto {
  @override
  final ResolveReviewDtoActionEnum action;
  @override
  final JsonObject? data;

  factory _$ResolveReviewDto(
          [void Function(ResolveReviewDtoBuilder)? updates]) =>
      (new ResolveReviewDtoBuilder()..update(updates))._build();

  _$ResolveReviewDto._({required this.action, this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        action, r'ResolveReviewDto', 'action');
  }

  @override
  ResolveReviewDto rebuild(void Function(ResolveReviewDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResolveReviewDtoBuilder toBuilder() =>
      new ResolveReviewDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResolveReviewDto &&
        action == other.action &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResolveReviewDto')
          ..add('action', action)
          ..add('data', data))
        .toString();
  }
}

class ResolveReviewDtoBuilder
    implements Builder<ResolveReviewDto, ResolveReviewDtoBuilder> {
  _$ResolveReviewDto? _$v;

  ResolveReviewDtoActionEnum? _action;
  ResolveReviewDtoActionEnum? get action => _$this._action;
  set action(ResolveReviewDtoActionEnum? action) => _$this._action = action;

  JsonObject? _data;
  JsonObject? get data => _$this._data;
  set data(JsonObject? data) => _$this._data = data;

  ResolveReviewDtoBuilder() {
    ResolveReviewDto._defaults(this);
  }

  ResolveReviewDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action;
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResolveReviewDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResolveReviewDto;
  }

  @override
  void update(void Function(ResolveReviewDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResolveReviewDto build() => _build();

  _$ResolveReviewDto _build() {
    final _$result = _$v ??
        new _$ResolveReviewDto._(
            action: BuiltValueNullFieldError.checkNotNull(
                action, r'ResolveReviewDto', 'action'),
            data: data);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
