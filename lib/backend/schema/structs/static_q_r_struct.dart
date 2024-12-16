// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StaticQRStruct extends BaseStruct {
  StaticQRStruct({
    String? txnId,
    String? success,
    int? status,
    ResponseDataStruct? responseData,
  })  : _txnId = txnId,
        _success = success,
        _status = status,
        _responseData = responseData;

  // "txn_id" field.
  String? _txnId;
  String get txnId => _txnId ?? '';
  set txnId(String? val) => _txnId = val;

  bool hasTxnId() => _txnId != null;

  // "success" field.
  String? _success;
  String get success => _success ?? '';
  set success(String? val) => _success = val;

  bool hasSuccess() => _success != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;

  void incrementStatus(int amount) => status = status + amount;

  bool hasStatus() => _status != null;

  // "response_data" field.
  ResponseDataStruct? _responseData;
  ResponseDataStruct get responseData => _responseData ?? ResponseDataStruct();
  set responseData(ResponseDataStruct? val) => _responseData = val;

  void updateResponseData(Function(ResponseDataStruct) updateFn) {
    updateFn(_responseData ??= ResponseDataStruct());
  }

  bool hasResponseData() => _responseData != null;

  static StaticQRStruct fromMap(Map<String, dynamic> data) => StaticQRStruct(
        txnId: data['txn_id'] as String?,
        success: data['success'] as String?,
        status: castToType<int>(data['status']),
        responseData: data['response_data'] is ResponseDataStruct
            ? data['response_data']
            : ResponseDataStruct.maybeFromMap(data['response_data']),
      );

  static StaticQRStruct? maybeFromMap(dynamic data) =>
      data is Map ? StaticQRStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'txn_id': _txnId,
        'success': _success,
        'status': _status,
        'response_data': _responseData?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'txn_id': serializeParam(
          _txnId,
          ParamType.String,
        ),
        'success': serializeParam(
          _success,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
        'response_data': serializeParam(
          _responseData,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static StaticQRStruct fromSerializableMap(Map<String, dynamic> data) =>
      StaticQRStruct(
        txnId: deserializeParam(
          data['txn_id'],
          ParamType.String,
          false,
        ),
        success: deserializeParam(
          data['success'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
        responseData: deserializeStructParam(
          data['response_data'],
          ParamType.DataStruct,
          false,
          structBuilder: ResponseDataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'StaticQRStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StaticQRStruct &&
        txnId == other.txnId &&
        success == other.success &&
        status == other.status &&
        responseData == other.responseData;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([txnId, success, status, responseData]);
}

StaticQRStruct createStaticQRStruct({
  String? txnId,
  String? success,
  int? status,
  ResponseDataStruct? responseData,
}) =>
    StaticQRStruct(
      txnId: txnId,
      success: success,
      status: status,
      responseData: responseData ?? ResponseDataStruct(),
    );
