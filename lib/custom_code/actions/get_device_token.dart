// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:onesignal_flutter/onesignal_flutter.dart';

Future<String?> getDeviceToken() async {
  // Add your function code here!
  // OneSignal.Notification.addClickListener((event) {
  //   final data = event.notification.additionalData;
  //   String? screen = data['screen'];
  //   if (screen != null) {
  //     print("screen data : ${screen}");
  //   }
  // });
  // var status = await OneSignal.shared.getDeviceState();
  // String? deviceToken = status?.userId; // This will be the device token
  // print("Device Token: $deviceToken");
  String? id = await OneSignal.User.getOnesignalId();
  if (id != null) {
    return id;
  }
  return "";
  // OneSignal.initialize("990edcee-78e1-4017-b154-cae276866efd");
  // var onesignalId = await OneSignal.User.getOnesignalId();
  // print('OneSignal ID: $onesignalId');
  // return onesignalId;
}
