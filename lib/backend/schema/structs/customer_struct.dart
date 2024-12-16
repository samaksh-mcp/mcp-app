// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomerStruct extends BaseStruct {
  CustomerStruct({
    String? vpaAddress,
    String? ifscCode,
    String? maskedAccnumber,
    String? fullName,
    String? deregisterStatus,
    String? didNumber,
    String? consumerNumber,
    String? packageId,
    String? sessionId,
    String? utmParam,
    String? consumerParam,
    String? consumerParamValue,
    String? packageType,
    String? packageStatus,
    String? extension,
    String? agentId,
    String? ovdDetails,
    String? bankName,
  })  : _vpaAddress = vpaAddress,
        _ifscCode = ifscCode,
        _maskedAccnumber = maskedAccnumber,
        _fullName = fullName,
        _deregisterStatus = deregisterStatus,
        _didNumber = didNumber,
        _consumerNumber = consumerNumber,
        _packageId = packageId,
        _sessionId = sessionId,
        _utmParam = utmParam,
        _consumerParam = consumerParam,
        _consumerParamValue = consumerParamValue,
        _packageType = packageType,
        _packageStatus = packageStatus,
        _extension = extension,
        _agentId = agentId,
        _ovdDetails = ovdDetails,
        _bankName = bankName;

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

  // "consumer_number" field.
  String? _consumerNumber;
  String get consumerNumber => _consumerNumber ?? '';
  set consumerNumber(String? val) => _consumerNumber = val;

  bool hasConsumerNumber() => _consumerNumber != null;

  // "package_id" field.
  String? _packageId;
  String get packageId => _packageId ?? '';
  set packageId(String? val) => _packageId = val;

  bool hasPackageId() => _packageId != null;

  // "session_id" field.
  String? _sessionId;
  String get sessionId => _sessionId ?? '';
  set sessionId(String? val) => _sessionId = val;

  bool hasSessionId() => _sessionId != null;

  // "utm_param" field.
  String? _utmParam;
  String get utmParam => _utmParam ?? '';
  set utmParam(String? val) => _utmParam = val;

  bool hasUtmParam() => _utmParam != null;

  // "consumer_param" field.
  String? _consumerParam;
  String get consumerParam => _consumerParam ?? '';
  set consumerParam(String? val) => _consumerParam = val;

  bool hasConsumerParam() => _consumerParam != null;

  // "consumer_param_value" field.
  String? _consumerParamValue;
  String get consumerParamValue => _consumerParamValue ?? '';
  set consumerParamValue(String? val) => _consumerParamValue = val;

  bool hasConsumerParamValue() => _consumerParamValue != null;

  // "package_type" field.
  String? _packageType;
  String get packageType => _packageType ?? '';
  set packageType(String? val) => _packageType = val;

  bool hasPackageType() => _packageType != null;

  // "package_status" field.
  String? _packageStatus;
  String get packageStatus => _packageStatus ?? '';
  set packageStatus(String? val) => _packageStatus = val;

  bool hasPackageStatus() => _packageStatus != null;

  // "extension" field.
  String? _extension;
  String get extension => _extension ?? '';
  set extension(String? val) => _extension = val;

  bool hasExtension() => _extension != null;

  // "agent_id" field.
  String? _agentId;
  String get agentId => _agentId ?? '';
  set agentId(String? val) => _agentId = val;

  bool hasAgentId() => _agentId != null;

  // "ovd_details" field.
  String? _ovdDetails;
  String get ovdDetails => _ovdDetails ?? '';
  set ovdDetails(String? val) => _ovdDetails = val;

  bool hasOvdDetails() => _ovdDetails != null;

  // "bank_name" field.
  String? _bankName;
  String get bankName => _bankName ?? '';
  set bankName(String? val) => _bankName = val;

  bool hasBankName() => _bankName != null;

  static CustomerStruct fromMap(Map<String, dynamic> data) => CustomerStruct(
        vpaAddress: data['vpa_address'] as String?,
        ifscCode: data['ifsc_code'] as String?,
        maskedAccnumber: data['MASKED_ACCNUMBER'] as String?,
        fullName: data['full_name'] as String?,
        deregisterStatus: data['deregister_status'] as String?,
        didNumber: data['did_number'] as String?,
        consumerNumber: data['consumer_number'] as String?,
        packageId: data['package_id'] as String?,
        sessionId: data['session_id'] as String?,
        utmParam: data['utm_param'] as String?,
        consumerParam: data['consumer_param'] as String?,
        consumerParamValue: data['consumer_param_value'] as String?,
        packageType: data['package_type'] as String?,
        packageStatus: data['package_status'] as String?,
        extension: data['extension'] as String?,
        agentId: data['agent_id'] as String?,
        ovdDetails: data['ovd_details'] as String?,
        bankName: data['bank_name'] as String?,
      );

  static CustomerStruct? maybeFromMap(dynamic data) =>
      data is Map ? CustomerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'vpa_address': _vpaAddress,
        'ifsc_code': _ifscCode,
        'MASKED_ACCNUMBER': _maskedAccnumber,
        'full_name': _fullName,
        'deregister_status': _deregisterStatus,
        'did_number': _didNumber,
        'consumer_number': _consumerNumber,
        'package_id': _packageId,
        'session_id': _sessionId,
        'utm_param': _utmParam,
        'consumer_param': _consumerParam,
        'consumer_param_value': _consumerParamValue,
        'package_type': _packageType,
        'package_status': _packageStatus,
        'extension': _extension,
        'agent_id': _agentId,
        'ovd_details': _ovdDetails,
        'bank_name': _bankName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
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
        'consumer_number': serializeParam(
          _consumerNumber,
          ParamType.String,
        ),
        'package_id': serializeParam(
          _packageId,
          ParamType.String,
        ),
        'session_id': serializeParam(
          _sessionId,
          ParamType.String,
        ),
        'utm_param': serializeParam(
          _utmParam,
          ParamType.String,
        ),
        'consumer_param': serializeParam(
          _consumerParam,
          ParamType.String,
        ),
        'consumer_param_value': serializeParam(
          _consumerParamValue,
          ParamType.String,
        ),
        'package_type': serializeParam(
          _packageType,
          ParamType.String,
        ),
        'package_status': serializeParam(
          _packageStatus,
          ParamType.String,
        ),
        'extension': serializeParam(
          _extension,
          ParamType.String,
        ),
        'agent_id': serializeParam(
          _agentId,
          ParamType.String,
        ),
        'ovd_details': serializeParam(
          _ovdDetails,
          ParamType.String,
        ),
        'bank_name': serializeParam(
          _bankName,
          ParamType.String,
        ),
      }.withoutNulls;

  static CustomerStruct fromSerializableMap(Map<String, dynamic> data) =>
      CustomerStruct(
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
        consumerNumber: deserializeParam(
          data['consumer_number'],
          ParamType.String,
          false,
        ),
        packageId: deserializeParam(
          data['package_id'],
          ParamType.String,
          false,
        ),
        sessionId: deserializeParam(
          data['session_id'],
          ParamType.String,
          false,
        ),
        utmParam: deserializeParam(
          data['utm_param'],
          ParamType.String,
          false,
        ),
        consumerParam: deserializeParam(
          data['consumer_param'],
          ParamType.String,
          false,
        ),
        consumerParamValue: deserializeParam(
          data['consumer_param_value'],
          ParamType.String,
          false,
        ),
        packageType: deserializeParam(
          data['package_type'],
          ParamType.String,
          false,
        ),
        packageStatus: deserializeParam(
          data['package_status'],
          ParamType.String,
          false,
        ),
        extension: deserializeParam(
          data['extension'],
          ParamType.String,
          false,
        ),
        agentId: deserializeParam(
          data['agent_id'],
          ParamType.String,
          false,
        ),
        ovdDetails: deserializeParam(
          data['ovd_details'],
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
  String toString() => 'CustomerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustomerStruct &&
        vpaAddress == other.vpaAddress &&
        ifscCode == other.ifscCode &&
        maskedAccnumber == other.maskedAccnumber &&
        fullName == other.fullName &&
        deregisterStatus == other.deregisterStatus &&
        didNumber == other.didNumber &&
        consumerNumber == other.consumerNumber &&
        packageId == other.packageId &&
        sessionId == other.sessionId &&
        utmParam == other.utmParam &&
        consumerParam == other.consumerParam &&
        consumerParamValue == other.consumerParamValue &&
        packageType == other.packageType &&
        packageStatus == other.packageStatus &&
        extension == other.extension &&
        agentId == other.agentId &&
        ovdDetails == other.ovdDetails &&
        bankName == other.bankName;
  }

  @override
  int get hashCode => const ListEquality().hash([
        vpaAddress,
        ifscCode,
        maskedAccnumber,
        fullName,
        deregisterStatus,
        didNumber,
        consumerNumber,
        packageId,
        sessionId,
        utmParam,
        consumerParam,
        consumerParamValue,
        packageType,
        packageStatus,
        extension,
        agentId,
        ovdDetails,
        bankName
      ]);
}

CustomerStruct createCustomerStruct({
  String? vpaAddress,
  String? ifscCode,
  String? maskedAccnumber,
  String? fullName,
  String? deregisterStatus,
  String? didNumber,
  String? consumerNumber,
  String? packageId,
  String? sessionId,
  String? utmParam,
  String? consumerParam,
  String? consumerParamValue,
  String? packageType,
  String? packageStatus,
  String? extension,
  String? agentId,
  String? ovdDetails,
  String? bankName,
}) =>
    CustomerStruct(
      vpaAddress: vpaAddress,
      ifscCode: ifscCode,
      maskedAccnumber: maskedAccnumber,
      fullName: fullName,
      deregisterStatus: deregisterStatus,
      didNumber: didNumber,
      consumerNumber: consumerNumber,
      packageId: packageId,
      sessionId: sessionId,
      utmParam: utmParam,
      consumerParam: consumerParam,
      consumerParamValue: consumerParamValue,
      packageType: packageType,
      packageStatus: packageStatus,
      extension: extension,
      agentId: agentId,
      ovdDetails: ovdDetails,
      bankName: bankName,
    );
