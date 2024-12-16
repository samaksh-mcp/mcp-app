import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Authentication Group Code

class AuthenticationGroup {
  static String getBaseUrl() => 'https://app1.misscallpay.com';
  static Map<String, String> headers = {};
  static GenerateOtpCall generateOtpCall = GenerateOtpCall();
  static VerfyOtpCall verfyOtpCall = VerfyOtpCall();
}

class GenerateOtpCall {
  Future<ApiCallResponse> call({
    String? checksum = '',
    String? entityId,
    String? mobileNum = '',
    String? langCode,
    String? autoFetchCode,
  }) async {
    entityId ??= FFAppConstants.entityID;
    langCode ??= FFAppConstants.langCode;
    autoFetchCode ??= FFAppConstants.autoFetchCode;
    final baseUrl = AuthenticationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "entityID": "${escapeStringForJson(entityId)}",
  "checksum": "${escapeStringForJson(checksum)}",
  "inputParam": {
    "mobile_number": "${escapeStringForJson(mobileNum)}",
    "lang_code": "${escapeStringForJson(langCode)}",
    "auto_fetch_code": "${escapeStringForJson(autoFetchCode)}",
    "loggedin_status": 1
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'generateOtp',
      apiUrl: '$baseUrl/mcp/app/generate-otp',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? onBoardingStatus(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.profile_status''',
      ));
  int? otpStatus(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  int? otpRetries(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.profile_info.otp_retries''',
      ));
  String? accessToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.profile_info.access_token''',
      ));
}

class VerfyOtpCall {
  Future<ApiCallResponse> call({
    String? mobile = '',
    String? otp = '',
    String? checkSum = '',
    String? entityID,
    String? pushToken = '',
  }) async {
    entityID ??= FFAppConstants.entityID;
    final baseUrl = AuthenticationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "entityID": "${escapeStringForJson(entityID)}",
  "checksum": "${escapeStringForJson(checkSum)}",
  "inputParam": {
    "mobile_number": "${escapeStringForJson(mobile)}",
    "otp": "${escapeStringForJson(otp)}",
    "push_token": "${escapeStringForJson(pushToken)}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'verfyOtp',
      apiUrl: '$baseUrl/mcp/app/verify-otp',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? otpSuccess(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.success''',
      ));
  int? otpStatus(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? otpVerifyMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.msg''',
      ));
  int? profileStatus(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.profile_status''',
      ));
  String? accessToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.profile_info.access_token''',
      ));
}

/// End Authentication Group Code

/// Start Registration Group Code

class RegistrationGroup {
  static String getBaseUrl() => 'https://app1.misscallpay.com';
  static Map<String, String> headers = {};
  static ValidatePincodeCall validatePincodeCall = ValidatePincodeCall();
  static MerchantRegistrationCall merchantRegistrationCall =
      MerchantRegistrationCall();
  static AccountVerifyCall accountVerifyCall = AccountVerifyCall();
}

class ValidatePincodeCall {
  Future<ApiCallResponse> call({
    int? pincode,
  }) async {
    final baseUrl = RegistrationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "pincode": $pincode,
  "user_type": "customer"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'validatePincode',
      apiUrl: '$baseUrl/ivr/validate_pincode',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MerchantRegistrationCall {
  Future<ApiCallResponse> call({
    String? inputParam = '',
    String? entityID = '',
    String? checksum = '',
    String? shopImg = '',
    String? shopVoiceRec = '',
    String? panImg = '',
    String? adharImg = '',
    String? merchantLogo = '',
  }) async {
    final baseUrl = RegistrationGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'merchantRegistration',
      apiUrl: '$baseUrl/mcp/app/yesbank/merchant/register',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'inputParam': inputParam,
        'checksum': checksum,
        'entityID': entityID,
        'shop_voice_rec': shopVoiceRec,
        'shop_img': shopVoiceRec,
        'pan_img': panImg,
        'adhar_img': adharImg,
        'merchant_logo': merchantLogo,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AccountVerifyCall {
  Future<ApiCallResponse> call({
    String? accountNumber = '',
    String? accountHolderName = '',
    String? ifscCode = '',
    String? mobileNumber = '',
  }) async {
    final baseUrl = RegistrationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "entityID": "SINGZY",
  "action": "bankTransfer",
  "account_number": "${escapeStringForJson(accountNumber)}",
  "account_holder_name": "${escapeStringForJson(accountHolderName)}",
  "ifsc_code": "${escapeStringForJson(ifscCode)}",
  "mobile_number": "${escapeStringForJson(mobileNumber)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'accountVerify',
      apiUrl: '$baseUrl/enterprise/merchant/singzy/verify',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Registration Group Code

/// Start Transctions Group Code

class TransctionsGroup {
  static String getBaseUrl() => 'https://app1.misscallpay.com';
  static Map<String, String> headers = {};
  static HistoryCall historyCall = HistoryCall();
}

class HistoryCall {
  Future<ApiCallResponse> call({
    String? entityID,
    String? checksum =
        '1df1c365d38bf3e95b9e5f2513bb827dec5abfa6482ec119b868798e76529174',
    String? mobileNumber = '8291969602',
    int? length,
    int? page,
    String? filter = 'Total',
    String? searchOption = '',
    String? txnStatus = 'Success',
  }) async {
    entityID ??= FFAppConstants.entityID;
    final baseUrl = TransctionsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "entityID": "${escapeStringForJson(entityID)}",
  "checksum": "${escapeStringForJson(checksum)}",
  "inputParam": {
    "mobile_number": "${escapeStringForJson(mobileNumber)}",
    "length": "$length",
    "page": "$page",
    "filter": "${escapeStringForJson(filter)}",
    "search_option": "${escapeStringForJson(searchOption)}",
    "txn_status": "${escapeStringForJson(txnStatus)}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'history',
      apiUrl: '$baseUrl/mcp/app/merchant/transaction-history',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? transactionStatus(dynamic response) => (getJsonField(
        response,
        r'''$.response.transactions[*].bank_txn_status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

