// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_import_controller_import_file400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileImportControllerImportFile400Response
    extends FileImportControllerImportFile400Response {
  @override
  final String? type;
  @override
  final String? title;
  @override
  final num? status;
  @override
  final String? detail;
  @override
  final String? filename;
  @override
  final num? fileSize;

  factory _$FileImportControllerImportFile400Response(
          [void Function(FileImportControllerImportFile400ResponseBuilder)?
              updates]) =>
      (new FileImportControllerImportFile400ResponseBuilder()..update(updates))
          ._build();

  _$FileImportControllerImportFile400Response._(
      {this.type,
      this.title,
      this.status,
      this.detail,
      this.filename,
      this.fileSize})
      : super._();

  @override
  FileImportControllerImportFile400Response rebuild(
          void Function(FileImportControllerImportFile400ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileImportControllerImportFile400ResponseBuilder toBuilder() =>
      new FileImportControllerImportFile400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileImportControllerImportFile400Response &&
        type == other.type &&
        title == other.title &&
        status == other.status &&
        detail == other.detail &&
        filename == other.filename &&
        fileSize == other.fileSize;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, detail.hashCode);
    _$hash = $jc(_$hash, filename.hashCode);
    _$hash = $jc(_$hash, fileSize.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'FileImportControllerImportFile400Response')
          ..add('type', type)
          ..add('title', title)
          ..add('status', status)
          ..add('detail', detail)
          ..add('filename', filename)
          ..add('fileSize', fileSize))
        .toString();
  }
}

class FileImportControllerImportFile400ResponseBuilder
    implements
        Builder<FileImportControllerImportFile400Response,
            FileImportControllerImportFile400ResponseBuilder> {
  _$FileImportControllerImportFile400Response? _$v;

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

  String? _filename;
  String? get filename => _$this._filename;
  set filename(String? filename) => _$this._filename = filename;

  num? _fileSize;
  num? get fileSize => _$this._fileSize;
  set fileSize(num? fileSize) => _$this._fileSize = fileSize;

  FileImportControllerImportFile400ResponseBuilder() {
    FileImportControllerImportFile400Response._defaults(this);
  }

  FileImportControllerImportFile400ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _title = $v.title;
      _status = $v.status;
      _detail = $v.detail;
      _filename = $v.filename;
      _fileSize = $v.fileSize;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileImportControllerImportFile400Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FileImportControllerImportFile400Response;
  }

  @override
  void update(
      void Function(FileImportControllerImportFile400ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  FileImportControllerImportFile400Response build() => _build();

  _$FileImportControllerImportFile400Response _build() {
    final _$result = _$v ??
        new _$FileImportControllerImportFile400Response._(
            type: type,
            title: title,
            status: status,
            detail: detail,
            filename: filename,
            fileSize: fileSize);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
