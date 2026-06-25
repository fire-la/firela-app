// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_payee_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePayeeDto extends CreatePayeeDto {
  @override
  final String payee;
  @override
  final String? payeeProfileId;
  @override
  final String? customCategory;
  @override
  final BuiltList<String>? customTags;
  @override
  final JsonObject? meta;

  factory _$CreatePayeeDto([void Function(CreatePayeeDtoBuilder)? updates]) =>
      (new CreatePayeeDtoBuilder()..update(updates))._build();

  _$CreatePayeeDto._(
      {required this.payee,
      this.payeeProfileId,
      this.customCategory,
      this.customTags,
      this.meta})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(payee, r'CreatePayeeDto', 'payee');
  }

  @override
  CreatePayeeDto rebuild(void Function(CreatePayeeDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePayeeDtoBuilder toBuilder() =>
      new CreatePayeeDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePayeeDto &&
        payee == other.payee &&
        payeeProfileId == other.payeeProfileId &&
        customCategory == other.customCategory &&
        customTags == other.customTags &&
        meta == other.meta;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, payee.hashCode);
    _$hash = $jc(_$hash, payeeProfileId.hashCode);
    _$hash = $jc(_$hash, customCategory.hashCode);
    _$hash = $jc(_$hash, customTags.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreatePayeeDto')
          ..add('payee', payee)
          ..add('payeeProfileId', payeeProfileId)
          ..add('customCategory', customCategory)
          ..add('customTags', customTags)
          ..add('meta', meta))
        .toString();
  }
}

class CreatePayeeDtoBuilder
    implements Builder<CreatePayeeDto, CreatePayeeDtoBuilder> {
  _$CreatePayeeDto? _$v;

  String? _payee;
  String? get payee => _$this._payee;
  set payee(String? payee) => _$this._payee = payee;

  String? _payeeProfileId;
  String? get payeeProfileId => _$this._payeeProfileId;
  set payeeProfileId(String? payeeProfileId) =>
      _$this._payeeProfileId = payeeProfileId;

  String? _customCategory;
  String? get customCategory => _$this._customCategory;
  set customCategory(String? customCategory) =>
      _$this._customCategory = customCategory;

  ListBuilder<String>? _customTags;
  ListBuilder<String> get customTags =>
      _$this._customTags ??= new ListBuilder<String>();
  set customTags(ListBuilder<String>? customTags) =>
      _$this._customTags = customTags;

  JsonObject? _meta;
  JsonObject? get meta => _$this._meta;
  set meta(JsonObject? meta) => _$this._meta = meta;

  CreatePayeeDtoBuilder() {
    CreatePayeeDto._defaults(this);
  }

  CreatePayeeDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payee = $v.payee;
      _payeeProfileId = $v.payeeProfileId;
      _customCategory = $v.customCategory;
      _customTags = $v.customTags?.toBuilder();
      _meta = $v.meta;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePayeeDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreatePayeeDto;
  }

  @override
  void update(void Function(CreatePayeeDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePayeeDto build() => _build();

  _$CreatePayeeDto _build() {
    _$CreatePayeeDto _$result;
    try {
      _$result = _$v ??
          new _$CreatePayeeDto._(
              payee: BuiltValueNullFieldError.checkNotNull(
                  payee, r'CreatePayeeDto', 'payee'),
              payeeProfileId: payeeProfileId,
              customCategory: customCategory,
              customTags: _customTags?.build(),
              meta: meta);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customTags';
        _customTags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreatePayeeDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
