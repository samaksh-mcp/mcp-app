// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:permission_handler/permission_handler.dart';

Future<bool> toggleNotifications() async {
  final status = await Permission.notification.status;

  if (status.isGranted) {
    print('Notifications are enabled. Redirecting to settings...');
    final didOpenSettings = await openAppSettings();
    return !didOpenSettings;
  } else if (status.isDenied || status.isPermanentlyDenied) {
    final result = await Permission.notification.request();
    if (result.isGranted) {
      print('Notifications have been enabled.');
      return true;
    } else {
      print('Notifications remain disabled.');
      return false;
    }
  } else {
    print('Notification status is unknown or restricted.');
    return false;
  }
}
