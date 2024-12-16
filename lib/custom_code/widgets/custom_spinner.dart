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

import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CustomSpinner extends StatefulWidget {
  const CustomSpinner({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<CustomSpinner> createState() => _CustomSpinnerState();
}

class _CustomSpinnerState extends State<CustomSpinner> {
  @override
  Widget build(BuildContext context) {
    // return SVProgressHUD.show();
    return SleekCircularSlider(
      appearance: CircularSliderAppearance(
        spinnerMode: true,
      ),
    );
  }
}
