import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'collect_money_on_u_p_i_not_on_m_c_p_widget.dart'
    show CollectMoneyOnUPINotOnMCPWidget;
import 'package:flutter/material.dart';

class CollectMoneyOnUPINotOnMCPModel
    extends FlutterFlowModel<CollectMoneyOnUPINotOnMCPWidget> {
  ///  Local state fields for this page.

  String? customerNumber;

  String? amount;

  String? invoiceNumber;

  String language = 'en';

  bool isChecked = false;

  String? bankName;

  String? ifscCode;

  dynamic customerResponse;

  bool? showBankingName = false;

  String? bankingName;

  bool? showMissCallPay = false;

  bool showNotOnUpi = false;

  bool initiateOnBoarding = false;

  bool showDropdowns = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for CustomerMobile widget.
  FocusNode? customerMobileFocusNode;
  TextEditingController? customerMobileTextController;
  String? Function(BuildContext, String?)?
      customerMobileTextControllerValidator;
  String? _customerMobileTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter mobile number.';
    }

    if (val.length > 10) {
      return 'Enter a 10 digit mobile number';
    }
    if (!RegExp('^[6-9]\\d{9}\$').hasMatch(val)) {
      return 'Mobile number invalid.';
    }
    return null;
  }

  // Stores action output result for [Custom Action - genearateVerifyCustomerString] action in CustomerMobile widget.
  String? verifyCustomerParamsString;
  // Stores action output result for [Custom Action - generateChecksum] action in CustomerMobile widget.
  String? verifyCustomerChecksum;
  // Stores action output result for [Backend Call - API (verify customer)] action in CustomerMobile widget.
  ApiCallResponse? verifyCustomerResponse;
  // State field(s) for CollectAmount widget.
  FocusNode? collectAmountFocusNode;
  TextEditingController? collectAmountTextController;
  String? Function(BuildContext, String?)? collectAmountTextControllerValidator;
  String? _collectAmountTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for InvoiceBillNumber widget.
  FocusNode? invoiceBillNumberFocusNode;
  TextEditingController? invoiceBillNumberTextController;
  String? Function(BuildContext, String?)?
      invoiceBillNumberTextControllerValidator;
  // State field(s) for bankDropdown widget.
  String? bankDropdownValue;
  FormFieldController<String>? bankDropdownValueController;
  // State field(s) for langDropdown widget.
  String? langDropdownValue;
  FormFieldController<String>? langDropdownValueController;
  // State field(s) for ConsentCheck widget.
  bool? consentCheckValue;
  // Stores action output result for [Validate Form] action in ConsentCheck widget.
  bool? allFieldsChecked;
  // Stores action output result for [Backend Call - API (consent)] action in DownloadButton widget.
  ApiCallResponse? consentOnBoardingResponse;
  // Stores action output result for [Custom Action - generateInitiateCallParams] action in DownloadButton widget.
  String? initiateOnBoardingCallParams;
  // Stores action output result for [Custom Action - generateChecksum] action in DownloadButton widget.
  String? initiateOnBoardingCallChecksum;
  // Stores action output result for [Backend Call - API (Collect Money)] action in DownloadButton widget.
  ApiCallResponse? apiOnBoardingCallResponse;
  // Stores action output result for [Backend Call - API (consent)] action in DownloadButton widget.
  ApiCallResponse? consentMCPCallResponse;
  // Stores action output result for [Custom Action - generateInitiateCallParams] action in DownloadButton widget.
  String? initiateMCPCallParams;
  // Stores action output result for [Custom Action - generateChecksum] action in DownloadButton widget.
  String? initiateMCPCallChecksum;
  // Stores action output result for [Backend Call - API (Collect Money)] action in DownloadButton widget.
  ApiCallResponse? apiResultMCPCall;
  // Stores action output result for [Backend Call - API (consent)] action in DownloadButton widget.
  ApiCallResponse? consentCallResponse;
  // Stores action output result for [Custom Action - generateInitiateCallParams] action in DownloadButton widget.
  String? initiateUpiCallParams;
  // Stores action output result for [Custom Action - generateChecksum] action in DownloadButton widget.
  String? initiateUpiCallChecksum;
  // Stores action output result for [Backend Call - API (Collect Money)] action in DownloadButton widget.
  ApiCallResponse? apiResultUpiCall;

  @override
  void initState(BuildContext context) {
    customerMobileTextControllerValidator =
        _customerMobileTextControllerValidator;
    collectAmountTextControllerValidator =
        _collectAmountTextControllerValidator;
  }

  @override
  void dispose() {
    customerMobileFocusNode?.dispose();
    customerMobileTextController?.dispose();

    collectAmountFocusNode?.dispose();
    collectAmountTextController?.dispose();

    invoiceBillNumberFocusNode?.dispose();
    invoiceBillNumberTextController?.dispose();
  }
}
