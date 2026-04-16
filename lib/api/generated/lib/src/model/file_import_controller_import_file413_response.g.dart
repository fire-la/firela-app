// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_import_controller_import_file413_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileImportControllerImportFile413Response
    extends FileImportControllerImportFile413Response {
  @override
  final String? type;
  @override
  final String? title;
  @override
  final num? status;
  @override
  final String? detail;
  @override
  final num? maxSize;
  @override
  final String? filename;

  factory _$FileImportControllerImportFile413Response(
          [void Function(FileImportControllerImportFile413ResponseBuilder)?
              updates]) =>
      (new FileImportControllerImportFile413ResponseBuilder()..update(updates))
          ._build();

  _$FileImportControllerImportFile413Response._(
      {this.type,
      this.title,
      this.status,
      this.detail,
      this.maxSize,
      this.filename})
      : super._();

  @override
  FileImportControllerImportFile413Response rebuild(
          void Function(FileImportControllerImportFile413ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileImportControllerImportFile413ResponseBuilder toBuilder() =>
      new FileImportControllerImportFile413ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileImportControllerImportFile413Response &&
        type == other.type &&
        title == other.title &&
        status == other.status &&
        detail == other.detail &&
        maxSize == other.maxSize &&
        filename == other.filename;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, detail.hashCode);
    _$hash = $jc(_$hash, maxSize.hashCode);
    _$hash = $jc(_$hash, filename.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'FileImportControllerImportFile413Response')
          ..add('type', type)
          ..add('title', title)
          ..add('status', status)
          ..add('detail', detail)
          ..add('maxSize', maxSize)
          ..add('filename', filename))
        .toString();
  }
}

class FileImportControllerImportFile413ResponseBuilder
    implements
        Builder<FileImportControllerImportFile413Response,
            FileImportControllerImportFile413ResponseBuilder> {
  _$FileImportControllerImportFile413Response? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  num? _status;
  num? get status => _$this._status;
  set status(num? status) => _$this._status = status;

  String? _detail;
  String? get detail => _$this._detail;
  set detail(String? detail) => _$this._detail = detail;

  num? _maxSize;
  num? get maxSize => _$this._maxSize;
  set maxSize(num? maxSize) => _$this._maxSize = maxSize;

  String? _filename;
  String? get filename => _$this._filename;
  set filename(String? filename) => _$this._filename = filename;

  FileImportControllerImportFile413ResponseBuilder() {
    FileImportControllerImportFile413Response._defaults(this);
  }

  FileImportControllerImportFile413ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _title = $v.title;
      _status = $v.status;
      _detail = $v.detail;
      _maxSize = $v.maxSize;
      _filename = $v.filename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileImportControllerImportFile413Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FileImportControllerImportFile413Response;
  }

  @override
  void update(
      void Function(FileImportControllerImportFile413ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  FileImportControllerImportFile413Response build() => _build();

  _$FileImportControllerImportFile413Response _build() {
    final _$result = _$v ??
        new _$FileImportControllerImportFile413Response._(
            type: type,
            title: title,
            status: status,
            detail: detail,
            maxSize: maxSize,
            filename: filename);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
