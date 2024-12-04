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

  String publicPEM = """
-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtJgZPG4xY5OJhavkA9z+
Dy4Jtof3LKjNf9vSOC56ZifosmnLLKPQsGNuGdJmdkVtJeCZk3cI9FjUxE4zeyak
W4rS7oohyo89PrUSnnA7U/uxGAZh4k91+UUVKxoHmLO/Z63JrflU4ARRN301t/+s
se5BHOARI+2mfadJqqjBU/XYZnzryMM3DQrUXPbYZ3ffR4Zt5sJX6X53u2T404jx
HY94DobGhRMv97YVIvoDu7ndmfPy63/+teUX8NFN0qqKMGRs8HCxeIjd4XtHJSNm
ACtGXt+jlTC4MTFT46KtdknLSSMXJ4PyTZ8hd6uwC9t2JzU2bJzdxBDWnQWeENTu
swIDAQAB
-----END PUBLIC KEY-----
""";

  var publicKey = CryptoUtils.rsaPublicKeyFromPem(publicPEM);
  var cipher = PKCS1Encoding(RSAEngine());
  cipher.init(true, PublicKeyParameter<RSAPublicKey>(publicKey));

  // / Converting into a [Unit8List] from List<int>
  // / Then Encoding into Base64
  Uint8List output = cipher.process(Uint8List.fromList(utf8.encode(otp)));
  var base64EncodedText = base64Encode(output);
  return base64EncodedText;
}
