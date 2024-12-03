import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'o_t_pscreen_widget.dart' show OTPscreenWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class OTPscreenModel extends FlutterFlowModel<OTPscreenWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Otp_Field widget.
  TextEditingController? otpField;
  String? Function(BuildContext, String?)? otpFieldValidator;
  String? _otpFieldValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter a valid OTP.';
    }
    if (val.length < 4) {
      return 'Requires 4 characters.';
    }
    return null;
  }

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 60000;
  int timerMilliseconds = 60000;
  String timerValue = StopWatchTimer.getDisplayTime(
    60000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Stores action output result for [Custom Action - encryptOtp] action in ContinueButton widget.
  String? otpEncrypt;
  // Stores action output result for [Backend Call - API (verfyOtp)] action in ContinueButton widget.
  ApiCallResponse? verifyOtp;

  @override
  void initState(BuildContext context) {
    otpField = TextEditingController();
    otpFieldValidator = _otpFieldValidator;
  }

  @override
  void dispose() {
    otpField?.dispose();
    timerController.dispose();
  }
}
