// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> generateInitiateCallParams(
  String custMobile,
  String mobileNumber,
  String amount,
  String remarks,
  String invoice,
  String channel,
  String ifsc,
  int click2call,
  String lang,
  String customerName,
) async {
  // Add your function code here!
  return jsonEncode({
    "mobile_number": mobileNumber,
    "payer_mobile": custMobile,
    "txn_amount": amount,
    "remarks": remarks,
    "invoice_no": invoice,
    "txn_channel": channel,
    "bank_ifsc_code": ifsc,
    "click_2_call": click2call,
    "lang_selection": lang,
    "customer_name": customerName,
  });
}
