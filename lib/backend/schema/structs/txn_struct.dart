// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TxnStruct extends BaseStruct {
  TxnStruct({
    String? txnType,
    PayerInfoStruct? payerInfo,
    PayeeInfoStruct? payeeInfo,
    String? bankTxnRefId,
    String? txnAmount,
    String? txnRequest,
    String? expirationDate,
    String? bankTxnStatus,
    String? bankTxnResult,
    String? bankRrn,
    String? completedAt,
    String? initiatedAt,
    String? didNumber,
    String? mcpTxnId,
  })  : _txnType = txnType,
        _payerInfo = payerInfo,
        _payeeInfo = payeeInfo,
        _bankTxnRefId = bankTxnRefId,
        _txnAmount = txnAmount,
        _txnRequest = txnRequest,
        _expirationDate = expirationDate,
        _bankTxnStatus = bankTxnStatus,
        _bankTxnResult = bankTxnResult,
        _bankRrn = bankRrn,
        _completedAt = completedAt,
        _initiatedAt = initiatedAt,
        _didNumber = didNumber,
        _mcpTxnId = mcpTxnId;

  // "txn_type" field.
  String? _txnType;
  String get txnType => _txnType ?? '';
  set txnType(String? val) => _txnType = val;

  bool hasTxnType() => _txnType != null;

  // "payer_info" field.
  PayerInfoStruct? _payerInfo;
  PayerInfoStruct get payerInfo => _payerInfo ?? PayerInfoStruct();
  set payerInfo(PayerInfoStruct? val) => _payerInfo = val;

  void updatePayerInfo(Function(PayerInfoStruct) updateFn) {
    updateFn(_payerInfo ??= PayerInfoStruct());
  }

  bool hasPayerInfo() => _payerInfo != null;

  // "payee_info" field.
  PayeeInfoStruct? _payeeInfo;
  PayeeInfoStruct get payeeInfo => _payeeInfo ?? PayeeInfoStruct();
  set payeeInfo(PayeeInfoStruct? val) => _payeeInfo = val;

  void updatePayeeInfo(Function(PayeeInfoStruct) updateFn) {
    updateFn(_payeeInfo ??= PayeeInfoStruct());
  }

  bool hasPayeeInfo() => _payeeInfo != null;

  // "bank_txn_ref_id" field.
  String? _bankTxnRefId;
  String get bankTxnRefId => _bankTxnRefId ?? '';
  set bankTxnRefId(String? val) => _bankTxnRefId = val;

  bool hasBankTxnRefId() => _bankTxnRefId != null;

  // "txn_amount" field.
  String? _txnAmount;
  String get txnAmount => _txnAmount ?? '';
  set txnAmount(String? val) => _txnAmount = val;

  bool hasTxnAmount() => _txnAmount != null;

  // "txn_request" field.
  String? _txnRequest;
  String get txnRequest => _txnRequest ?? '';
  set txnRequest(String? val) => _txnRequest = val;

  bool hasTxnRequest() => _txnRequest != null;

  // "expiration_date" field.
  String? _expirationDate;
  String get expirationDate => _expirationDate ?? '';
  set expirationDate(String? val) => _expirationDate = val;

  bool hasExpirationDate() => _expirationDate != null;

  // "bank_txn_status" field.
  String? _bankTxnStatus;
  String get bankTxnStatus => _bankTxnStatus ?? '';
  set bankTxnStatus(String? val) => _bankTxnStatus = val;

  bool hasBankTxnStatus() => _bankTxnStatus != null;

  // "bank_txn_result" field.
  String? _bankTxnResult;
  String get bankTxnResult => _bankTxnResult ?? '';
  set bankTxnResult(String? val) => _bankTxnResult = val;

  bool hasBankTxnResult() => _bankTxnResult != null;

  // "bank_rrn" field.
  String? _bankRrn;
  String get bankRrn => _bankRrn ?? '';
  set bankRrn(String? val) => _bankRrn = val;

  bool hasBankRrn() => _bankRrn != null;

  // "completed_at" field.
  String? _completedAt;
  String get completedAt => _completedAt ?? '';
  set completedAt(String? val) => _completedAt = val;

  bool hasCompletedAt() => _completedAt != null;

  // "initiated_at" field.
  String? _initiatedAt;
  String get initiatedAt => _initiatedAt ?? '';
  set initiatedAt(String? val) => _initiatedAt = val;

  bool hasInitiatedAt() => _initiatedAt != null;

  // "did_number" field.
  String? _didNumber;
  String get didNumber => _didNumber ?? '';
  set didNumber(String? val) => _didNumber = val;

  bool hasDidNumber() => _didNumber != null;

  // "mcp_txn_id" field.
  String? _mcpTxnId;
  String get mcpTxnId => _mcpTxnId ?? '';
  set mcpTxnId(String? val) => _mcpTxnId = val;

  bool hasMcpTxnId() => _mcpTxnId != null;

  static TxnStruct fromMap(Map<String, dynamic> data) => TxnStruct(
        txnType: data['txn_type'] as String?,
        payerInfo: data['payer_info'] is PayerInfoStruct
            ? data['payer_info']
            : PayerInfoStruct.maybeFromMap(data['payer_info']),
        payeeInfo: data['payee_info'] is PayeeInfoStruct
            ? data['payee_info']
            : PayeeInfoStruct.maybeFromMap(data['payee_info']),
        bankTxnRefId: data['bank_txn_ref_id'] as String?,
        txnAmount: data['txn_amount'] as String?,
        txnRequest: data['txn_request'] as String?,
        expirationDate: data['expiration_date'] as String?,
        bankTxnStatus: data['bank_txn_status'] as String?,
        bankTxnResult: data['bank_txn_result'] as String?,
        bankRrn: data['bank_rrn'] as String?,
        completedAt: data['completed_at'] as String?,
        initiatedAt: data['initiated_at'] as String?,
        didNumber: data['did_number'] as String?,
        mcpTxnId: data['mcp_txn_id'] as String?,
      );

  static TxnStruct? maybeFromMap(dynamic data) =>
      data is Map ? TxnStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'txn_type': _txnType,
        'payer_info': _payerInfo?.toMap(),
        'payee_info': _payeeInfo?.toMap(),
        'bank_txn_ref_id': _bankTxnRefId,
        'txn_amount': _txnAmount,
        'txn_request': _txnRequest,
        'expiration_date': _expirationDate,
        'bank_txn_status': _bankTxnStatus,
        'bank_txn_result': _bankTxnResult,
        'bank_rrn': _bankRrn,
        'completed_at': _completedAt,
        'initiated_at': _initiatedAt,
        'did_number': _didNumber,
        'mcp_txn_id': _mcpTxnId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'txn_type': serializeParam(
          _txnType,
          ParamType.String,
        ),
        'payer_info': serializeParam(
          _payerInfo,
          ParamType.DataStruct,
        ),
        'payee_info': serializeParam(
          _payeeInfo,
          ParamType.DataStruct,
        ),
        'bank_txn_ref_id': serializeParam(
          _bankTxnRefId,
          ParamType.String,
        ),
        'txn_amount': serializeParam(
          _txnAmount,
          ParamType.String,
        ),
        'txn_request': serializeParam(
          _txnRequest,
          ParamType.String,
        ),
        'expiration_date': serializeParam(
          _expirationDate,
          ParamType.String,
        ),
        'bank_txn_status': serializeParam(
          _bankTxnStatus,
          ParamType.String,
        ),
        'bank_txn_result': serializeParam(
          _bankTxnResult,
          ParamType.String,
        ),
        'bank_rrn': serializeParam(
          _bankRrn,
          ParamType.String,
        ),
        'completed_at': serializeParam(
          _completedAt,
          ParamType.String,
        ),
        'initiated_at': serializeParam(
          _initiatedAt,
          ParamType.String,
        ),
        'did_number': serializeParam(
          _didNumber,
          ParamType.String,
        ),
        'mcp_txn_id': serializeParam(
          _mcpTxnId,
          ParamType.String,
        ),
      }.withoutNulls;

  static TxnStruct fromSerializableMap(Map<String, dynamic> data) => TxnStruct(
        txnType: deserializeParam(
          data['txn_type'],
          ParamType.String,
          false,
        ),
        payerInfo: deserializeStructParam(
          data['payer_info'],
          ParamType.DataStruct,
          false,
          structBuilder: PayerInfoStruct.fromSerializableMap,
        ),
        payeeInfo: deserializeStructParam(
          data['payee_info'],
          ParamType.DataStruct,
          false,
          structBuilder: PayeeInfoStruct.fromSerializableMap,
        ),
        bankTxnRefId: deserializeParam(
          data['bank_txn_ref_id'],
          ParamType.String,
          false,
        ),
        txnAmount: deserializeParam(
          data['txn_amount'],
          ParamType.String,
          false,
        ),
        txnRequest: deserializeParam(
          data['txn_request'],
          ParamType.String,
          false,
        ),
        expirationDate: deserializeParam(
          data['expiration_date'],
          ParamType.String,
          false,
        ),
        bankTxnStatus: deserializeParam(
          data['bank_txn_status'],
          ParamType.String,
          false,
        ),
        bankTxnResult: deserializeParam(
          data['bank_txn_result'],
          ParamType.String,
          false,
        ),
        bankRrn: deserializeParam(
          data['bank_rrn'],
          ParamType.String,
          false,
        ),
        completedAt: deserializeParam(
          data['completed_at'],
          ParamType.String,
          false,
        ),
        initiatedAt: deserializeParam(
          data['initiated_at'],
          ParamType.String,
          false,
        ),
        didNumber: deserializeParam(
          data['did_number'],
          ParamType.String,
          false,
        ),
        mcpTxnId: deserializeParam(
          data['mcp_txn_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TxnStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TxnStruct &&
        txnType == other.txnType &&
        payerInfo == other.payerInfo &&
        payeeInfo == other.payeeInfo &&
        bankTxnRefId == other.bankTxnRefId &&
        txnAmount == other.txnAmount &&
        txnRequest == other.txnRequest &&
        expirationDate == other.expirationDate &&
        bankTxnStatus == other.bankTxnStatus &&
        bankTxnResult == other.bankTxnResult &&
        bankRrn == other.bankRrn &&
        completedAt == other.completedAt &&
        initiatedAt == other.initiatedAt &&
        didNumber == other.didNumber &&
        mcpTxnId == other.mcpTxnId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        txnType,
        payerInfo,
        payeeInfo,
        bankTxnRefId,
        txnAmount,
        txnRequest,
        expirationDate,
        bankTxnStatus,
        bankTxnResult,
        bankRrn,
        completedAt,
        initiatedAt,
        didNumber,
        mcpTxnId
      ]);
}

TxnStruct createTxnStruct({
  String? txnType,
  PayerInfoStruct? payerInfo,
  PayeeInfoStruct? payeeInfo,
  String? bankTxnRefId,
  String? txnAmount,
  String? txnRequest,
  String? expirationDate,
  String? bankTxnStatus,
  String? bankTxnResult,
  String? bankRrn,
  String? completedAt,
  String? initiatedAt,
  String? didNumber,
  String? mcpTxnId,
}) =>
    TxnStruct(
      txnType: txnType,
      payerInfo: payerInfo ?? PayerInfoStruct(),
      payeeInfo: payeeInfo ?? PayeeInfoStruct(),
      bankTxnRefId: bankTxnRefId,
      txnAmount: txnAmount,
      txnRequest: txnRequest,
      expirationDate: expirationDate,
      bankTxnStatus: bankTxnStatus,
      bankTxnResult: bankTxnResult,
      bankRrn: bankRrn,
      completedAt: completedAt,
      initiatedAt: initiatedAt,
      didNumber: didNumber,
      mcpTxnId: mcpTxnId,
    );
