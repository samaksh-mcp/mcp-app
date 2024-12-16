// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponseDataStruct extends BaseStruct {
  ResponseDataStruct({
    String? qrCodeUrl,
    MerchantDidStruct? merchantDid,
    String? merchantVpa,
    ProfileInfoStruct? profileInfo,
  })  : _qrCodeUrl = qrCodeUrl,
        _merchantDid = merchantDid,
        _merchantVpa = merchantVpa,
        _profileInfo = profileInfo;

  // "qr_code_url" field.
  String? _qrCodeUrl;
  String get qrCodeUrl => _qrCodeUrl ?? '';
  set qrCodeUrl(String? val) => _qrCodeUrl = val;

  bool hasQrCodeUrl() => _qrCodeUrl != null;

  // "Merchant_did" field.
  MerchantDidStruct? _merchantDid;
  MerchantDidStruct get merchantDid => _merchantDid ?? MerchantDidStruct();
  set merchantDid(MerchantDidStruct? val) => _merchantDid = val;

  void updateMerchantDid(Function(MerchantDidStruct) updateFn) {
    updateFn(_merchantDid ??= MerchantDidStruct());
  }

  bool hasMerchantDid() => _merchantDid != null;

  // "Merchant_vpa" field.
  String? _merchantVpa;
  String get merchantVpa => _merchantVpa ?? '';
  set merchantVpa(String? val) => _merchantVpa = val;

  bool hasMerchantVpa() => _merchantVpa != null;

  // "profile_info" field.
  ProfileInfoStruct? _profileInfo;
  ProfileInfoStruct get profileInfo => _profileInfo ?? ProfileInfoStruct();
  set profileInfo(ProfileInfoStruct? val) => _profileInfo = val;

  void updateProfileInfo(Function(ProfileInfoStruct) updateFn) {
    updateFn(_profileInfo ??= ProfileInfoStruct());
  }

  bool hasProfileInfo() => _profileInfo != null;

  static ResponseDataStruct fromMap(Map<String, dynamic> data) =>
      ResponseDataStruct(
        qrCodeUrl: data['qr_code_url'] as String?,
        merchantDid: data['Merchant_did'] is MerchantDidStruct
            ? data['Merchant_did']
            : MerchantDidStruct.maybeFromMap(data['Merchant_did']),
        merchantVpa: data['Merchant_vpa'] as String?,
        profileInfo: data['profile_info'] is ProfileInfoStruct
            ? data['profile_info']
            : ProfileInfoStruct.maybeFromMap(data['profile_info']),
      );

  static ResponseDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponseDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'qr_code_url': _qrCodeUrl,
        'Merchant_did': _merchantDid?.toMap(),
        'Merchant_vpa': _merchantVpa,
        'profile_info': _profileInfo?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'qr_code_url': serializeParam(
          _qrCodeUrl,
          ParamType.String,
        ),
        'Merchant_did': serializeParam(
          _merchantDid,
          ParamType.DataStruct,
        ),
        'Merchant_vpa': serializeParam(
          _merchantVpa,
          ParamType.String,
        ),
        'profile_info': serializeParam(
          _profileInfo,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ResponseDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResponseDataStruct(
        qrCodeUrl: deserializeParam(
          data['qr_code_url'],
          ParamType.String,
          false,
        ),
        merchantDid: deserializeStructParam(
          data['Merchant_did'],
          ParamType.DataStruct,
          false,
          structBuilder: MerchantDidStruct.fromSerializableMap,
        ),
        merchantVpa: deserializeParam(
          data['Merchant_vpa'],
          ParamType.String,
          false,
        ),
        profileInfo: deserializeStructParam(
          data['profile_info'],
          ParamType.DataStruct,
          false,
          structBuilder: ProfileInfoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ResponseDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponseDataStruct &&
        qrCodeUrl == other.qrCodeUrl &&
        merchantDid == other.merchantDid &&
        merchantVpa == other.merchantVpa &&
        profileInfo == other.profileInfo;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([qrCodeUrl, merchantDid, merchantVpa, profileInfo]);
}

ResponseDataStruct createResponseDataStruct({
  String? qrCodeUrl,
  MerchantDidStruct? merchantDid,
  String? merchantVpa,
  ProfileInfoStruct? profileInfo,
}) =>
    ResponseDataStruct(
      qrCodeUrl: qrCodeUrl,
      merchantDid: merchantDid ?? MerchantDidStruct(),
      merchantVpa: merchantVpa,
      profileInfo: profileInfo ?? ProfileInfoStruct(),
    );
