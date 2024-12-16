import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'inside_q_r_widget.dart' show InsideQRWidget;
import 'package:flutter/material.dart';

class InsideQRModel extends FlutterFlowModel<InsideQRWidget> {
  ///  Local state fields for this page.

  dynamic insiderQrResponse;

  bool isLoading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - generateStaticQrParamsString] action in InsideQR widget.
  String? insiderQrParamString;
  // Stores action output result for [Custom Action - generateChecksum] action in InsideQR widget.
  String? insiderQrChecksum;
  // Stores action output result for [Backend Call - API (staticQR)] action in InsideQR widget.
  ApiCallResponse? apiResultfm6;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
