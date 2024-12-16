// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart'
    show kIsWeb, defaultTargetPlatform, TargetPlatform;

Future initializeFirebase() async {
  // Add your function code here!
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: _getFirebaseOptions(),
  );
}

FirebaseOptions _getFirebaseOptions() {
  if (kIsWeb) {
    return FirebaseOptions(
        apiKey: "AIzaSyCEANezCtcw4_c3ndhbb9EL-kEfQV4CK2c",
        authDomain: "miss-call-pay.firebaseapp.com",
        databaseURL: "https://miss-call-pay.firebaseio.com",
        projectId: "miss-call-pay",
        storageBucket: "miss-call-pay.firebasestorage.app",
        messagingSenderId: "623417475904",
        appId: "1:623417475904:web:191a4cdfc4d3f9f817b0a5");
  }
  switch (defaultTargetPlatform) {
    case TargetPlatform.android:
      return FirebaseOptions(
        apiKey: 'AIzaSyBU5gPVTtDugP3IqCCCspY2UnGSkEe2X78',
        appId: '1:623417475904:android:1e25f5097ec43e7c17b0a5',
        messagingSenderId: '623417475904',
        projectId: 'miss-call-pay',
        storageBucket: 'miss-call-pay.firebasestorage.app',
      );

    case TargetPlatform.iOS:
      return FirebaseOptions(
        apiKey: '// Replace from firebase_options.dart',
        appId: '// Replace from firebase_options.dart',
        messagingSenderId: '// Replace from firebase_options.dart',
        projectId: '// Replace from firebase_options.dart',
        storageBucket: '// Replace from firebase_options.dart',
        iosBundleId: '// Replace from firebase_options.dart',
      );
    default:
      throw UnsupportedError(
        'FirebaseOptions are not supported for this platform.',
      );
  }
}
