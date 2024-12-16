import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _mobileNumber =
          await secureStorage.getString('ff_mobileNumber') ?? _mobileNumber;
    });
    await _safeInitAsync(() async {
      _accessToken =
          await secureStorage.getString('ff_accessToken') ?? _accessToken;
    });
    await _safeInitAsync(() async {
      _checksum = await secureStorage.getString('ff_checksum') ?? _checksum;
    });
    await _safeInitAsync(() async {
      _moneySound = await secureStorage.getBool('ff_moneySound') ?? _moneySound;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_qrResponse') != null) {
        try {
          _qrResponse =
              jsonDecode(await secureStorage.getString('ff_qrResponse') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_verifyOtpResponse') != null) {
        try {
          _verifyOtpResponse = jsonDecode(
              await secureStorage.getString('ff_verifyOtpResponse') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_generateOtpResponse') != null) {
        try {
          _generateOtpResponse = jsonDecode(
              await secureStorage.getString('ff_generateOtpResponse') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _firebaseToken =
          await secureStorage.getString('ff_firebaseToken') ?? _firebaseToken;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_billingInfo') != null) {
        try {
          _billingInfo =
              jsonDecode(await secureStorage.getString('ff_billingInfo') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_historyResponse') != null) {
        try {
          _historyResponse = jsonDecode(
              await secureStorage.getString('ff_historyResponse') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _fcmToken = await secureStorage.getString('ff_fcmToken') ?? _fcmToken;
    });
    await _safeInitAsync(() async {
      _onBoardingUrl =
          await secureStorage.getString('ff_onBoardingUrl') ?? _onBoardingUrl;
    });
    await _safeInitAsync(() async {
      _deviceToken =
          await secureStorage.getString('ff_deviceToken') ?? _deviceToken;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_bankNamesResponse') != null) {
        try {
          _bankNamesResponse = jsonDecode(
              await secureStorage.getString('ff_bankNamesResponse') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  bool _checked = false;
  bool get checked => _checked;
  set checked(bool value) {
    _checked = value;
  }

  bool _otpGenerated = false;
  bool get otpGenerated => _otpGenerated;
  set otpGenerated(bool value) {
    _otpGenerated = value;
  }

  String _mobileNumber = '';
  String get mobileNumber => _mobileNumber;
  set mobileNumber(String value) {
    _mobileNumber = value;
    secureStorage.setString('ff_mobileNumber', value);
  }

  void deleteMobileNumber() {
    secureStorage.delete(key: 'ff_mobileNumber');
  }

  String _accessToken = '';
  String get accessToken => _accessToken;
  set accessToken(String value) {
    _accessToken = value;
    secureStorage.setString('ff_accessToken', value);
  }

  void deleteAccessToken() {
    secureStorage.delete(key: 'ff_accessToken');
  }

  String _checksum = '';
  String get checksum => _checksum;
  set checksum(String value) {
    _checksum = value;
    secureStorage.setString('ff_checksum', value);
  }

  void deleteChecksum() {
    secureStorage.delete(key: 'ff_checksum');
  }

  String _pageName = 'HomeScreen';
  String get pageName => _pageName;
  set pageName(String value) {
    _pageName = value;
  }

  bool _moneySound = true;
  bool get moneySound => _moneySound;
  set moneySound(bool value) {
    _moneySound = value;
    secureStorage.setBool('ff_moneySound', value);
  }

  void deleteMoneySound() {
    secureStorage.delete(key: 'ff_moneySound');
  }

  bool _timeExpired = false;
  bool get timeExpired => _timeExpired;
  set timeExpired(bool value) {
    _timeExpired = value;
  }

  dynamic _qrResponse;
  dynamic get qrResponse => _qrResponse;
  set qrResponse(dynamic value) {
    _qrResponse = value;
    secureStorage.setString('ff_qrResponse', jsonEncode(value));
  }

  void deleteQrResponse() {
    secureStorage.delete(key: 'ff_qrResponse');
  }

  dynamic _verifyOtpResponse;
  dynamic get verifyOtpResponse => _verifyOtpResponse;
  set verifyOtpResponse(dynamic value) {
    _verifyOtpResponse = value;
    secureStorage.setString('ff_verifyOtpResponse', jsonEncode(value));
  }

  void deleteVerifyOtpResponse() {
    secureStorage.delete(key: 'ff_verifyOtpResponse');
  }

  dynamic _generateOtpResponse;
  dynamic get generateOtpResponse => _generateOtpResponse;
  set generateOtpResponse(dynamic value) {
    _generateOtpResponse = value;
    secureStorage.setString('ff_generateOtpResponse', jsonEncode(value));
  }

  void deleteGenerateOtpResponse() {
    secureStorage.delete(key: 'ff_generateOtpResponse');
  }

  String _firebaseToken = '';
  String get firebaseToken => _firebaseToken;
  set firebaseToken(String value) {
    _firebaseToken = value;
    secureStorage.setString('ff_firebaseToken', value);
  }

  void deleteFirebaseToken() {
    secureStorage.delete(key: 'ff_firebaseToken');
  }

  dynamic _billingInfo;
  dynamic get billingInfo => _billingInfo;
  set billingInfo(dynamic value) {
    _billingInfo = value;
    secureStorage.setString('ff_billingInfo', jsonEncode(value));
  }

  void deleteBillingInfo() {
    secureStorage.delete(key: 'ff_billingInfo');
  }

  dynamic _historyResponse;
  dynamic get historyResponse => _historyResponse;
  set historyResponse(dynamic value) {
    _historyResponse = value;
    secureStorage.setString('ff_historyResponse', jsonEncode(value));
  }

  void deleteHistoryResponse() {
    secureStorage.delete(key: 'ff_historyResponse');
  }

  String _fcmToken = '';
  String get fcmToken => _fcmToken;
  set fcmToken(String value) {
    _fcmToken = value;
    secureStorage.setString('ff_fcmToken', value);
  }

  void deleteFcmToken() {
    secureStorage.delete(key: 'ff_fcmToken');
  }

  String _onBoardingUrl = '';
  String get onBoardingUrl => _onBoardingUrl;
  set onBoardingUrl(String value) {
    _onBoardingUrl = value;
    secureStorage.setString('ff_onBoardingUrl', value);
  }

  void deleteOnBoardingUrl() {
    secureStorage.delete(key: 'ff_onBoardingUrl');
  }

  String _deviceToken = '';
  String get deviceToken => _deviceToken;
  set deviceToken(String value) {
    _deviceToken = value;
    secureStorage.setString('ff_deviceToken', value);
  }

  void deleteDeviceToken() {
    secureStorage.delete(key: 'ff_deviceToken');
  }

  dynamic _bankNamesResponse;
  dynamic get bankNamesResponse => _bankNamesResponse;
  set bankNamesResponse(dynamic value) {
    _bankNamesResponse = value;
    secureStorage.setString('ff_bankNamesResponse', jsonEncode(value));
  }

  void deleteBankNamesResponse() {
    secureStorage.delete(key: 'ff_bankNamesResponse');
  }

  final _bankNamesQueryManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> bankNamesQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _bankNamesQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearBankNamesQueryCache() => _bankNamesQueryManager.clear();
  void clearBankNamesQueryCacheKey(String? uniqueKey) =>
      _bankNamesQueryManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
