// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_payee_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdatePayeeDto extends UpdatePayeeDto {
  @override
  final String? payeeProfileId;
  @override
  final String? customCategory;
  @override
  final BuiltList<String>? customTags;
  @override
  final JsonObject? meta;
  @override
  final bool? isActive;

  factory _$UpdatePayeeDto([void Function(UpdatePayeeDtoBuilder)? updates]) =>
      (new UpdatePayeeDtoBuilder()..update(updates))._build();

  _$UpdatePayeeDto._(
      {this.payeeProfileId,
      this.customCategory,
      this.customTags,
      this.meta,
      this.isActive})
      : super._();

  @override
  UpdatePayeeDto rebuild(void Function(UpdatePayeeDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdatePayeeDtoBuilder toBuilder() =>
      new UpdatePayeeDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdatePayeeDto &&
        payeeProfileId == other.payeeProfileId &&
        customCategory == other.customCategory &&
        customTags == other.customTags &&
        meta == other.meta &&
        isActive == other.isActive;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, payeeProfileId.hashCode);
    _$hash = $jc(_$hash, customCategory.hashCode);
    _$hash = $jc(_$hash, customTags.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdatePayeeDto')
          ..add('payeeProfileId', payeeProfileId)
          ..add('customCategory', customCategory)
          ..add('customTags', customTags)
          ..add('meta', meta)
          ..add('isActive', isActive))
        .toString();
  }
}

class UpdatePayeeDtoBuilder
    implements Builder<UpdatePayeeDto, UpdatePayeeDtoBuilder> {
  _$UpdatePayeeDto? _$v;

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

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  UpdatePayeeDtoBuilder() {
    UpdatePayeeDto._defaults(this);
  }

  UpdatePayeeDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payeeProfileId = $v.payeeProfileId;
      _customCategory = $v.customCategory;
      _customTags = $v.customTags?.toBuilder();
      _meta = $v.meta;
      _isActive = $v.isActive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdatePayeeDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdatePayeeDto;
  }

  @override
  void update(void Function(UpdatePayeeDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdatePayeeDto build() => _build();

  _$UpdatePayeeDto _build() {
    _$UpdatePayeeDto _$result;
    try {
      _$result = _$v ??
          new _$UpdatePayeeDto._(
              payeeProfileId: payeeProfileId,
              customCategory: customCategory,
              customTags: _customTags?.build(),
              meta: meta,
              isActive: isActive);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customTags';
        _customTags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdatePayeeDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
