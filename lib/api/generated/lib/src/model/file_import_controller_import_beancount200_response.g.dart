// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_import_controller_import_beancount200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileImportControllerImportBeancount200Response
    extends FileImportControllerImportBeancount200Response {
  @override
  final num? imported;
  @override
  final num? skipped;
  @override
  final num? failed;
  @override
  final num? accountsCreated;
  @override
  final BuiltList<JsonObject>? errors;

  factory _$FileImportControllerImportBeancount200Response(
          [void Function(FileImportControllerImportBeancount200ResponseBuilder)?
              updates]) =>
      (new FileImportControllerImportBeancount200ResponseBuilder()
            ..update(updates))
          ._build();

  _$FileImportControllerImportBeancount200Response._(
      {this.imported,
      this.skipped,
      this.failed,
      this.accountsCreated,
      this.errors})
      : super._();

  @override
  FileImportControllerImportBeancount200Response rebuild(
          void Function(FileImportControllerImportBeancount200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileImportControllerImportBeancount200ResponseBuilder toBuilder() =>
      new FileImportControllerImportBeancount200ResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileImportControllerImportBeancount200Response &&
        imported == other.imported &&
        skipped == other.skipped &&
        failed == other.failed &&
        accountsCreated == other.accountsCreated &&
        errors == other.errors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imported.hashCode);
    _$hash = $jc(_$hash, skipped.hashCode);
    _$hash = $jc(_$hash, failed.hashCode);
    _$hash = $jc(_$hash, accountsCreated.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'FileImportControllerImportBeancount200Response')
          ..add('imported', imported)
          ..add('skipped', skipped)
          ..add('failed', failed)
          ..add('accountsCreated', accountsCreated)
          ..add('errors', errors))
        .toString();
  }
}

class FileImportControllerImportBeancount200ResponseBuilder
    implements
        Builder<FileImportControllerImportBeancount200Response,
            FileImportControllerImportBeancount200ResponseBuilder> {
  _$FileImportControllerImportBeancount200Response? _$v;

  num? _imported;
  num? get imported => _$this._imported;
  set imported(num? imported) => _$this._imported = imported;

  num? _skipped;
  num? get skipped => _$this._skipped;
  set skipped(num? skipped) => _$this._skipped = skipped;

  num? _failed;
  num? get failed => _$this._failed;
  set failed(num? failed) => _$this._failed = failed;

  num? _accountsCreated;
  num? get accountsCreated => _$this._accountsCreated;
  set accountsCreated(num? accountsCreated) =>
      _$this._accountsCreated = accountsCreated;

  ListBuilder<JsonObject>? _errors;
  ListBuilder<JsonObject> get errors =>
      _$this._errors ??= new ListBuilder<JsonObject>();
  set errors(ListBuilder<JsonObject>? errors) => _$this._errors = errors;

  FileImportControllerImportBeancount200ResponseBuilder() {
    FileImportControllerImportBeancount200Response._defaults(this);
  }

  FileImportControllerImportBeancount200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imported = $v.imported;
      _skipped = $v.skipped;
      _failed = $v.failed;
      _accountsCreated = $v.accountsCreated;
      _errors = $v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileImportControllerImportBeancount200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FileImportControllerImportBeancount200Response;
  }

  @override
  void update(
      void Function(FileImportControllerImportBeancount200ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  FileImportControllerImportBeancount200Response build() => _build();

  _$FileImportControllerImportBeancount200Response _build() {
    _$FileImportControllerImportBeancount200Response _$result;
    try {
      _$result = _$v ??
          new _$FileImportControllerImportBeancount200Response._(
              imported: imported,
              skipped: skipped,
              failed: failed,
              accountsCreated: accountsCreated,
              errors: _errors?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        _errors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FileImportControllerImportBeancount200Response',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
