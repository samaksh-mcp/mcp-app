import '/backend/api_requests/api_calls.dart';
import '/components/custom_nav_bar/custom_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'home_screen_widget.dart' show HomeScreenWidget;
import 'package:flutter/material.dart';

class HomeScreenModel extends FlutterFlowModel<HomeScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SearchBar widget.
  FocusNode? searchBarFocusNode;
  TextEditingController? searchBarTextController;
  String? Function(BuildContext, String?)? searchBarTextControllerValidator;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Model for customNavBar component.
  late CustomNavBarModel customNavBarModel;

  @override
  void initState(BuildContext context) {
    customNavBarModel = createModel(context, () => CustomNavBarModel());
  }

  @override
  void dispose() {
    searchBarFocusNode?.dispose();
    searchBarTextController?.dispose();

    customNavBarModel.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
