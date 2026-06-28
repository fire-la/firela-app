// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_resolve_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BatchResolveDtoActionEnum _$batchResolveDtoActionEnum_UPGRADE_REPLACE =
    const BatchResolveDtoActionEnum._('UPGRADE_REPLACE');
const BatchResolveDtoActionEnum _$batchResolveDtoActionEnum_LINK_KEEP_BOTH =
    const BatchResolveDtoActionEnum._('LINK_KEEP_BOTH');
const BatchResolveDtoActionEnum _$batchResolveDtoActionEnum_IGNORE_NEW =
    const BatchResolveDtoActionEnum._('IGNORE_NEW');
const BatchResolveDtoActionEnum _$batchResolveDtoActionEnum_CONFIRM_DIFFERENT =
    const BatchResolveDtoActionEnum._('CONFIRM_DIFFERENT');
const BatchResolveDtoActionEnum _$batchResolveDtoActionEnum_ACCEPT =
    const BatchResolveDtoActionEnum._('ACCEPT');
const BatchResolveDtoActionEnum _$batchResolveDtoActionEnum_REJECT =
    const BatchResolveDtoActionEnum._('REJECT');
const BatchResolveDtoActionEnum _$batchResolveDtoActionEnum_ACCEPT_AND_LEARN =
    const BatchResolveDtoActionEnum._('ACCEPT_AND_LEARN');
const BatchResolveDtoActionEnum _$batchResolveDtoActionEnum_CHOOSE_OTHER =
    const BatchResolveDtoActionEnum._('CHOOSE_OTHER');
const BatchResolveDtoActionEnum _$batchResolveDtoActionEnum_CANCEL =
    const BatchResolveDtoActionEnum._('CANCEL');
const BatchResolveDtoActionEnum _$batchResolveDtoActionEnum_FIX =
    const BatchResolveDtoActionEnum._('FIX');
const BatchResolveDtoActionEnum _$batchResolveDtoActionEnum_IGNORE =
    const BatchResolveDtoActionEnum._('IGNORE');

BatchResolveDtoActionEnum _$batchResolveDtoActionEnumValueOf(String name) {
  switch (name) {
    case 'UPGRADE_REPLACE':
      return _$batchResolveDtoActionEnum_UPGRADE_REPLACE;
    case 'LINK_KEEP_BOTH':
      return _$batchResolveDtoActionEnum_LINK_KEEP_BOTH;
    case 'IGNORE_NEW':
      return _$batchResolveDtoActionEnum_IGNORE_NEW;
    case 'CONFIRM_DIFFERENT':
      return _$batchResolveDtoActionEnum_CONFIRM_DIFFERENT;
    case 'ACCEPT':
      return _$batchResolveDtoActionEnum_ACCEPT;
    case 'REJECT':
      return _$batchResolveDtoActionEnum_REJECT;
    case 'ACCEPT_AND_LEARN':
      return _$batchResolveDtoActionEnum_ACCEPT_AND_LEARN;
    case 'CHOOSE_OTHER':
      return _$batchResolveDtoActionEnum_CHOOSE_OTHER;
    case 'CANCEL':
      return _$batchResolveDtoActionEnum_CANCEL;
    case 'FIX':
      return _$batchResolveDtoActionEnum_FIX;
    case 'IGNORE':
      return _$batchResolveDtoActionEnum_IGNORE;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<BatchResolveDtoActionEnum> _$batchResolveDtoActionEnumValues =
    new BuiltSet<BatchResolveDtoActionEnum>(const <BatchResolveDtoActionEnum>[
  _$batchResolveDtoActionEnum_UPGRADE_REPLACE,
  _$batchResolveDtoActionEnum_LINK_KEEP_BOTH,
  _$batchResolveDtoActionEnum_IGNORE_NEW,
  _$batchResolveDtoActionEnum_CONFIRM_DIFFERENT,
  _$batchResolveDtoActionEnum_ACCEPT,
  _$batchResolveDtoActionEnum_REJECT,
  _$batchResolveDtoActionEnum_ACCEPT_AND_LEARN,
  _$batchResolveDtoActionEnum_CHOOSE_OTHER,
  _$batchResolveDtoActionEnum_CANCEL,
  _$batchResolveDtoActionEnum_FIX,
  _$batchResolveDtoActionEnum_IGNORE,
]);

Serializer<BatchResolveDtoActionEnum> _$batchResolveDtoActionEnumSerializer =
    new _$BatchResolveDtoActionEnumSerializer();

class _$BatchResolveDtoActionEnumSerializer
    implements PrimitiveSerializer<BatchResolveDtoActionEnum> {
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
  final Iterable<Type> types = const <Type>[BatchResolveDtoActionEnum];
  @override
  final String wireName = 'BatchResolveDtoActionEnum';

  @override
  Object serialize(Serializers serializers, BatchResolveDtoActionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BatchResolveDtoActionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BatchResolveDtoActionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$BatchResolveDto extends BatchResolveDto {
  @override
  final BuiltList<String> reviewIds;
  @override
  final BatchResolveDtoActionEnum action;
  @override
  final JsonObject? data;

  factory _$BatchResolveDto([void Function(BatchResolveDtoBuilder)? updates]) =>
      (new BatchResolveDtoBuilder()..update(updates))._build();

  _$BatchResolveDto._(
      {required this.reviewIds, required this.action, this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        reviewIds, r'BatchResolveDto', 'reviewIds');
    BuiltValueNullFieldError.checkNotNull(action, r'BatchResolveDto', 'action');
  }

  @override
  BatchResolveDto rebuild(void Function(BatchResolveDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchResolveDtoBuilder toBuilder() =>
      new BatchResolveDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchResolveDto &&
        reviewIds == other.reviewIds &&
        action == other.action &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reviewIds.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BatchResolveDto')
          ..add('reviewIds', reviewIds)
          ..add('action', action)
          ..add('data', data))
        .toString();
  }
}

class BatchResolveDtoBuilder
    implements Builder<BatchResolveDto, BatchResolveDtoBuilder> {
  _$BatchResolveDto? _$v;

  ListBuilder<String>? _reviewIds;
  ListBuilder<String> get reviewIds =>
      _$this._reviewIds ??= new ListBuilder<String>();
  set reviewIds(ListBuilder<String>? reviewIds) =>
      _$this._reviewIds = reviewIds;

  BatchResolveDtoActionEnum? _action;
  BatchResolveDtoActionEnum? get action => _$this._action;
  set action(BatchResolveDtoActionEnum? action) => _$this._action = action;

  JsonObject? _data;
  JsonObject? get data => _$this._data;
  set data(JsonObject? data) => _$this._data = data;

  BatchResolveDtoBuilder() {
    BatchResolveDto._defaults(this);
  }

  BatchResolveDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reviewIds = $v.reviewIds.toBuilder();
      _action = $v.action;
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchResolveDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchResolveDto;
  }

  @override
  void update(void Function(BatchResolveDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchResolveDto build() => _build();

  _$BatchResolveDto _build() {
    _$BatchResolveDto _$result;
    try {
      _$result = _$v ??
          new _$BatchResolveDto._(
              reviewIds: reviewIds.build(),
              action: BuiltValueNullFieldError.checkNotNull(
                  action, r'BatchResolveDto', 'action'),
              data: data);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reviewIds';
        reviewIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchResolveDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
