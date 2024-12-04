// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BillingInfoStruct extends BaseStruct {
  BillingInfoStruct({
    int? cpcCount,
    int? totalCpcCount,
    int? validity,
    int? status,
  })  : _cpcCount = cpcCount,
        _totalCpcCount = totalCpcCount,
        _validity = validity,
        _status = status;

  // "cpc_count" field.
  int? _cpcCount;
  int get cpcCount => _cpcCount ?? 0;
  set cpcCount(int? val) => _cpcCount = val;

  void incrementCpcCount(int amount) => cpcCount = cpcCount + amount;

  bool hasCpcCount() => _cpcCount != null;

  // "total_cpc_count" field.
  int? _totalCpcCount;
  int get totalCpcCount => _totalCpcCount ?? 0;
  set totalCpcCount(int? val) => _totalCpcCount = val;

  void incrementTotalCpcCount(int amount) =>
      totalCpcCount = totalCpcCount + amount;

  bool hasTotalCpcCount() => _totalCpcCount != null;

  // "validity" field.
  int? _validity;
  int get validity => _validity ?? 0;
  set validity(int? val) => _validity = val;

  void incrementValidity(int amount) => validity = validity + amount;

  bool hasValidity() => _validity != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;

  void incrementStatus(int amount) => status = status + amount;

  bool hasStatus() => _status != null;

  static BillingInfoStruct fromMap(Map<String, dynamic> data) =>
      BillingInfoStruct(
        cpcCount: castToType<int>(data['cpc_count']),
        totalCpcCount: castToType<int>(data['total_cpc_count']),
        validity: castToType<int>(data['validity']),
        status: castToType<int>(data['status']),
      );

  static BillingInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? BillingInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'cpc_count': _cpcCount,
        'total_cpc_count': _totalCpcCount,
        'validity': _validity,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cpc_count': serializeParam(
          _cpcCount,
          ParamType.int,
        ),
        'total_cpc_count': serializeParam(
          _totalCpcCount,
          ParamType.int,
        ),
        'validity': serializeParam(
          _validity,
          ParamType.int,
        ),
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
      }.withoutNulls;

  static BillingInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      BillingInfoStruct(
        cpcCount: deserializeParam(
          data['cpc_count'],
          ParamType.int,
          false,
        ),
        totalCpcCount: deserializeParam(
          data['total_cpc_count'],
          ParamType.int,
          false,
        ),
        validity: deserializeParam(
          data['validity'],
          ParamType.int,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'BillingInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BillingInfoStruct &&
        cpcCount == other.cpcCount &&
        totalCpcCount == other.totalCpcCount &&
        validity == other.validity &&
        status == other.status;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([cpcCount, totalCpcCount, validity, status]);
}

BillingInfoStruct createBillingInfoStruct({
  int? cpcCount,
  int? totalCpcCount,
  int? validity,
  int? status,
}) =>
    BillingInfoStruct(
      cpcCount: cpcCount,
      totalCpcCount: totalCpcCount,
      validity: validity,
      status: status,
    );
