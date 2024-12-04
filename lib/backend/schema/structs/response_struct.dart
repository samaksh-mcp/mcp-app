// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponseStruct extends BaseStruct {
  ResponseStruct({
    List<TransactionsStruct>? transactions,
    TxnSumAmountStruct? txnSumAmount,
    int? firebaseNotificationCount,
    BillingInfoStruct? billingInfo,
  })  : _transactions = transactions,
        _txnSumAmount = txnSumAmount,
        _firebaseNotificationCount = firebaseNotificationCount,
        _billingInfo = billingInfo;

  // "transactions" field.
  List<TransactionsStruct>? _transactions;
  List<TransactionsStruct> get transactions => _transactions ?? const [];
  set transactions(List<TransactionsStruct>? val) => _transactions = val;

  void updateTransactions(Function(List<TransactionsStruct>) updateFn) {
    updateFn(_transactions ??= []);
  }

  bool hasTransactions() => _transactions != null;

  // "txn_sum_amount" field.
  TxnSumAmountStruct? _txnSumAmount;
  TxnSumAmountStruct get txnSumAmount => _txnSumAmount ?? TxnSumAmountStruct();
  set txnSumAmount(TxnSumAmountStruct? val) => _txnSumAmount = val;

  void updateTxnSumAmount(Function(TxnSumAmountStruct) updateFn) {
    updateFn(_txnSumAmount ??= TxnSumAmountStruct());
  }

  bool hasTxnSumAmount() => _txnSumAmount != null;

  // "firebase_notification_count" field.
  int? _firebaseNotificationCount;
  int get firebaseNotificationCount => _firebaseNotificationCount ?? 0;
  set firebaseNotificationCount(int? val) => _firebaseNotificationCount = val;

  void incrementFirebaseNotificationCount(int amount) =>
      firebaseNotificationCount = firebaseNotificationCount + amount;

  bool hasFirebaseNotificationCount() => _firebaseNotificationCount != null;

  // "billing_info" field.
  BillingInfoStruct? _billingInfo;
  BillingInfoStruct get billingInfo => _billingInfo ?? BillingInfoStruct();
  set billingInfo(BillingInfoStruct? val) => _billingInfo = val;

  void updateBillingInfo(Function(BillingInfoStruct) updateFn) {
    updateFn(_billingInfo ??= BillingInfoStruct());
  }

  bool hasBillingInfo() => _billingInfo != null;

  static ResponseStruct fromMap(Map<String, dynamic> data) => ResponseStruct(
        transactions: getStructList(
          data['transactions'],
          TransactionsStruct.fromMap,
        ),
        txnSumAmount: TxnSumAmountStruct.maybeFromMap(data['txn_sum_amount']),
        firebaseNotificationCount:
            castToType<int>(data['firebase_notification_count']),
        billingInfo: BillingInfoStruct.maybeFromMap(data['billing_info']),
      );

  static ResponseStruct? maybeFromMap(dynamic data) =>
      data is Map ? ResponseStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'transactions': _transactions?.map((e) => e.toMap()).toList(),
        'txn_sum_amount': _txnSumAmount?.toMap(),
        'firebase_notification_count': _firebaseNotificationCount,
        'billing_info': _billingInfo?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'transactions': serializeParam(
          _transactions,
          ParamType.DataStruct,
          isList: true,
        ),
        'txn_sum_amount': serializeParam(
          _txnSumAmount,
          ParamType.DataStruct,
        ),
        'firebase_notification_count': serializeParam(
          _firebaseNotificationCount,
          ParamType.int,
        ),
        'billing_info': serializeParam(
          _billingInfo,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ResponseStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResponseStruct(
        transactions: deserializeStructParam<TransactionsStruct>(
          data['transactions'],
          ParamType.DataStruct,
          true,
          structBuilder: TransactionsStruct.fromSerializableMap,
        ),
        txnSumAmount: deserializeStructParam(
          data['txn_sum_amount'],
          ParamType.DataStruct,
          false,
          structBuilder: TxnSumAmountStruct.fromSerializableMap,
        ),
        firebaseNotificationCount: deserializeParam(
          data['firebase_notification_count'],
          ParamType.int,
          false,
        ),
        billingInfo: deserializeStructParam(
          data['billing_info'],
          ParamType.DataStruct,
          false,
          structBuilder: BillingInfoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ResponseStruct &&
        listEquality.equals(transactions, other.transactions) &&
        txnSumAmount == other.txnSumAmount &&
        firebaseNotificationCount == other.firebaseNotificationCount &&
        billingInfo == other.billingInfo;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [transactions, txnSumAmount, firebaseNotificationCount, billingInfo]);
}

ResponseStruct createResponseStruct({
  TxnSumAmountStruct? txnSumAmount,
  int? firebaseNotificationCount,
  BillingInfoStruct? billingInfo,
}) =>
    ResponseStruct(
      txnSumAmount: txnSumAmount ?? TxnSumAmountStruct(),
      firebaseNotificationCount: firebaseNotificationCount,
      billingInfo: billingInfo ?? BillingInfoStruct(),
    );
