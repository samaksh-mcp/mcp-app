// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TxnSumAmountStruct extends BaseStruct {
  TxnSumAmountStruct({
    int? expired,
    int? pending,
    int? success,
    int? settled,
    int? partnerFee,
    String? id,
  })  : _expired = expired,
        _pending = pending,
        _success = success,
        _settled = settled,
        _partnerFee = partnerFee,
        _id = id;

  // "Expired" field.
  int? _expired;
  int get expired => _expired ?? 0;
  set expired(int? val) => _expired = val;

  void incrementExpired(int amount) => expired = expired + amount;

  bool hasExpired() => _expired != null;

  // "Pending" field.
  int? _pending;
  int get pending => _pending ?? 0;
  set pending(int? val) => _pending = val;

  void incrementPending(int amount) => pending = pending + amount;

  bool hasPending() => _pending != null;

  // "Success" field.
  int? _success;
  int get success => _success ?? 0;
  set success(int? val) => _success = val;

  void incrementSuccess(int amount) => success = success + amount;

  bool hasSuccess() => _success != null;

  // "Settled" field.
  int? _settled;
  int get settled => _settled ?? 0;
  set settled(int? val) => _settled = val;

  void incrementSettled(int amount) => settled = settled + amount;

  bool hasSettled() => _settled != null;

  // "Partner_Fee" field.
  int? _partnerFee;
  int get partnerFee => _partnerFee ?? 0;
  set partnerFee(int? val) => _partnerFee = val;

  void incrementPartnerFee(int amount) => partnerFee = partnerFee + amount;

  bool hasPartnerFee() => _partnerFee != null;

  // "_id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  static TxnSumAmountStruct fromMap(Map<String, dynamic> data) =>
      TxnSumAmountStruct(
        expired: castToType<int>(data['Expired']),
        pending: castToType<int>(data['Pending']),
        success: castToType<int>(data['Success']),
        settled: castToType<int>(data['Settled']),
        partnerFee: castToType<int>(data['Partner_Fee']),
        id: data['_id'] as String?,
      );

  static TxnSumAmountStruct? maybeFromMap(dynamic data) => data is Map
      ? TxnSumAmountStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Expired': _expired,
        'Pending': _pending,
        'Success': _success,
        'Settled': _settled,
        'Partner_Fee': _partnerFee,
        '_id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Expired': serializeParam(
          _expired,
          ParamType.int,
        ),
        'Pending': serializeParam(
          _pending,
          ParamType.int,
        ),
        'Success': serializeParam(
          _success,
          ParamType.int,
        ),
        'Settled': serializeParam(
          _settled,
          ParamType.int,
        ),
        'Partner_Fee': serializeParam(
          _partnerFee,
          ParamType.int,
        ),
        '_id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static TxnSumAmountStruct fromSerializableMap(Map<String, dynamic> data) =>
      TxnSumAmountStruct(
        expired: deserializeParam(
          data['Expired'],
          ParamType.int,
          false,
        ),
        pending: deserializeParam(
          data['Pending'],
          ParamType.int,
          false,
        ),
        success: deserializeParam(
          data['Success'],
          ParamType.int,
          false,
        ),
        settled: deserializeParam(
          data['Settled'],
          ParamType.int,
          false,
        ),
        partnerFee: deserializeParam(
          data['Partner_Fee'],
          ParamType.int,
          false,
        ),
        id: deserializeParam(
          data['_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TxnSumAmountStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TxnSumAmountStruct &&
        expired == other.expired &&
        pending == other.pending &&
        success == other.success &&
        settled == other.settled &&
        partnerFee == other.partnerFee &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([expired, pending, success, settled, partnerFee, id]);
}

TxnSumAmountStruct createTxnSumAmountStruct({
  int? expired,
  int? pending,
  int? success,
  int? settled,
  int? partnerFee,
  String? id,
}) =>
    TxnSumAmountStruct(
      expired: expired,
      pending: pending,
      success: success,
      settled: settled,
      partnerFee: partnerFee,
      id: id,
    );
