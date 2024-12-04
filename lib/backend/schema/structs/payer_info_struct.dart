// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PayerInfoStruct extends BaseStruct {
  PayerInfoStruct({
    CustomerStruct? customer,
    String? id,
  })  : _customer = customer,
        _id = id;

  // "customer" field.
  CustomerStruct? _customer;
  CustomerStruct get customer => _customer ?? CustomerStruct();
  set customer(CustomerStruct? val) => _customer = val;

  void updateCustomer(Function(CustomerStruct) updateFn) {
    updateFn(_customer ??= CustomerStruct());
  }

  bool hasCustomer() => _customer != null;

  // "_id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  static PayerInfoStruct fromMap(Map<String, dynamic> data) => PayerInfoStruct(
        customer: CustomerStruct.maybeFromMap(data['customer']),
        id: data['_id'] as String?,
      );

  static PayerInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? PayerInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'customer': _customer?.toMap(),
        '_id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'customer': serializeParam(
          _customer,
          ParamType.DataStruct,
        ),
        '_id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static PayerInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      PayerInfoStruct(
        customer: deserializeStructParam(
          data['customer'],
          ParamType.DataStruct,
          false,
          structBuilder: CustomerStruct.fromSerializableMap,
        ),
        id: deserializeParam(
          data['_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PayerInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PayerInfoStruct &&
        customer == other.customer &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([customer, id]);
}

PayerInfoStruct createPayerInfoStruct({
  CustomerStruct? customer,
  String? id,
}) =>
    PayerInfoStruct(
      customer: customer ?? CustomerStruct(),
      id: id,
    );
