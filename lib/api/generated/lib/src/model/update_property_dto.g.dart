// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_property_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdatePropertyDto extends UpdatePropertyDto {
  @override
  final String value;

  factory _$UpdatePropertyDto(
          [void Function(UpdatePropertyDtoBuilder)? updates]) =>
      (new UpdatePropertyDtoBuilder()..update(updates))._build();

  _$UpdatePropertyDto._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'UpdatePropertyDto', 'value');
  }

  @override
  UpdatePropertyDto rebuild(void Function(UpdatePropertyDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdatePropertyDtoBuilder toBuilder() =>
      new UpdatePropertyDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdatePropertyDto && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdatePropertyDto')
          ..add('value', value))
        .toString();
  }
}

class UpdatePropertyDtoBuilder
    implements Builder<UpdatePropertyDto, UpdatePropertyDtoBuilder> {
  _$UpdatePropertyDto? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  UpdatePropertyDtoBuilder() {
    UpdatePropertyDto._defaults(this);
  }

  UpdatePropertyDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdatePropertyDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdatePropertyDto;
  }

  @override
  void update(void Function(UpdatePropertyDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdatePropertyDto build() => _build();

  _$UpdatePropertyDto _build() {
    final _$result = _$v ??
        new _$UpdatePropertyDto._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'UpdatePropertyDto', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
