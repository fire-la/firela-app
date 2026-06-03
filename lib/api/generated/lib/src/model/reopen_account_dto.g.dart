// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reopen_account_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReopenAccountDto extends ReopenAccountDto {
  @override
  final DateTime? reopenDate;

  factory _$ReopenAccountDto(
          [void Function(ReopenAccountDtoBuilder)? updates]) =>
      (new ReopenAccountDtoBuilder()..update(updates))._build();

  _$ReopenAccountDto._({this.reopenDate}) : super._();

  @override
  ReopenAccountDto rebuild(void Function(ReopenAccountDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReopenAccountDtoBuilder toBuilder() =>
      new ReopenAccountDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReopenAccountDto && reopenDate == other.reopenDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reopenDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReopenAccountDto')
          ..add('reopenDate', reopenDate))
        .toString();
  }
}

class ReopenAccountDtoBuilder
    implements Builder<ReopenAccountDto, ReopenAccountDtoBuilder> {
  _$ReopenAccountDto? _$v;

  DateTime? _reopenDate;
  DateTime? get reopenDate => _$this._reopenDate;
  set reopenDate(DateTime? reopenDate) => _$this._reopenDate = reopenDate;

  ReopenAccountDtoBuilder() {
    ReopenAccountDto._defaults(this);
  }

  ReopenAccountDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reopenDate = $v.reopenDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReopenAccountDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReopenAccountDto;
  }

  @override
  void update(void Function(ReopenAccountDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReopenAccountDto build() => _build();

  _$ReopenAccountDto _build() {
    final _$result = _$v ?? new _$ReopenAccountDto._(reopenDate: reopenDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
