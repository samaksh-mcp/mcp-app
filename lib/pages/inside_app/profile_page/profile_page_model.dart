import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_page_widget.dart' show ProfilePageWidget;
import 'package:flutter/material.dart';

class ProfilePageModel extends FlutterFlowModel<ProfilePageWidget> {
  ///  Local state fields for this page.

  bool isLoading = true;

  dynamic profile;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - generateMerchantProfileParamsString] action in ProfilePage widget.
  String? merchantParam;
  // Stores action output result for [Custom Action - generateChecksum] action in ProfilePage widget.
  String? merchantChecksum;
  // Stores action output result for [Backend Call - API (MerchantInfo)] action in ProfilePage widget.
  ApiCallResponse? apiResult2h4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
