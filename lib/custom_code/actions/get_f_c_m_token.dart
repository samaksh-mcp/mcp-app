// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_messaging/firebase_messaging.dart';

Future<String?> getFCMToken() async {
  // Add your function code here!
  NotificationSettings settings =
      await FirebaseMessaging.instance.getNotificationSettings();
  if (settings.authorizationStatus != AuthorizationStatus.authorized) {
    return "";
  }
  String? fcmToken = await FirebaseMessaging.instance.getToken();
  print("fcmToken : ${fcmToken}");
  return fcmToken == null ? "" : fcmToken;
}

// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'dart:html' as html;

// Future<String?> getFCMToken() async {
//   final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

//   if (html.window.navigator.userAgent.contains('Mobi') == false) {
//     // web
//     final permission = await html.window.navigator.permissions
//         ?.query({"name": "notifications"});

//     if (permission?.state == 'denied') {
//       return "";
//     }

//     final permissionStatus = await html.Notification.requestPermission();
//     if (permissionStatus != 'granted') {
//       return "";
//     }
//   } else {
//     // mobile
//     NotificationSettings settings = await _firebaseMessaging.requestPermission(
//       alert: true,
//       badge: true,
//       sound: true,
//     );

//     if (settings.authorizationStatus == AuthorizationStatus.denied) {
//       return "";
//     }
//   }

//   String? fcmToken = await _firebaseMessaging.getToken();
//   print(fcmToken);

//   if (fcmToken != null) {
//     return fcmToken;
//   } else {
//     return "";
//   }
// }
