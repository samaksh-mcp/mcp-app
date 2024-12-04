// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MerchantStruct extends BaseStruct {
  MerchantStruct({
    String? id,
    String? vpaAddress,
    String? ifscCode,
    String? maskedAccnumber,
    String? fullName,
    String? deregisterStatus,
    String? didNumber,
    String? posInfo,
    String? branchInfo,
    String? extension,
    String? merchantRefInfo,
    String? bankName,
  })  : _id = id,
        _vpaAddress = vpaAddress,
        _ifscCode = ifscCode,
        _maskedAccnumber = maskedAccnumber,
        _fullName = fullName,
        _deregisterStatus = deregisterStatus,
        _didNumber = didNumber,
        _posInfo = posInfo,
        _branchInfo = branchInfo,
        _extension = extension,
        _merchantRefInfo = merchantRefInfo,
        _bankName = bankName;

  // "_id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "vpa_address" field.
  String? _vpaAddress;
  String get vpaAddress => _vpaAddress ?? '';
  set vpaAddress(String? val) => _vpaAddress = val;

  bool hasVpaAddress() => _vpaAddress != null;

  // "ifsc_code" field.
  String? _ifscCode;
  String get ifscCode => _ifscCode ?? '';
  set ifscCode(String? val) => _ifscCode = val;

  bool hasIfscCode() => _ifscCode != null;

  // "MASKED_ACCNUMBER" field.
  String? _maskedAccnumber;
  String get maskedAccnumber => _maskedAccnumber ?? '';
  set maskedAccnumber(String? val) => _maskedAccnumber = val;

  bool hasMaskedAccnumber() => _maskedAccnumber != null;

  // "full_name" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;

  bool hasFullName() => _fullName != null;

  // "deregister_status" field.
  String? _deregisterStatus;
  String get deregisterStatus => _deregisterStatus ?? '';
  set deregisterStatus(String? val) => _deregisterStatus = val;

  bool hasDeregisterStatus() => _deregisterStatus != null;

  // "did_number" field.
  String? _didNumber;
  String get didNumber => _didNumber ?? '';
  set didNumber(String? val) => _didNumber = val;

  bool hasDidNumber() => _didNumber != null;

  // "pos_info" field.
  String? _posInfo;
  String get posInfo => _posInfo ?? '';
  set posInfo(String? val) => _posInfo = val;

  bool hasPosInfo() => _posInfo != null;

  // "branch_info" field.
  String? _branchInfo;
  String get branchInfo => _branchInfo ?? '';
  set branchInfo(String? val) => _branchInfo = val;

  bool hasBranchInfo() => _branchInfo != null;

  // "extension" field.
  String? _extension;
  String get extension => _extension ?? '';
  set extension(String? val) => _extension = val;

  bool hasExtension() => _extension != null;

  // "merchant_ref_info" field.
  String? _merchantRefInfo;
  String get merchantRefInfo => _merchantRefInfo ?? '';
  set merchantRefInfo(String? val) => _merchantRefInfo = val;

  bool hasMerchantRefInfo() => _merchantRefInfo != null;

  // "bank_name" field.
  String? _bankName;
  String get bankName => _bankName ?? '';
  set bankName(String? val) => _bankName = val;

  bool hasBankName() => _bankName != null;

  static MerchantStruct fromMap(Map<String, dynamic> data) => MerchantStruct(
        id: data['_id'] as String?,
        vpaAddress: data['vpa_address'] as String?,
        ifscCode: data['ifsc_code'] as String?,
        maskedAccnumber: data['MASKED_ACCNUMBER'] as String?,
        fullName: data['full_name'] as String?,
        deregisterStatus: data['deregister_status'] as String?,
        didNumber: data['did_number'] as String?,
        posInfo: data['pos_info'] as String?,
        branchInfo: data['branch_info'] as String?,
        extension: data['extension'] as String?,
        merchantRefInfo: data['merchant_ref_info'] as String?,
        bankName: data['bank_name'] as String?,
      );

  static MerchantStruct? maybeFromMap(dynamic data) =>
      data is Map ? MerchantStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        '_id': _id,
        'vpa_address': _vpaAddress,
        'ifsc_code': _ifscCode,
        'MASKED_ACCNUMBER': _maskedAccnumber,
        'full_name': _fullName,
        'deregister_status': _deregisterStatus,
        'did_number': _didNumber,
        'pos_info': _posInfo,
        'branch_info': _branchInfo,
        'extension': _extension,
        'merchant_ref_info': _merchantRefInfo,
        'bank_name': _bankName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        '_id': serializeParam(
          _id,
          ParamType.String,
        ),
        'vpa_address': serializeParam(
          _vpaAddress,
          ParamType.String,
        ),
        'ifsc_code': serializeParam(
          _ifscCode,
          ParamType.String,
        ),
        'MASKED_ACCNUMBER': serializeParam(
          _maskedAccnumber,
          ParamType.String,
        ),
        'full_name': serializeParam(
          _fullName,
          ParamType.String,
        ),
        'deregister_status': serializeParam(
          _deregisterStatus,
          ParamType.String,
        ),
        'did_number': serializeParam(
          _didNumber,
          ParamType.String,
        ),
        'pos_info': serializeParam(
          _posInfo,
          ParamType.String,
        ),
        'branch_info': serializeParam(
          _branchInfo,
          ParamType.String,
        ),
        'extension': serializeParam(
          _extension,
          ParamType.String,
        ),
        'merchant_ref_info': serializeParam(
          _merchantRefInfo,
          ParamType.String,
        ),
        'bank_name': serializeParam(
          _bankName,
          ParamType.String,
        ),
      }.withoutNulls;

  static MerchantStruct fromSerializableMap(Map<String, dynamic> data) =>
      MerchantStruct(
        id: deserializeParam(
          data['_id'],
          ParamType.String,
          false,
        ),
        vpaAddress: deserializeParam(
          data['vpa_address'],
          ParamType.String,
          false,
        ),
        ifscCode: deserializeParam(
          data['ifsc_code'],
          ParamType.String,
          false,
        ),
        maskedAccnumber: deserializeParam(
          data['MASKED_ACCNUMBER'],
          ParamType.String,
          false,
        ),
        fullName: deserializeParam(
          data['full_name'],
          ParamType.String,
          false,
        ),
        deregisterStatus: deserializeParam(
          data['deregister_status'],
          ParamType.String,
          false,
        ),
        didNumber: deserializeParam(
          data['did_number'],
          ParamType.String,
          false,
        ),
        posInfo: deserializeParam(
          data['pos_info'],
          ParamType.String,
          false,
        ),
        branchInfo: deserializeParam(
          data['branch_info'],
          ParamType.String,
          false,
        ),
        extension: deserializeParam(
          data['extension'],
          ParamType.String,
          false,
        ),
        merchantRefInfo: deserializeParam(
          data['merchant_ref_info'],
          ParamType.String,
          false,
        ),
        bankName: deserializeParam(
          data['bank_name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MerchantStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MerchantStruct &&
        id == other.id &&
        vpaAddress == other.vpaAddress &&
        ifscCode == other.ifscCode &&
        maskedAccnumber == other.maskedAccnumber &&
        fullName == other.fullName &&
        deregisterStatus == other.deregisterStatus &&
        didNumber == other.didNumber &&
        posInfo == other.posInfo &&
        branchInfo == other.branchInfo &&
        extension == other.extension &&
        merchantRefInfo == other.merchantRefInfo &&
        bankName == other.bankName;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        vpaAddress,
        ifscCode,
        maskedAccnumber,
        fullName,
        deregisterStatus,
        didNumber,
        posInfo,
        branchInfo,
        extension,
        merchantRefInfo,
        bankName
      ]);
}

MerchantStruct createMerchantStruct({
  String? id,
  String? vpaAddress,
  String? ifscCode,
  String? maskedAccnumber,
  String? fullName,
  String? deregisterStatus,
  String? didNumber,
  String? posInfo,
  String? branchInfo,
  String? extension,
  String? merchantRefInfo,
  String? bankName,
}) =>
    MerchantStruct(
      id: id,
      vpaAddress: vpaAddress,
      ifscCode: ifscCode,
      maskedAccnumber: maskedAccnumber,
      fullName: fullName,
      deregisterStatus: deregisterStatus,
      didNumber: didNumber,
      posInfo: posInfo,
      branchInfo: branchInfo,
      extension: extension,
      merchantRefInfo: merchantRefInfo,
      bankName: bankName,
    );
