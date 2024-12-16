import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_method_widget.dart' show LoginMethodWidget;
import 'package:flutter/material.dart';

class LoginMethodModel extends FlutterFlowModel<LoginMethodWidget> {
  ///  Local state fields for this page.

  bool isChecked = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Custom Action - generateHistoryParamsString] action in LoginMethod widget.
  String? reloginHistoryParam;
  // Stores action output result for [Custom Action - generateChecksum] action in LoginMethod widget.
  String? reloginHistoryChecksum;
  // State field(s) for mobileNum widget.
  FocusNode? mobileNumFocusNode;
  TextEditingController? mobileNumTextController;
  String? Function(BuildContext, String?)? mobileNumTextControllerValidator;
  String? _mobileNumTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your mobile number';
    }

    if (val.length > 10) {
      return 'Maximum 10 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('^[6-9]\\d{9}\$').hasMatch(val)) {
      return 'Please enter a valid Phone number.';
    }
    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Validate Form] action in Checkbox widget.
  bool? filledMobileNumber;
  // Stores action output result for [Custom Action - otpInputParamString] action in ContinueButton widget.
  String? otpInputParamString;
  // Stores action output result for [Custom Action - generateChecksum] action in ContinueButton widget.
  String? checksum;
  // Stores action output result for [Backend Call - API (consent)] action in ContinueButton widget.
  ApiCallResponse? loginConsentResponse;
  // Stores action output result for [Backend Call - API (generateOtp)] action in ContinueButton widget.
  ApiCallResponse? generatedOtpResponse;

  @override
  void initState(BuildContext context) {
    mobileNumTextControllerValidator = _mobileNumTextControllerValidator;
  }

  @override
  void dispose() {
    mobileNumFocusNode?.dispose();
    mobileNumTextController?.dispose();
  }
}
