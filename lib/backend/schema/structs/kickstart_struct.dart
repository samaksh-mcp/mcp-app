// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class KickstartStruct extends BaseStruct {
  KickstartStruct({
    String? packageId,
    int? validity,
    int? cpcCount,
    String? expireDate,
    int? status,
    String? grouptxnID,
    String? did,
  })  : _packageId = packageId,
        _validity = validity,
        _cpcCount = cpcCount,
        _expireDate = expireDate,
        _status = status,
        _grouptxnID = grouptxnID,
        _did = did;

  // "package_id" field.
  String? _packageId;
  String get packageId => _packageId ?? '';
  set packageId(String? val) => _packageId = val;

  bool hasPackageId() => _packageId != null;

  // "validity" field.
  int? _validity;
  int get validity => _validity ?? 0;
  set validity(int? val) => _validity = val;

  void incrementValidity(int amount) => validity = validity + amount;

  bool hasValidity() => _validity != null;

  // "cpc_count" field.
  int? _cpcCount;
  int get cpcCount => _cpcCount ?? 0;
  set cpcCount(int? val) => _cpcCount = val;

  void incrementCpcCount(int amount) => cpcCount = cpcCount + amount;

  bool hasCpcCount() => _cpcCount != null;

  // "expire_date" field.
  String? _expireDate;
  String get expireDate => _expireDate ?? '';
  set expireDate(String? val) => _expireDate = val;

  bool hasExpireDate() => _expireDate != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;

  void incrementStatus(int amount) => status = status + amount;

  bool hasStatus() => _status != null;

  // "grouptxnID" field.
  String? _grouptxnID;
  String get grouptxnID => _grouptxnID ?? '';
  set grouptxnID(String? val) => _grouptxnID = val;

  bool hasGrouptxnID() => _grouptxnID != null;

  // "did" field.
  String? _did;
  String get did => _did ?? '';
  set did(String? val) => _did = val;

  bool hasDid() => _did != null;

  static KickstartStruct fromMap(Map<String, dynamic> data) => KickstartStruct(
        packageId: data['package_id'] as String?,
        validity: castToType<int>(data['validity']),
        cpcCount: castToType<int>(data['cpc_count']),
        expireDate: data['expire_date'] as String?,
        status: castToType<int>(data['status']),
        grouptxnID: data['grouptxnID'] as String?,
        did: data['did'] as String?,
      );

  static KickstartStruct? maybeFromMap(dynamic data) => data is Map
      ? KickstartStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'package_id': _packageId,
        'validity': _validity,
        'cpc_count': _cpcCount,
        'expire_date': _expireDate,
        'status': _status,
        'grouptxnID': _grouptxnID,
        'did': _did,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'package_id': serializeParam(
          _packageId,
          ParamType.String,
        ),
        'validity': serializeParam(
          _validity,
          ParamType.int,
        ),
        'cpc_count': serializeParam(
          _cpcCount,
          ParamType.int,
        ),
        'expire_date': serializeParam(
          _expireDate,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
        'grouptxnID': serializeParam(
          _grouptxnID,
          ParamType.String,
        ),
        'did': serializeParam(
          _did,
          ParamType.String,
        ),
      }.withoutNulls;

  static KickstartStruct fromSerializableMap(Map<String, dynamic> data) =>
      KickstartStruct(
        packageId: deserializeParam(
          data['package_id'],
          ParamType.String,
          false,
        ),
        validity: deserializeParam(
          data['validity'],
          ParamType.int,
          false,
        ),
        cpcCount: deserializeParam(
          data['cpc_count'],
          ParamType.int,
          false,
        ),
        expireDate: deserializeParam(
          data['expire_date'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
        grouptxnID: deserializeParam(
          data['grouptxnID'],
          ParamType.String,
          false,
        ),
        did: deserializeParam(
          data['did'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'KickstartStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is KickstartStruct &&
        packageId == other.packageId &&
        validity == other.validity &&
        cpcCount == other.cpcCount &&
        expireDate == other.expireDate &&
        status == other.status &&
        grouptxnID == other.grouptxnID &&
        did == other.did;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [packageId, validity, cpcCount, expireDate, status, grouptxnID, did]);
}

KickstartStruct createKickstartStruct({
  String? packageId,
  int? validity,
  int? cpcCount,
  String? expireDate,
  int? status,
  String? grouptxnID,
  String? did,
}) =>
    KickstartStruct(
      packageId: packageId,
      validity: validity,
      cpcCount: cpcCount,
      expireDate: expireDate,
      status: status,
      grouptxnID: grouptxnID,
      did: did,
    );
