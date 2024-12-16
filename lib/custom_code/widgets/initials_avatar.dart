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

import 'dart:math';

class InitialsAvatar extends StatefulWidget {
  const InitialsAvatar({
    super.key,
    this.width,
    this.height,
    required this.name,
  });

  final double? width;
  final double? height;
  final String name;

  @override
  State<InitialsAvatar> createState() => _InitialsAvatarState();
}

class _InitialsAvatarState extends State<InitialsAvatar> {
  //functions

  String getInitials(String name) {
    final parts = name.trim().replaceAll(RegExp(r'\s+'), ' ').split(" ");

    if (parts.length > 1) {
      return parts[0][0].toUpperCase() + parts[1][0].toUpperCase();
    } else if (parts.isNotEmpty) {
      return parts[0][0].toUpperCase();
    }

    return "";
  }

  Color getNameBasedColor(String name) {
    final hash = name.hashCode;
    final red = (hash & 0xFF0000) >> 16;
    final green = (hash & 0x00FF00) >> 8;
    final blue = (hash & 0x0000FF);
    return Color.fromARGB(255, red, green, blue);
  }

  Color getRandomColor() {
    final random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256), // Red
      random.nextInt(256), // Green
      random.nextInt(256), // Blue
    );
  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: getNameBasedColor(widget.name),
      child: Text(
        getInitials(widget.name),
        style: TextStyle(
          color: Colors.white,
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
