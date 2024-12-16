import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'o_t_pscreen_widget.dart' show OTPscreenWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class OTPscreenModel extends FlutterFlowModel<OTPscreenWidget> {
  ///  Local state fields for this page.

  int otpRetryCount = 0;

  DateTime? lastOtpRequestTime;

  bool isResendDisplayed = true;

  bool canResend = false;

  int timer = 10000;

  bool sessionCountdownStarted = false;

  bool otpFilled = false;

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
  final timerInitialTimeMs = 90000;
  int timerMilliseconds = 90000;
  String timerValue = StopWatchTimer.getDisplayTime(
    90000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Stores action output result for [Backend Call - API (generateOtp)] action in Button widget.
  ApiCallResponse? resendOtpResponse;
  // State field(s) for RefreshTimer widget.
  final refreshTimerInitialTimeMs = 0;
  int refreshTimerMilliseconds = 0;
  String refreshTimerValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController refreshTimerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Stores action output result for [Validate Form] action in ContinueButton widget.
  bool? validationDone;
  // Stores action output result for [Custom Action - getDeviceToken] action in ContinueButton widget.
  String? deviceToken;
  // Stores action output result for [Custom Action - encryptOtp] action in ContinueButton widget.
  String? otpEncrypt;
  // Stores action output result for [Custom Action - verifyOtpParamString] action in ContinueButton widget.
  String? verifyOtpParamString;
  // Stores action output result for [Custom Action - generateChecksum] action in ContinueButton widget.
  String? verifyOtpChecksum;
  // Stores action output result for [Backend Call - API (verfyOtp)] action in ContinueButton widget.
  ApiCallResponse? verifyOtp;
  // Stores action output result for [Custom Action - generateHistoryParamsString] action in ContinueButton widget.
  String? historyparam;
  // Stores action output result for [Custom Action - generateChecksum] action in ContinueButton widget.
  String? historyChecksum;
  // Stores action output result for [Backend Call - API (history)] action in ContinueButton widget.
  ApiCallResponse? billingInfoResponse;

  @override
  void initState(BuildContext context) {
    otpField = TextEditingController();
    otpFieldValidator = _otpFieldValidator;
  }

  @override
  void dispose() {
    otpField?.dispose();
    timerController.dispose();
    refreshTimerController.dispose();
  }
}
