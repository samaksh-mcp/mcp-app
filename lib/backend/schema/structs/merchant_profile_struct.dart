// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MerchantProfileStruct extends BaseStruct {
  MerchantProfileStruct({
    String? txnId,
    String? success,
    int? status,
    String? msg,
    ResponseStruct? response,
  })  : _txnId = txnId,
        _success = success,
        _status = status,
        _msg = msg,
        _response = response;

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

  // "msg" field.
  String? _msg;
  String get msg => _msg ?? '';
  set msg(String? val) => _msg = val;

  bool hasMsg() => _msg != null;

  // "response" field.
  ResponseStruct? _response;
  ResponseStruct get response => _response ?? ResponseStruct();
  set response(ResponseStruct? val) => _response = val;

  void updateResponse(Function(ResponseStruct) updateFn) {
    updateFn(_response ??= ResponseStruct());
  }

  bool hasResponse() => _response != null;

  static MerchantProfileStruct fromMap(Map<String, dynamic> data) =>
      MerchantProfileStruct(
        txnId: data['txn_id'] as String?,
        success: data['success'] as String?,
        status: castToType<int>(data['status']),
        msg: data['msg'] as String?,
        response: data['response'] is ResponseStruct
            ? data['response']
            : ResponseStruct.maybeFromMap(data['response']),
      );

  static MerchantProfileStruct? maybeFromMap(dynamic data) => data is Map
      ? MerchantProfileStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'txn_id': _txnId,
        'success': _success,
        'status': _status,
        'msg': _msg,
        'response': _response?.toMap(),
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
        'msg': serializeParam(
          _msg,
          ParamType.String,
        ),
        'response': serializeParam(
          _response,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static MerchantProfileStruct fromSerializableMap(Map<String, dynamic> data) =>
      MerchantProfileStruct(
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
        msg: deserializeParam(
          data['msg'],
          ParamType.String,
          false,
        ),
        response: deserializeStructParam(
          data['response'],
          ParamType.DataStruct,
          false,
          structBuilder: ResponseStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MerchantProfileStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MerchantProfileStruct &&
        txnId == other.txnId &&
        success == other.success &&
        status == other.status &&
        msg == other.msg &&
        response == other.response;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([txnId, success, status, msg, response]);
}

MerchantProfileStruct createMerchantProfileStruct({
  String? txnId,
  String? success,
  int? status,
  String? msg,
  ResponseStruct? response,
}) =>
    MerchantProfileStruct(
      txnId: txnId,
      success: success,
      status: status,
      msg: msg,
      response: response ?? ResponseStruct(),
    );
