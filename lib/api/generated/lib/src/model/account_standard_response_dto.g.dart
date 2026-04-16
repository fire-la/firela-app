// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_standard_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AccountStandardResponseDtoTypeEnum
    _$accountStandardResponseDtoTypeEnum_assets =
    const AccountStandardResponseDtoTypeEnum._('assets');
const AccountStandardResponseDtoTypeEnum
    _$accountStandardResponseDtoTypeEnum_liabilities =
    const AccountStandardResponseDtoTypeEnum._('liabilities');
const AccountStandardResponseDtoTypeEnum
    _$accountStandardResponseDtoTypeEnum_income =
    const AccountStandardResponseDtoTypeEnum._('income');
const AccountStandardResponseDtoTypeEnum
    _$accountStandardResponseDtoTypeEnum_expenses =
    const AccountStandardResponseDtoTypeEnum._('expenses');
const AccountStandardResponseDtoTypeEnum
    _$accountStandardResponseDtoTypeEnum_equity =
    const AccountStandardResponseDtoTypeEnum._('equity');

AccountStandardResponseDtoTypeEnum _$accountStandardResponseDtoTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'assets':
      return _$accountStandardResponseDtoTypeEnum_assets;
    case 'liabilities':
      return _$accountStandardResponseDtoTypeEnum_liabilities;
    case 'income':
      return _$accountStandardResponseDtoTypeEnum_income;
    case 'expenses':
      return _$accountStandardResponseDtoTypeEnum_expenses;
    case 'equity':
      return _$accountStandardResponseDtoTypeEnum_equity;
    default:
      return _$accountStandardResponseDtoTypeEnum_equity;
  }
}

final BuiltSet<AccountStandardResponseDtoTypeEnum>
    _$accountStandardResponseDtoTypeEnumValues = new BuiltSet<
        AccountStandardResponseDtoTypeEnum>(const <AccountStandardResponseDtoTypeEnum>[
  _$accountStandardResponseDtoTypeEnum_assets,
  _$accountStandardResponseDtoTypeEnum_liabilities,
  _$accountStandardResponseDtoTypeEnum_income,
  _$accountStandardResponseDtoTypeEnum_expenses,
  _$accountStandardResponseDtoTypeEnum_equity,
]);

Serializer<AccountStandardResponseDtoTypeEnum>
    _$accountStandardResponseDtoTypeEnumSerializer =
    new _$AccountStandardResponseDtoTypeEnumSerializer();

class _$AccountStandardResponseDtoTypeEnumSerializer
    implements PrimitiveSerializer<AccountStandardResponseDtoTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'assets': 'Assets',
    'liabilities': 'Liabilities',
    'income': 'Income',
    'expenses': 'Expenses',
    'equity': 'Equity',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Assets': 'assets',
    'Liabilities': 'liabilities',
    'Income': 'income',
    'Expenses': 'expenses',
    'Equity': 'equity',
  };

  @override
  final Iterable<Type> types = const <Type>[AccountStandardResponseDtoTypeEnum];
  @override
  final String wireName = 'AccountStandardResponseDtoTypeEnum';

  @override
  Object serialize(
          Serializers serializers, AccountStandardResponseDtoTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AccountStandardResponseDtoTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AccountStandardResponseDtoTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AccountStandardResponseDto extends AccountStandardResponseDto {
  @override
  final String path;
  @override
  final AccountStandardResponseDtoTypeEnum type;
  @override
  final String? i18nKey;
  @override
  final String? description;
  @override
  final BuiltList<String>? tags;
  @override
  final String? icon;

  factory _$AccountStandardResponseDto(
          [void Function(AccountStandardResponseDtoBuilder)? updates]) =>
      (new AccountStandardResponseDtoBuilder()..update(updates))._build();

  _$AccountStandardResponseDto._(
      {required this.path,
      required this.type,
      this.i18nKey,
      this.description,
      this.tags,
      this.icon})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        path, r'AccountStandardResponseDto', 'path');
    BuiltValueNullFieldError.checkNotNull(
        type, r'AccountStandardResponseDto', 'type');
  }

  @override
  AccountStandardResponseDto rebuild(
          void Function(AccountStandardResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountStandardResponseDtoBuilder toBuilder() =>
      new AccountStandardResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountStandardResponseDto &&
        path == other.path &&
        type == other.type &&
        i18nKey == other.i18nKey &&
        description == other.description &&
        tags == other.tags &&
        icon == other.icon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, i18nKey.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountStandardResponseDto')
          ..add('path', path)
          ..add('type', type)
          ..add('i18nKey', i18nKey)
          ..add('description', description)
          ..add('tags', tags)
          ..add('icon', icon))
        .toString();
  }
}

class AccountStandardResponseDtoBuilder
    implements
        Builder<AccountStandardResponseDto, AccountStandardResponseDtoBuilder> {
  _$AccountStandardResponseDto? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  AccountStandardResponseDtoTypeEnum? _type;
  AccountStandardResponseDtoTypeEnum? get type => _$this._type;
  set type(AccountStandardResponseDtoTypeEnum? type) => _$this._type = type;

  String? _i18nKey;
  String? get i18nKey => _$this._i18nKey;
  set i18nKey(String? i18nKey) => _$this._i18nKey = i18nKey;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  AccountStandardResponseDtoBuilder() {
    AccountStandardResponseDto._defaults(this);
  }

  AccountStandardResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _type = $v.type;
      _i18nKey = $v.i18nKey;
      _description = $v.description;
      _tags = $v.tags?.toBuilder();
      _icon = $v.icon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountStandardResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountStandardResponseDto;
  }

  @override
  void update(void Function(AccountStandardResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountStandardResponseDto build() => _build();

  _$AccountStandardResponseDto _build() {
    _$AccountStandardResponseDto _$result;
    try {
      _$result = _$v ??
          new _$AccountStandardResponseDto._(
              path: BuiltValueNullFieldError.checkNotNull(
                  path, r'AccountStandardResponseDto', 'path'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'AccountStandardResponseDto', 'type'),
              i18nKey: i18nKey,
              description: description,
              tags: _tags?.build(),
              icon: icon);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AccountStandardResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
