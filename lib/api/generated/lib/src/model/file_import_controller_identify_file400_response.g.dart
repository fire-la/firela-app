// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_import_controller_identify_file400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileImportControllerIdentifyFile400Response
    extends FileImportControllerIdentifyFile400Response {
  @override
  final String? type;
  @override
  final String? title;
  @override
  final num? status;
  @override
  final String? detail;
  @override
  final String? endpoint;

  factory _$FileImportControllerIdentifyFile400Response(
          [void Function(FileImportControllerIdentifyFile400ResponseBuilder)?
              updates]) =>
      (new FileImportControllerIdentifyFile400ResponseBuilder()
            ..update(updates))
          ._build();

  _$FileImportControllerIdentifyFile400Response._(
      {this.type, this.title, this.status, this.detail, this.endpoint})
      : super._();

  @override
  FileImportControllerIdentifyFile400Response rebuild(
          void Function(FileImportControllerIdentifyFile400ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileImportControllerIdentifyFile400ResponseBuilder toBuilder() =>
      new FileImportControllerIdentifyFile400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileImportControllerIdentifyFile400Response &&
        type == other.type &&
        title == other.title &&
        status == other.status &&
        detail == other.detail &&
        endpoint == other.endpoint;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, detail.hashCode);
    _$hash = $jc(_$hash, endpoint.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'FileImportControllerIdentifyFile400Response')
          ..add('type', type)
          ..add('title', title)
          ..add('status', status)
          ..add('detail', detail)
          ..add('endpoint', endpoint))
        .toString();
  }
}

class FileImportControllerIdentifyFile400ResponseBuilder
    implements
        Builder<FileImportControllerIdentifyFile400Response,
            FileImportControllerIdentifyFile400ResponseBuilder> {
  _$FileImportControllerIdentifyFile400Response? _$v;

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

  String? _endpoint;
  String? get endpoint => _$this._endpoint;
  set endpoint(String? endpoint) => _$this._endpoint = endpoint;

  FileImportControllerIdentifyFile400ResponseBuilder() {
    FileImportControllerIdentifyFile400Response._defaults(this);
  }

  FileImportControllerIdentifyFile400ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _title = $v.title;
      _status = $v.status;
      _detail = $v.detail;
      _endpoint = $v.endpoint;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileImportControllerIdentifyFile400Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FileImportControllerIdentifyFile400Response;
  }

  @override
  void update(
      void Function(FileImportControllerIdentifyFile400ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  FileImportControllerIdentifyFile400Response build() => _build();

  _$FileImportControllerIdentifyFile400Response _build() {
    final _$result = _$v ??
        new _$FileImportControllerIdentifyFile400Response._(
            type: type,
            title: title,
            status: status,
            detail: detail,
            endpoint: endpoint);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
