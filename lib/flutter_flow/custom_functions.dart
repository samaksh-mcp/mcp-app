import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

String jsonString(String mobileNumber) {
  Map<String, dynamic> jsonMap = {
    "mobile_number": mobileNumber,
    "lang_code": "en",
    "auto_fetch_code": "123458",
    "loggedin_status": 1
  };

  String jsonString = jsonEncode(jsonMap);

  print(jsonString);
  return jsonString;
}

String otpInputParamStringify(
  String mobile,
  String language,
  String autoFetch,
  int loggedinstatus,
) {
  var inputParam = {
    "mobile_number": mobile,
    "lang_code": language,
    "auto_fetch_code": autoFetch,
    "loggedin_status": loggedinstatus
  };

  return jsonEncode(inputParam);
}

String? historyChecksumCalculator(
  String? mobile,
  String? page,
  String? length,
  String? filter,
  String? searchOption,
) {
  return jsonEncode({
    "mobile_number": mobile,
    "length": length,
    "page": page,
    "filter": filter,
    "search_option": searchOption
  });
}

String formatDate(
  String dateString,
  String format,
) {
  try {
    DateTime dateTime = DateTime.parse(dateString);
    return DateFormat(format).format(dateTime);
  } catch (e) {
    return 'Invalid Date';
  }
}

dynamic groupTransactionsByDate(String transactionData) {
  List<dynamic> transactions = jsonDecode(transactionData);

  Map<String, List<Map<String, dynamic>>> groupedTransactions = {};

  for (var transaction in transactions) {
    String completedAt = transaction['completed_at'].split('T')[0];

    if (groupedTransactions.containsKey(completedAt)) {
      groupedTransactions[completedAt]?.add(transaction);
    } else {
      groupedTransactions[completedAt] = [transaction];
    }
  }

  return groupedTransactions;
}

bool isValidMobileNumber(String mobileNumber) {
  final RegExp regex = RegExp(r'^\d{10,15}$');

  if (regex.hasMatch(mobileNumber)) {
    return true;
  } else {
    return false;
  }
}

bool hasFourDigits(String input) {
  final RegExp regExp = RegExp(r'^\d{4}$');
  return regExp.hasMatch(input);
}

String truncateString(String name) {
  const int MAX_STRING_LENGTH = 15;

  if (name.length <= MAX_STRING_LENGTH) {
    return name; // No truncation needed
  }

  // Truncate the string and append "..."
  return name.substring(0, MAX_STRING_LENGTH) + '...';
}

String getInitials(String name) {
  List<String> parts = name.split(" ");
  String initials = '';
  for (var part in parts) {
    initials += part[0].toUpperCase();
  }
  return initials;
}

Color getAvatarColor(String fullName) {
  int colorHash = fullName.hashCode;
  Color bgColor = Color((colorHash & 0xFFFFFF) + 0xFF000000);

  return bgColor;
}
