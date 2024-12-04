// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

String jsonToString(String mobileNumber) {
  Map<String, dynamic> jsonMap = {
    "mobile_number": mobileNumber,
    "lang_code": "en",
    "auto_fetch_code": "123458"
  };

  String jsonString = jsonEncode(jsonMap);

  print(jsonString);
  return jsonString;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
