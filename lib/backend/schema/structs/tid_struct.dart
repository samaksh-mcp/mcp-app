// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TidStruct extends BaseStruct {
  TidStruct({
    String? tid,
  }) : _tid = tid;

  // "tid" field.
  String? _tid;
  String get tid => _tid ?? '';
  set tid(String? val) => _tid = val;

  bool hasTid() => _tid != null;

  static TidStruct fromMap(Map<String, dynamic> data) => TidStruct(
        tid: data['tid'] as String?,
      );

  static TidStruct? maybeFromMap(dynamic data) =>
      data is Map ? TidStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'tid': _tid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tid': serializeParam(
          _tid,
          ParamType.String,
        ),
      }.withoutNulls;

  static TidStruct fromSerializableMap(Map<String, dynamic> data) => TidStruct(
        tid: deserializeParam(
          data['tid'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TidStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TidStruct && tid == other.tid;
  }

  @override
  int get hashCode => const ListEquality().hash([tid]);
}

TidStruct createTidStruct({
  String? tid,
}) =>
    TidStruct(
      tid: tid,
    );
