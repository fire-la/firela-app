// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_import_controller_import_file429_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileImportControllerImportFile429Response
    extends FileImportControllerImportFile429Response {
  @override
  final String? type;
  @override
  final String? title;
  @override
  final num? status;
  @override
  final String? detail;
  @override
  final num? activeImportCount;
  @override
  final num? maxConcurrent;

  factory _$FileImportControllerImportFile429Response(
          [void Function(FileImportControllerImportFile429ResponseBuilder)?
              updates]) =>
      (new FileImportControllerImportFile429ResponseBuilder()..update(updates))
          ._build();

  _$FileImportControllerImportFile429Response._(
      {this.type,
      this.title,
      this.status,
      this.detail,
      this.activeImportCount,
      this.maxConcurrent})
      : super._();

  @override
  FileImportControllerImportFile429Response rebuild(
          void Function(FileImportControllerImportFile429ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileImportControllerImportFile429ResponseBuilder toBuilder() =>
      new FileImportControllerImportFile429ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileImportControllerImportFile429Response &&
        type == other.type &&
        title == other.title &&
        status == other.status &&
        detail == other.detail &&
        activeImportCount == other.activeImportCount &&
        maxConcurrent == other.maxConcurrent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, detail.hashCode);
    _$hash = $jc(_$hash, activeImportCount.hashCode);
    _$hash = $jc(_$hash, maxConcurrent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'FileImportControllerImportFile429Response')
          ..add('type', type)
          ..add('title', title)
          ..add('status', status)
          ..add('detail', detail)
          ..add('activeImportCount', activeImportCount)
          ..add('maxConcurrent', maxConcurrent))
        .toString();
  }
}

class FileImportControllerImportFile429ResponseBuilder
    implements
        Builder<FileImportControllerImportFile429Response,
            FileImportControllerImportFile429ResponseBuilder> {
  _$FileImportControllerImportFile429Response? _$v;

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

  num? _activeImportCount;
  num? get activeImportCount => _$this._activeImportCount;
  set activeImportCount(num? activeImportCount) =>
      _$this._activeImportCount = activeImportCount;

  num? _maxConcurrent;
  num? get maxConcurrent => _$this._maxConcurrent;
  set maxConcurrent(num? maxConcurrent) =>
      _$this._maxConcurrent = maxConcurrent;

  FileImportControllerImportFile429ResponseBuilder() {
    FileImportControllerImportFile429Response._defaults(this);
  }

  FileImportControllerImportFile429ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _title = $v.title;
      _status = $v.status;
      _detail = $v.detail;
      _activeImportCount = $v.activeImportCount;
      _maxConcurrent = $v.maxConcurrent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileImportControllerImportFile429Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FileImportControllerImportFile429Response;
  }

  @override
  void update(
      void Function(FileImportControllerImportFile429ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  FileImportControllerImportFile429Response build() => _build();

  _$FileImportControllerImportFile429Response _build() {
    final _$result = _$v ??
        new _$FileImportControllerImportFile429Response._(
            type: type,
            title: title,
            status: status,
            detail: detail,
            activeImportCount: activeImportCount,
            maxConcurrent: maxConcurrent);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
