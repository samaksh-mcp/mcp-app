// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PayeeInfoStruct extends BaseStruct {
  PayeeInfoStruct({
    MerchantStruct? merchant,
    String? id,
  })  : _merchant = merchant,
        _id = id;

  // "merchant" field.
  MerchantStruct? _merchant;
  MerchantStruct get merchant => _merchant ?? MerchantStruct();
  set merchant(MerchantStruct? val) => _merchant = val;

  void updateMerchant(Function(MerchantStruct) updateFn) {
    updateFn(_merchant ??= MerchantStruct());
  }

  bool hasMerchant() => _merchant != null;

  // "_id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  static PayeeInfoStruct fromMap(Map<String, dynamic> data) => PayeeInfoStruct(
        merchant: MerchantStruct.maybeFromMap(data['merchant']),
        id: data['_id'] as String?,
      );

  static PayeeInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? PayeeInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'merchant': _merchant?.toMap(),
        '_id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'merchant': serializeParam(
          _merchant,
          ParamType.DataStruct,
        ),
        '_id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static PayeeInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      PayeeInfoStruct(
        merchant: deserializeStructParam(
          data['merchant'],
          ParamType.DataStruct,
          false,
          structBuilder: MerchantStruct.fromSerializableMap,
        ),
        id: deserializeParam(
          data['_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PayeeInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PayeeInfoStruct &&
        merchant == other.merchant &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([merchant, id]);
}

PayeeInfoStruct createPayeeInfoStruct({
  MerchantStruct? merchant,
  String? id,
}) =>
    PayeeInfoStruct(
      merchant: merchant ?? MerchantStruct(),
      id: id,
    );
