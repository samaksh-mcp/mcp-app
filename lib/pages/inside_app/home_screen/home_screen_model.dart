import '/backend/api_requests/api_calls.dart';
import '/components/custom_nav_bar/custom_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'home_screen_widget.dart' show HomeScreenWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomeScreenModel extends FlutterFlowModel<HomeScreenWidget> {
  ///  Local state fields for this page.

  String searchField = '';

  bool isLoading = true;

  String filterField = 'Total';

  String? statusFilter;

  bool loopCondition = true;

  String? txnStatusField = '';

  ///  State fields for stateful widgets in this page.

  // State field(s) for SearchBar widget.
  FocusNode? searchBarFocusNode;
  TextEditingController? searchBarTextController;
  String? Function(BuildContext, String?)? searchBarTextControllerValidator;
  // Stores action output result for [Custom Action - generateHistoryParamsString] action in SearchBar widget.
  String? historyParamString;
  // Stores action output result for [Custom Action - generateChecksum] action in SearchBar widget.
  String? checksumGenerated;
  // Stores action output result for [Backend Call - API (history)] action in SearchBar widget.
  ApiCallResponse? apiResultqj2;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // Stores action output result for [Custom Action - generateHistoryParamsString] action in DropDown widget.
  String? historyParamsStringForFiter;
  // Stores action output result for [Custom Action - generateChecksum] action in DropDown widget.
  String? checksumForFilter;
  // Stores action output result for [Backend Call - API (history)] action in DropDown widget.
  ApiCallResponse? apiResultvp5;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Stores action output result for [Custom Action - generateHistoryParamsString] action in DropDown widget.
  String? historyParamsStringForTxn;
  // Stores action output result for [Custom Action - generateChecksum] action in DropDown widget.
  String? checksumFoTxn;
  // Stores action output result for [Backend Call - API (history)] action in DropDown widget.
  ApiCallResponse? txnFilterResponse;
  // State field(s) for ListView widget.

  PagingController<ApiPagingParams, dynamic>? listViewPagingController1;
  Function(ApiPagingParams nextPageMarker)? listViewApiCall1;

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

    listViewPagingController1?.dispose();
    customNavBarModel.dispose();
  }

  /// Additional helper methods.
  Future waitForOnePageForListView1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete =
          (listViewPagingController1?.nextPageKey?.nextPageNumber ?? 0) > 0;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  PagingController<ApiPagingParams, dynamic> setListViewController1(
    Function(ApiPagingParams) apiCall,
  ) {
    listViewApiCall1 = apiCall;
    return listViewPagingController1 ??= _createListViewController1(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createListViewController1(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller..addPageRequestListener(listViewHistoryPage1);
  }

  void listViewHistoryPage1(ApiPagingParams nextPageMarker) =>
      listViewApiCall1!(nextPageMarker).then((listViewHistoryResponse) {
        final pageItems = (getJsonField(
                  listViewHistoryResponse.jsonBody,
                  r'''$.response.transactions''',
                ) ??
                [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        listViewPagingController1?.appendPage(
          pageItems,
          (pageItems.isNotEmpty)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: listViewHistoryResponse,
                )
              : null,
        );
      });
}
