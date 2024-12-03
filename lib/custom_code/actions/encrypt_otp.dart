// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:typed_data';
import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:basic_utils/basic_utils.dart';
import 'package:pointycastle/export.dart';
import 'package:crypto/crypto.dart';

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

Future<String> encryptOtp(String otp) async {
  String publicPEM =
      await rootBundle.loadString('assets/keys/rsa_2048_pub.pem');
  var publicKey = CryptoUtils.rsaPublicKeyFromPem(publicPEM);
  var cipher = PKCS1Encoding(RSAEngine());
  cipher.init(true, PublicKeyParameter<RSAPublicKey>(publicKey));

  // / Converting into a [Unit8List] from List<int>
  // / Then Encoding into Base64
  Uint8List output = cipher.process(Uint8List.fromList(utf8.encode(otp)));
  var base64EncodedText = base64Encode(output);
  return base64EncodedText;
}
