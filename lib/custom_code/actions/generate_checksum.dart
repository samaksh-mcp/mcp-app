// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:crypto/crypto.dart';

String generateChecksum(String data, String secret) {
  // Encode the secret and message to match Node.js
  var key = utf8.encode(secret); // Secret encoded as UTF-8
  var bytes = utf8.encode(data); // Message encoded as UTF-8

  var hmacSha256 = Hmac(sha256, key); // HMAC-SHA256
  var digest = hmacSha256.convert(bytes);

  String hash = digest.bytes
      .map((b) => b.toRadixString(16).padLeft(2, '0'))
      .join(); // Convert to Hex
  // String hash = base64.encode(digest.bytes); // Encode to Base64
  return hash;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