/// End Transctions Group Code

/// Start QR Geneartion Group Code

class QRGeneartionGroup {
  static String getBaseUrl() => 'https://app1.misscallpay.com';
  static Map<String, String> headers = {};
  static StaticQRCall staticQRCall = StaticQRCall();
}

class StaticQRCall {
  Future<ApiCallResponse> call({
    String? checksum = '',
    String? mobileNumber = '',
    String? entityId,
  }) async {
    entityId ??= FFAppConstants.entityID;
    final baseUrl = QRGeneartionGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "entityId": "${escapeStringForJson(entityId)}",
  "checksum": "${escapeStringForJson(checksum)}",
  "inputParam": {
    "mobile_number": "${escapeStringForJson(mobileNumber)}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'staticQR',
      apiUrl: '$baseUrl/mcp/app/qr-code',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End QR Geneartion Group Code

/// Start Collect Money Group Code

class CollectMoneyGroup {
  static String getBaseUrl() => 'https://app1.misscallpay.com';
  static Map<String, String> headers = {};
  static CollectMoneyCall collectMoneyCall = CollectMoneyCall();
}

class CollectMoneyCall {
  Future<ApiCallResponse> call({
    String? entityId,
    String? checksum = '',
    String? mobileNumber = '',
    String? payerMobile = '',
    String? amount = '1',
    String? remarks = 'for this customer',
    String? invoiceNumber = '12345ftgste',
    String? channel = 'app',
    String? ifscCode = 'KKBK',
    int? click2call = 1,
    String? language = 'en',
    String? customerName = '',
  }) async {
    entityId ??= FFAppConstants.entityID;
    final baseUrl = CollectMoneyGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "entityID": "18241",
  "checksum": "${escapeStringForJson(checksum)}",
  "inputParam": {
    "mobile_number": "${escapeStringForJson(mobileNumber)}",
    "payer_mobile": "${escapeStringForJson(payerMobile)}",
    "txn_amount": "${escapeStringForJson(amount)}",
    "remarks": "${escapeStringForJson(remarks)}",
    "invoice_no": "${escapeStringForJson(invoiceNumber)}",
    "txn_channel": "${escapeStringForJson(channel)}",
    "bank_ifsc_code": "${escapeStringForJson(ifscCode)}",
    "click_2_call": $click2call,
    "lang_selection": "${escapeStringForJson(language)}",
    "customer_name": "${escapeStringForJson(customerName)}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Collect Money',
      apiUrl: '$baseUrl/mcp/app/transaction/collect-money',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Collect Money Group Code

/// Start Info Group Code

class InfoGroup {
  static String getBaseUrl() => 'https://app1.misscallpay.com';
  static Map<String, String> headers = {};
  static BankDetailsCall bankDetailsCall = BankDetailsCall();
}

class BankDetailsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = InfoGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'bank Details',
      apiUrl: '$baseUrl/mcp/app/merchant/bank-list',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Info Group Code

/// Start Verify Group Code

class VerifyGroup {
  static String getBaseUrl() => 'https://app1.misscallpay.com';
  static Map<String, String> headers = {};
  static VerifyCustomerCall verifyCustomerCall = VerifyCustomerCall();
  static ConsentCall consentCall = ConsentCall();
}

class VerifyCustomerCall {
  Future<ApiCallResponse> call({
    String? merchantNumber = '',
    String? payerMobile = '',
    String? checksum = '',
    String? entityId = 'YESB',
  }) async {
    final baseUrl = VerifyGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "entityID": "YESB",
  "checksum": "${escapeStringForJson(checksum)}",
  "inputParam": {
    "mobile_number": "${escapeStringForJson(merchantNumber)}",
    "payer_mobile": "${escapeStringForJson(payerMobile)}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'verify customer',
      apiUrl: '$baseUrl/mcp/app/customer/verify',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ConsentCall {
  Future<ApiCallResponse> call({
    String? merchantMobile = '',
    String? customerMobile = '',
    String? consentName = 'terms_and_conditions',
  }) async {
    final baseUrl = VerifyGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "mobile_number": "${escapeStringForJson(merchantMobile)}",
  "consent_name": "${escapeStringForJson(consentName)}",
  "customer_mobile_number": "${escapeStringForJson(customerMobile)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'consent',
      apiUrl: '$baseUrl/mcp/app/merchant/get-consent',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Verify Group Code

class MerchantInfoCall {
  static Future<ApiCallResponse> call({
    String? entityID = 'boi',
    String? checksum =
        '20456cae2480929243a2141df1c346abf898d2f2aa6606d214e0ad54e350623f',
    String? mobile = '9860603677',
  }) async {
    final ffApiRequestBody = '''
{
  "entityID": "${escapeStringForJson(entityID)}",
  "checksum": "${escapeStringForJson(checksum)}",
  "inputParam": {
    "mobile_number": "${escapeStringForJson(mobile)}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'MerchantInfo',
      apiUrl: 'https://app1.misscallpay.com/mcp/app/merchant/verify',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
