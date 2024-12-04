import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Authentication Group Code

class AuthenticationGroup {
  static String getBaseUrl() => 'https://app.misscallpay.com';
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
    "auto_fetch_code": "${escapeStringForJson(autoFetchCode)}"
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
  }) async {
    entityID ??= FFAppConstants.entityID;
    final baseUrl = AuthenticationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "entityID": "${escapeStringForJson(entityID)}",
  "checksum": "${escapeStringForJson(checkSum)}",
  "inputParam": {
    "mobile_number": "${escapeStringForJson(mobile)}",
    "otp": "${escapeStringForJson(otp)}"
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
  static String getBaseUrl() => 'https://app.misscallpay.com';
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
  static String getBaseUrl() => 'https://app.misscallpay.com';
  static Map<String, String> headers = {};
  static HistoryCall historyCall = HistoryCall();
}

class HistoryCall {
  Future<ApiCallResponse> call({
    String? entityID,
    String? checksum =
        '1df1c365d38bf3e95b9e5f2513bb827dec5abfa6482ec119b868798e76529174',
    String? mobileNumber = '8291969602',
    String? length = '50',
    String? page = '0',
    String? filter = 'Total',
    String? searchOption = '',
  }) async {
    entityID ??= FFAppConstants.entityID;
    final baseUrl = TransctionsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "entityID": "${escapeStringForJson(entityID)}",
  "checksum": "${escapeStringForJson(checksum)}",
  "inputParam": {
    "mobile_number": "${escapeStringForJson(mobileNumber)}",
    "length": "${escapeStringForJson(length)}",
    "page": "${escapeStringForJson(page)}",
    "filter": "${escapeStringForJson(filter)}",
    "search_option": "${escapeStringForJson(searchOption)}"
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
