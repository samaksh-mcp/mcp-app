import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _accessToken = prefs.getString('ff_accessToken') ?? _accessToken;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

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
  }

  String _accessToken = '';
  String get accessToken => _accessToken;
  set accessToken(String value) {
    _accessToken = value;
    prefs.setString('ff_accessToken', value);
  }

  String _checksum = '';
  String get checksum => _checksum;
  set checksum(String value) {
    _checksum = value;
  }
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
