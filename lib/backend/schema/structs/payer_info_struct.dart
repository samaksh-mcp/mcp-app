// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PayerInfoStruct extends BaseStruct {
  PayerInfoStruct({
    CustomerStruct? customer,
  }) : _customer = customer;

  // "customer" field.
  CustomerStruct? _customer;
  CustomerStruct get customer => _customer ?? CustomerStruct();
  set customer(CustomerStruct? val) => _customer = val;

  void updateCustomer(Function(CustomerStruct) updateFn) {
    updateFn(_customer ??= CustomerStruct());
  }

  bool hasCustomer() => _customer != null;

  static PayerInfoStruct fromMap(Map<String, dynamic> data) => PayerInfoStruct(
        customer: data['customer'] is CustomerStruct
            ? data['customer']
            : CustomerStruct.maybeFromMap(data['customer']),
      );

  static PayerInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? PayerInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'customer': _customer?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'customer': serializeParam(
          _customer,
          ParamType.DataStruct,
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
      );

  @override
  String toString() => 'PayerInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PayerInfoStruct && customer == other.customer;
  }

  @override
  int get hashCode => const ListEquality().hash([customer]);
}

PayerInfoStruct createPayerInfoStruct({
  CustomerStruct? customer,
}) =>
    PayerInfoStruct(
      customer: customer ?? CustomerStruct(),
    );
