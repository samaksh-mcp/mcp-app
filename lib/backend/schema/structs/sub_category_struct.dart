// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubCategoryStruct extends BaseStruct {
  SubCategoryStruct({
    String? code,
    String? name,
  })  : _code = code,
        _name = name;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static SubCategoryStruct fromMap(Map<String, dynamic> data) =>
      SubCategoryStruct(
        code: data['code'] as String?,
        name: data['name'] as String?,
      );

  static SubCategoryStruct? maybeFromMap(dynamic data) => data is Map
      ? SubCategoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'code': _code,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static SubCategoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      SubCategoryStruct(
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SubCategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SubCategoryStruct &&
        code == other.code &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([code, name]);
}

SubCategoryStruct createSubCategoryStruct({
  String? code,
  String? name,
}) =>
    SubCategoryStruct(
      code: code,
      name: name,
    );
