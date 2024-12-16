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
  // String publicPEM = await rootBundle.loadString('assets/rsa_2048_pub.pem');

  String publicPEM = """-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqzUao5r4DuDGTveywQO6
ryoWd8vkD6SyoD6S6l6xLGK/kuvIm2sFkeDUvsUHs5aXJQHR/gVRjV9cwJ7xxqg9
0jAzc4sSjfcHak++ENyW77d65IM7IQE29lVsPb1SZ6aKT9XckjLnem+5eJ8NNINM
//FXJyiVvQxeJxhbWL/ZoVz41Ik4C1jALLaW04cI2s+fUCWja+7OA5vM+tYtNMHe
wnbQYa+8G4dvm7z1XJE3h4QLFaNwh52DH2gcrS/ckhxBbV+d2ybEppNFsNVLqUqP
C/JQNCiyXjz8qh6N8lcSGXdK/+RHcreBOszJiLbM+Zj4SRm6fpNyPwgJOFAXPpmW
gwIDAQAB
-----END PUBLIC KEY-----""";

  var publicKey = CryptoUtils.rsaPublicKeyFromPem(publicPEM);
  var cipher = PKCS1Encoding(RSAEngine());
  cipher.init(true, PublicKeyParameter<RSAPublicKey>(publicKey));

  // / Converting into a [Unit8List] from List<int>
  // / Then Encoding into Base64
  Uint8List output = cipher.process(Uint8List.fromList(utf8.encode(otp)));
  var base64EncodedText = base64Encode(output);
  return base64EncodedText;
}
