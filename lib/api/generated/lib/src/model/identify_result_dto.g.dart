// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identify_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IdentifyResultDto extends IdentifyResultDto {
  @override
  final bool identified;
  @override
  final String? importerName;
  @override
  final String? importerId;
  @override
  final String? account;
  @override
  final String? message;

  factory _$IdentifyResultDto(
          [void Function(IdentifyResultDtoBuilder)? updates]) =>
      (new IdentifyResultDtoBuilder()..update(updates))._build();

  _$IdentifyResultDto._(
      {required this.identified,
      this.importerName,
      this.importerId,
      this.account,
      this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        identified, r'IdentifyResultDto', 'identified');
  }

  @override
  IdentifyResultDto rebuild(void Function(IdentifyResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdentifyResultDtoBuilder toBuilder() =>
      new IdentifyResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdentifyResultDto &&
        identified == other.identified &&
        importerName == other.importerName &&
        importerId == other.importerId &&
        account == other.account &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, identified.hashCode);
    _$hash = $jc(_$hash, importerName.hashCode);
    _$hash = $jc(_$hash, importerId.hashCode);
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IdentifyResultDto')
          ..add('identified', identified)
          ..add('importerName', importerName)
          ..add('importerId', importerId)
          ..add('account', account)
          ..add('message', message))
        .toString();
  }
}

class IdentifyResultDtoBuilder
    implements Builder<IdentifyResultDto, IdentifyResultDtoBuilder> {
  _$IdentifyResultDto? _$v;

  bool? _identified;
  bool? get identified => _$this._identified;
  set identified(bool? identified) => _$this._identified = identified;

  String? _importerName;
  String? get importerName => _$this._importerName;
  set importerName(String? importerName) => _$this._importerName = importerName;

  String? _importerId;
  String? get importerId => _$this._importerId;
  set importerId(String? importerId) => _$this._importerId = importerId;

  String? _account;
  String? get account => _$this._account;
  set account(String? account) => _$this._account = account;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  IdentifyResultDtoBuilder() {
    IdentifyResultDto._defaults(this);
  }

  IdentifyResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _identified = $v.identified;
      _importerName = $v.importerName;
      _importerId = $v.importerId;
      _account = $v.account;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IdentifyResultDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IdentifyResultDto;
  }

  @override
  void update(void Function(IdentifyResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IdentifyResultDto build() => _build();

  _$IdentifyResultDto _build() {
    final _$result = _$v ??
        new _$IdentifyResultDto._(
            identified: BuiltValueNullFieldError.checkNotNull(
                identified, r'IdentifyResultDto', 'identified'),
            importerName: importerName,
            importerId: importerId,
            account: account,
            message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
