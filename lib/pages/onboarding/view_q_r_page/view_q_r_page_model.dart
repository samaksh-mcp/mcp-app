import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_q_r_page_widget.dart' show ViewQRPageWidget;
import 'package:flutter/material.dart';

class ViewQRPageModel extends FlutterFlowModel<ViewQRPageWidget> {
  ///  Local state fields for this page.

  dynamic staticQrResponse;

  bool isLoading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - generateStaticQrParamsString] action in ViewQRPage widget.
  String? staticQRParamsString;
  // Stores action output result for [Custom Action - generateChecksum] action in ViewQRPage widget.
  String? staticQrChecksum;
  // Stores action output result for [Backend Call - API (staticQR)] action in ViewQRPage widget.
  ApiCallResponse? apiResult40j;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
