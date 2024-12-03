import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String jsonString(String mobileNumber) {
  Map<String, dynamic> jsonMap = {
    "mobile_number": mobileNumber,
    "lang_code": "en",
    "auto_fetch_code": "123458"
  };

  String jsonString = jsonEncode(jsonMap);

  print(jsonString);
  return jsonString;
}

String otpInputParamStringify(
  String mobile,
  String language,
  String autoFetch,
) {
  var inputParam = jsonEncode({
    "mobile_number": mobile, //variable
    "lang_code": language,
    "auto_fetch_code": autoFetch // for what? //variable rakhna hai
  });
  return inputParam;
}
