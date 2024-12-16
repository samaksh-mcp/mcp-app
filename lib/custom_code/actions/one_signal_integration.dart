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
import 'package:audioplayers/audioplayers.dart';
import 'package:permission_handler/permission_handler.dart';

Future oneSignalIntegration() async {
  // Add your function code here!
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);

  OneSignal.initialize("0f26810e-339e-4c93-887c-0ed7ace2bf24");
  PermissionStatus status = await Permission.notification.status;

  if (status.isDenied) {
    // If denied, request the permission
    PermissionStatus newStatus = await Permission.notification.request();

    if (newStatus.isGranted) {
      print("Notification permission granted!");
    } else if (newStatus.isDenied) {
      OneSignal.Notifications.requestPermission(true);
      print("Notification permission denied.");
    } else if (newStatus.isPermanentlyDenied) {
      print(
          "Notification permission permanently denied. Open app settings to enable it.");
      openAppSettings();
    }
  } else if (status.isGranted) {
    print("Notification permission already granted.");
  }

  OneSignal.Notifications.addClickListener((event) {
    print('NOTIFICATION CLICK LISTENER CALLED WITH EVENT: $event');
  });

  OneSignal.Notifications.addForegroundWillDisplayListener((event) {
    print(
        'NOTIFICATION WILL DISPLAY LISTENER CALLED WITH: ${event.notification.jsonRepresentation()}');

    /// Display Notification, preventDefault to not display
    event.preventDefault();

    /// Do async work

    /// notification.display() to display after preventing default
    event.notification.display();
  });

  OneSignal.InAppMessages.addClickListener((event) {});
  OneSignal.InAppMessages.addWillDisplayListener((event) {
    print("ON WILL DISPLAY IN APP MESSAGE ${event.message.messageId}");
  });
  OneSignal.InAppMessages.addDidDisplayListener((event) {
    print("ON DID DISPLAY IN APP MESSAGE ${event.message.messageId}");
  });
  OneSignal.InAppMessages.addWillDismissListener((event) {
    print("ON WILL DISMISS IN APP MESSAGE ${event.message.messageId}");
  });
  OneSignal.InAppMessages.addDidDismissListener((event) {
    print("ON DID DISMISS IN APP MESSAGE ${event.message.messageId}");
  });

  OneSignal.Notifications.addForegroundWillDisplayListener((event) {
    print(
        'NOTIFICATION WILL DISPLAY LISTENER CALLED WITH: ${event.notification.jsonRepresentation()}');

    /// Display Notification, preventDefault to not display
    event.preventDefault();

    /// Do async work

    bool allowed = FFAppState().moneySound;

    final additionalData = event.notification.additionalData;
    if (additionalData != null && additionalData.containsKey('voiceMessage')) {
      String voiceMessageUrl = additionalData['voiceMessage'];
      print("Voice message URL: $voiceMessageUrl");

      // Play the audio
      if (allowed) {
        playAudio(voiceMessageUrl);
      }
    }

    /// notification.display() to display after preventing default
    event.notification.display();
  });

  // OneSignal.Notifications.requestPermission(true);
  // OneSignal.shared.setNotificationWillShowInForegroundHandler(
  //     (OSNotificationReceivedEvent event) {
  //   event.complete(event.notification);
  // });

  // OneSignal.shared
  //     .setNotificationOpenedHandler((OSNotificationOpenedResult result) {
  //   print('"OneSignal: notification opened: ${result}');

  // print("Notification received: ${notification.payload.body}");

  // String? audioUrl = notification.payload.additionalData?['audio_url'];

  // if (audioUrl != null && audioUrl.isNotEmpty) {
  //   playAudio(audioUrl);
  // }
  // });

  // OneSignal.setNotificationReceivedHandler((OSNotification notification) {
  //   print("Notification received: ${notification.payload.body}");

  //   String? audioUrl = notification.payload.additionalData?['audio_url'];

  //   if (audioUrl != null && audioUrl.isNotEmpty) {
  //     playAudio(audioUrl);
  //   }
  // });

  // OneSignal.setNotificationOpenedHandler((OSNotificationOpenedResult result) {
  //   print("Notification opened: ${result.notification.payload.body}");

  //   String? audioUrl = result.notification.payload.additionalData?['audio_url'];

  //   if (audioUrl != null && audioUrl.isNotEmpty) {
  //     playAudio(audioUrl);
  //   }
  // });
}

void playAudio(String audioUrl) async {
  AudioPlayer audioPlayer = AudioPlayer();

  await audioPlayer.play(UrlSource(audioUrl));

  // if (result == 1) {
  //   print("Audio is playing...");
  // } else {
  //   print("Failed to play audio.");
  // }
}
