// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PayeeInfoStruct extends BaseStruct {
  PayeeInfoStruct({
    MerchantStruct? merchant,
  }) : _merchant = merchant;

  // "merchant" field.
  MerchantStruct? _merchant;
  MerchantStruct get merchant => _merchant ?? MerchantStruct();
  set merchant(MerchantStruct? val) => _merchant = val;

  void updateMerchant(Function(MerchantStruct) updateFn) {
    updateFn(_merchant ??= MerchantStruct());
  }

  bool hasMerchant() => _merchant != null;

  static PayeeInfoStruct fromMap(Map<String, dynamic> data) => PayeeInfoStruct(
        merchant: data['merchant'] is MerchantStruct
            ? data['merchant']
            : MerchantStruct.maybeFromMap(data['merchant']),
      );

  static PayeeInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? PayeeInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'merchant': _merchant?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'merchant': serializeParam(
          _merchant,
          ParamType.DataStruct,
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
      );

  @override
  String toString() => 'PayeeInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PayeeInfoStruct && merchant == other.merchant;
  }

  @override
  int get hashCode => const ListEquality().hash([merchant]);
}

PayeeInfoStruct createPayeeInfoStruct({
  MerchantStruct? merchant,
}) =>
    PayeeInfoStruct(
      merchant: merchant ?? MerchantStruct(),
    );
