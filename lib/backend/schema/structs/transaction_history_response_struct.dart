// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionHistoryResponseStruct extends BaseStruct {
  TransactionHistoryResponseStruct({
    String? txnId,
    String? success,
    int? status,
    ResponseStruct? response,
  })  : _txnId = txnId,
        _success = success,
        _status = status,
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

  // "response" field.
  ResponseStruct? _response;
  ResponseStruct get response => _response ?? ResponseStruct();
  set response(ResponseStruct? val) => _response = val;

  void updateResponse(Function(ResponseStruct) updateFn) {
    updateFn(_response ??= ResponseStruct());
  }

  bool hasResponse() => _response != null;

  static TransactionHistoryResponseStruct fromMap(Map<String, dynamic> data) =>
      TransactionHistoryResponseStruct(
        txnId: data['txn_id'] as String?,
        success: data['success'] as String?,
        status: castToType<int>(data['status']),
        response: ResponseStruct.maybeFromMap(data['response']),
      );

  static TransactionHistoryResponseStruct? maybeFromMap(dynamic data) => data
          is Map
      ? TransactionHistoryResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'txn_id': _txnId,
        'success': _success,
        'status': _status,
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
        'response': serializeParam(
          _response,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static TransactionHistoryResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TransactionHistoryResponseStruct(
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
        response: deserializeStructParam(
          data['response'],
          ParamType.DataStruct,
          false,
          structBuilder: ResponseStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TransactionHistoryResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransactionHistoryResponseStruct &&
        txnId == other.txnId &&
        success == other.success &&
        status == other.status &&
        response == other.response;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([txnId, success, status, response]);
}

TransactionHistoryResponseStruct createTransactionHistoryResponseStruct({
  String? txnId,
  String? success,
  int? status,
  ResponseStruct? response,
}) =>
    TransactionHistoryResponseStruct(
      txnId: txnId,
      success: success,
      status: status,
      response: response ?? ResponseStruct(),
    );
