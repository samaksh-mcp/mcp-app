// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:qr_bar_code/code/code.dart';
import 'package:qr_bar_code/qr/qr.dart';

class GenearteQRCode extends StatefulWidget {
  const GenearteQRCode({
    super.key,
    this.width,
    this.height,
    required this.data,
  });

  final double? width;
  final double? height;
  final String data;

  @override
  State<GenearteQRCode> createState() => _GenearteQRCodeState();
}

class _GenearteQRCodeState extends State<GenearteQRCode> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // QRCode(data: widget.data),
        QRCode(
          data: widget.data,
          backgroundColor: Colors.white,
          size: 200,
        ),
      ],
    );
  }
}
