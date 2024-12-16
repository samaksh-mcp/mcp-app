// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> generateHistoryParamsString(
  String? mobileNumber,
  int? length,
  int? page,
  String? filter,
  String? searchOption,
  String txnStatus,
) async {
  // Add your function code here!
  return jsonEncode({
    "mobile_number": mobileNumber,
    "length": length,
    "page": page,
    "filter": filter,
    "search_option": searchOption,
    "txn_status": txnStatus
  });
}
