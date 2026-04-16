// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'close_account_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CloseAccountDto extends CloseAccountDto {
  @override
  final DateTime closeDate;
  @override
  final JsonObject? closeMeta;

  factory _$CloseAccountDto([void Function(CloseAccountDtoBuilder)? updates]) =>
      (new CloseAccountDtoBuilder()..update(updates))._build();

  _$CloseAccountDto._({required this.closeDate, this.closeMeta}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        closeDate, r'CloseAccountDto', 'closeDate');
  }

  @override
  CloseAccountDto rebuild(void Function(CloseAccountDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CloseAccountDtoBuilder toBuilder() =>
      new CloseAccountDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CloseAccountDto &&
        closeDate == other.closeDate &&
        closeMeta == other.closeMeta;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, closeDate.hashCode);
    _$hash = $jc(_$hash, closeMeta.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CloseAccountDto')
          ..add('closeDate', closeDate)
          ..add('closeMeta', closeMeta))
        .toString();
  }
}

class CloseAccountDtoBuilder
    implements Builder<CloseAccountDto, CloseAccountDtoBuilder> {
  _$CloseAccountDto? _$v;

  DateTime? _closeDate;
  DateTime? get closeDate => _$this._closeDate;
  set closeDate(DateTime? closeDate) => _$this._closeDate = closeDate;

  JsonObject? _closeMeta;
  JsonObject? get closeMeta => _$this._closeMeta;
  set closeMeta(JsonObject? closeMeta) => _$this._closeMeta = closeMeta;

  CloseAccountDtoBuilder() {
    CloseAccountDto._defaults(this);
  }

  CloseAccountDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _closeDate = $v.closeDate;
      _closeMeta = $v.closeMeta;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CloseAccountDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CloseAccountDto;
  }

  @override
  void update(void Function(CloseAccountDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CloseAccountDto build() => _build();

  _$CloseAccountDto _build() {
    final _$result = _$v ??
        new _$CloseAccountDto._(
            closeDate: BuiltValueNullFieldError.checkNotNull(
                closeDate, r'CloseAccountDto', 'closeDate'),
            closeMeta: closeMeta);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
