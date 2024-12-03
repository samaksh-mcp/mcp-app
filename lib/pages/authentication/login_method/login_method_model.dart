import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_method_widget.dart' show LoginMethodWidget;
import 'package:flutter/material.dart';

class LoginMethodModel extends FlutterFlowModel<LoginMethodWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
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
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Validate Form] action in ContinueButton widget.
  bool? allFieldsFilled;
  // Stores action output result for [Custom Action - generateChecksum] action in ContinueButton widget.
  String? checksum;
  // Stores action output result for [Backend Call - API (generateOtp)] action in ContinueButton widget.
  ApiCallResponse? generatedOtp;

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
