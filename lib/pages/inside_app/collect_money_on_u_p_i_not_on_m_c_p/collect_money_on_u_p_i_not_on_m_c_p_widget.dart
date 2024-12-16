import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'collect_money_on_u_p_i_not_on_m_c_p_model.dart';
export 'collect_money_on_u_p_i_not_on_m_c_p_model.dart';

class CollectMoneyOnUPINotOnMCPWidget extends StatefulWidget {
  const CollectMoneyOnUPINotOnMCPWidget({super.key});

  @override
  State<CollectMoneyOnUPINotOnMCPWidget> createState() =>
      _CollectMoneyOnUPINotOnMCPWidgetState();
}

class _CollectMoneyOnUPINotOnMCPWidgetState
    extends State<CollectMoneyOnUPINotOnMCPWidget>
    with TickerProviderStateMixin {
  late CollectMoneyOnUPINotOnMCPModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CollectMoneyOnUPINotOnMCPModel());

    _model.customerMobileTextController ??= TextEditingController();
    _model.customerMobileFocusNode ??= FocusNode();

    _model.collectAmountTextController ??= TextEditingController();
    _model.collectAmountFocusNode ??= FocusNode();

    _model.invoiceBillNumberTextController ??=
        TextEditingController(text: _model.invoiceNumber);
    _model.invoiceBillNumberFocusNode ??= FocusNode();
    _model.invoiceBillNumberFocusNode!.addListener(() => safeSetState(() {}));
    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, -250.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 90.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          height: MediaQuery.sizeOf(context).height * 0.15,
                          decoration: const BoxDecoration(
                            color: Color(0xFFFDFFE3),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2.0,
                                color: Color(0x17202529),
                                offset: Offset(
                                  0.0,
                                  1.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50.0),
                              bottomRight: Radius.circular(50.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 50.0, 16.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, -1.0),
                                      child: FlutterFlowIconButton(
                                        borderColor: const Color(0xFFADADAD),
                                        borderRadius: 12.0,
                                        borderWidth: 1.0,
                                        buttonSize: 40.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        icon: Icon(
                                          Icons.arrow_back_ios_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 20.0,
                                        ),
                                        onPressed: () async {
                                          FFAppState().pageName = 'HomeScreen';
                                          safeSetState(() {});
                                          FFAppState().pageName = 'HomeScreen';
                                          safeSetState(() {});

                                          context.goNamed('HomeScreen');
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          70.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              'Collect Money',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'UPI Over Voice',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: SvgPicture.asset(
                                                  'assets/images/uil_missed-call.svg',
                                                  width: 30.0,
                                                  height: 30.0,
                                                  fit: BoxFit.scaleDown,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ].divide(const SizedBox(height: 5.0)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation1']!),
                        Form(
                          key: _model.formKey,
                          autovalidateMode: AutovalidateMode.disabled,
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 20.0, 15.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'CUSTOMER MOBILE, UPI NUMBER ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.sizeOf(context).width * 0.9,
                                  child: TextFormField(
                                    controller:
                                        _model.customerMobileTextController,
                                    focusNode: _model.customerMobileFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.customerMobileTextController',
                                      const Duration(milliseconds: 2000),
                                      () async {
                                        var shouldSetState = false;
                                        _model.customerNumber = _model
                                            .customerMobileTextController.text;
                                        safeSetState(() {});
                                        _model.showDropdowns = false;
                                        safeSetState(() {});
                                        _model.initiateOnBoarding = false;
                                        safeSetState(() {});
                                        _model.showBankingName = false;
                                        safeSetState(() {});
                                        _model.showMissCallPay = false;
                                        safeSetState(() {});
                                        _model.showNotOnUpi = false;
                                        safeSetState(() {});
                                        if (functions.isValidMobileNumber(
                                            _model.customerNumber!)) {
                                          _model.verifyCustomerParamsString =
                                              await actions
                                                  .genearateVerifyCustomerString(
                                            FFAppState().mobileNumber,
                                            _model.customerNumber!,
                                          );
                                          shouldSetState = true;
                                          _model.verifyCustomerChecksum =
                                              actions.generateChecksum(
                                            _model.verifyCustomerParamsString!,
                                            FFAppConstants.secret,
                                          );
                                          shouldSetState = true;
                                          _model.verifyCustomerResponse =
                                              await VerifyGroup
                                                  .verifyCustomerCall
                                                  .call(
                                            merchantNumber:
                                                FFAppState().mobileNumber,
                                            payerMobile: _model.customerNumber,
                                            checksum:
                                                _model.verifyCustomerChecksum,
                                            entityId: FFAppConstants.entityID,
                                          );

                                          shouldSetState = true;
                                          if ((_model.verifyCustomerResponse
                                                  ?.succeeded ??
                                              true)) {
                                            _model.customerResponse =
                                                getJsonField(
                                              (_model.verifyCustomerResponse
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$''',
                                            );
                                            safeSetState(() {});
                                            if (FFAppConstants
                                                    .customerStatusNotRegistered ==
                                                getJsonField(
                                                  (_model.verifyCustomerResponse
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.response.profile_status''',
                                                )) {
                                              _model.showBankingName = false;
                                              safeSetState(() {});
                                              _model.bankingName = '';
                                              safeSetState(() {});
                                              _model.showDropdowns = true;
                                              safeSetState(() {});
                                              _model.showMissCallPay = false;
                                              safeSetState(() {});
                                              _model.showNotOnUpi = true;
                                              safeSetState(() {});
                                              _model.initiateOnBoarding = true;
                                              safeSetState(() {});
                                              if (shouldSetState) {
                                                safeSetState(() {});
                                              }
                                              return;
                                            } else {
                                              if (FFAppConstants
                                                      .customerStatusMissCallClient ==
                                                  getJsonField(
                                                    (_model.verifyCustomerResponse
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.response.profile_status''',
                                                  )) {
                                                _model.showBankingName = true;
                                                safeSetState(() {});
                                                _model.showDropdowns = false;
                                                safeSetState(() {});
                                                _model.bankingName =
                                                    getJsonField(
                                                  (_model.verifyCustomerResponse
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.response.payer_name''',
                                                ).toString();
                                                safeSetState(() {});
                                                _model.showMissCallPay = true;
                                                safeSetState(() {});
                                                _model.showNotOnUpi = false;
                                                safeSetState(() {});
                                                if (shouldSetState) {
                                                  safeSetState(() {});
                                                }
                                                return;
                                              } else {
                                                _model.showBankingName = true;
                                                safeSetState(() {});
                                                _model.showDropdowns = true;
                                                safeSetState(() {});
                                                _model.bankingName =
                                                    getJsonField(
                                                  (_model.verifyCustomerResponse
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.response.payer_name''',
                                                ).toString();
                                                safeSetState(() {});
                                                _model.showMissCallPay = false;
                                                safeSetState(() {});
                                                _model.showNotOnUpi = false;
                                                safeSetState(() {});
                                                if (shouldSetState) {
                                                  safeSetState(() {});
                                                }
                                                return;
                                              }
                                            }
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Unable to verify customer',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                              ),
                                            );
                                            if (shouldSetState) {
                                              safeSetState(() {});
                                            }
                                            return;
                                          }
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Please enter proper mobile number',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  const Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                            ),
                                          );
                                          if (shouldSetState) {
                                            safeSetState(() {});
                                          }
                                          return;
                                        }

                                        if (shouldSetState) {
                                          safeSetState(() {});
                                        }
                                      },
                                    ),
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily),
                                            lineHeight: 1.5,
                                          ),
                                      hintText: 'Example: 7987766554',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily),
                                            lineHeight: 1.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      prefixIcon: Icon(
                                        Icons.local_phone_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 24.0,
                                      ),
                                      suffixIcon: Icon(
                                        FFIcons.kupiNumber,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 24.0,
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                          lineHeight: 1.5,
                                        ),
                                    maxLines: null,
                                    keyboardType: TextInputType.phone,
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    validator: _model
                                        .customerMobileTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                                if (_model.showNotOnUpi)
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (_model.showNotOnUpi)
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Number not on UPI',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            const Color(0xFF1EA550),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            const Color(0xFF1EA550),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                if (_model.showBankingName ?? true)
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'User BANKING NAME : ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            const Color(0xFF1EA550),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                            ),
                                            TextSpan(
                                              text: valueOrDefault<String>(
                                                _model.bankingName,
                                                'Not Found',
                                              ),
                                              style: const TextStyle(),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color: const Color(0xFF1EA550),
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),

                                      // Make this row a conditionally visible object. If the entered mobile number is a registered MCP user, then it will show.
                                      if (_model.showMissCallPay ?? true)
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/MCPhighRes.png',
                                                width: 150.0,
                                                height: 40.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Text(
                                              'User',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    color: const Color(0xFF0225A9),
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily),
                                                  ),
                                            ),
                                          ],
                                        ),
                                    ],
                                  ),
                                SizedBox(
                                  width: MediaQuery.sizeOf(context).width * 0.9,
                                  child: TextFormField(
                                    controller:
                                        _model.collectAmountTextController,
                                    focusNode: _model.collectAmountFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.collectAmountTextController',
                                      const Duration(milliseconds: 2000),
                                      () async {
                                        _model.amount = _model
                                            .collectAmountTextController.text;
                                        safeSetState(() {});
                                      },
                                    ),
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily),
                                            lineHeight: 1.0,
                                          ),
                                      hintText: 'AMOUNT',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily),
                                            lineHeight: 1.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      prefixIcon: Icon(
                                        Icons.currency_rupee,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                          lineHeight: 1.5,
                                        ),
                                    maxLines: null,
                                    maxLength: 5,
                                    maxLengthEnforcement:
                                        MaxLengthEnforcement.enforced,
                                    buildCounter: (context,
                                            {required currentLength,
                                            required isFocused,
                                            maxLength}) =>
                                        null,
                                    keyboardType: TextInputType.number,
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    validator: _model
                                        .collectAmountTextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                          RegExp('[0-9]'))
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 12.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                        ),
                                        child: Checkbox(
                                          value: _model.checkboxValue ??= false,
                                          onChanged: (newValue) async {
                                            safeSetState(() => _model
                                                .checkboxValue = newValue!);
                                          },
                                          side: BorderSide(
                                            width: 2,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          checkColor:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                      Text(
                                        'Have Invoice / Bill',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                if (_model.checkboxValue ?? true)
                                  SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    child: TextFormField(
                                      controller: _model
                                          .invoiceBillNumberTextController,
                                      focusNode:
                                          _model.invoiceBillNumberFocusNode,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.invoiceBillNumberTextController',
                                        const Duration(milliseconds: 2000),
                                        () async {
                                          if (_model
                                                  .invoiceBillNumberTextController
                                                  .text !=
                                              '') {
                                            _model.invoiceNumber = _model
                                                .invoiceBillNumberTextController
                                                .text;
                                            safeSetState(() {});
                                            return;
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Please fill in invoice number',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                              ),
                                            );
                                            return;
                                          }
                                        },
                                      ),
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'INVOICE / BILL NUMBER',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMediumFamily),
                                              lineHeight: 1.5,
                                            ),
                                        hintText: 'IN08122024001',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMediumFamily),
                                              lineHeight: 1.5,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                            lineHeight: 1.5,
                                          ),
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model
                                          .invoiceBillNumberTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                if (_model.showDropdowns)
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Text(
                                        'Bank Name',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ),
                                  ),
                                if (_model.showDropdowns)
                                  FutureBuilder<ApiCallResponse>(
                                    future: FFAppState().bankNamesQuery(
                                      requestFn: () =>
                                          InfoGroup.bankDetailsCall.call(),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      final bankDropdownBankDetailsResponse =
                                          snapshot.data!;

                                      return FlutterFlowDropDown<String>(
                                        controller: _model
                                                .bankDropdownValueController ??=
                                            FormFieldController<String>(
                                          _model.bankDropdownValue ??= '',
                                        ),
                                        options: List<String>.from(
                                            (getJsonField(
                                          bankDropdownBankDetailsResponse
                                              .jsonBody,
                                          r'''$.response.bank_list[:].ifsc_code''',
                                          true,
                                        ) as List)
                                                .map<String>(
                                                    (s) => s.toString())
                                                .toList()),
                                        optionLabels: (getJsonField(
                                          bankDropdownBankDetailsResponse
                                              .jsonBody,
                                          r'''$.response.bank_list[:].bank_name''',
                                          true,
                                        ) as List)
                                            .map<String>((s) => s.toString())
                                            .toList(),
                                        onChanged: (val) async {
                                          safeSetState(() =>
                                              _model.bankDropdownValue = val);
                                          _model.bankName =
                                              _model.bankDropdownValue;
                                          safeSetState(() {});
                                          _model.ifscCode = _model.bankName;
                                          safeSetState(() {});
                                        },
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.9,
                                        height: 50.0,
                                        searchHintTextStyle:
                                            FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMediumFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMediumFamily),
                                                  lineHeight: 1.5,
                                                ),
                                        searchTextStyle: FlutterFlowTheme.of(
                                                context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                        hintText: 'Bank Name',
                                        searchHintText: 'Search bank...',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        borderWidth: 1.0,
                                        borderRadius: 8.0,
                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: false,
                                        isSearchable: true,
                                        isMultiSelect: false,
                                      );
                                    },
                                  ),
                                if (_model.showDropdowns)
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Text(
                                        'PREFERRED LANGUAGE',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ),
                                  ),
                                if (_model.showDropdowns)
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.langDropdownValueController ??=
                                            FormFieldController<String>(
                                      _model.langDropdownValue ??= 'English',
                                    ),
                                    options: const ['English', 'हिंदी', 'বাঙালী'],
                                    onChanged: (val) async {
                                      safeSetState(
                                          () => _model.langDropdownValue = val);
                                      _model.language = () {
                                        if (_model.langDropdownValue ==
                                            'English') {
                                          return 'English';
                                        } else if (_model.langDropdownValue ==
                                            'हिंदी') {
                                          return 'hi';
                                        } else if (_model.langDropdownValue ==
                                            'বাঙালী') {
                                          return 'bn';
                                        } else {
                                          return 'en';
                                        }
                                      }();
                                      safeSetState(() {});
                                    },
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    height: 50.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                    hintText: 'Select an option',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 2.0,
                                    borderColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    borderWidth: 1.0,
                                    borderRadius: 8.0,
                                    margin: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    hidesUnderline: true,
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                        ),
                                        child: Checkbox(
                                          value: _model.consentCheckValue ??=
                                              _model.isChecked,
                                          onChanged: (newValue) async {
                                            safeSetState(() => _model
                                                .consentCheckValue = newValue!);
                                            if (newValue!) {
                                              var shouldSetState = false;
                                              _model.allFieldsChecked = true;
                                              if (_model.formKey.currentState ==
                                                      null ||
                                                  !_model.formKey.currentState!
                                                      .validate()) {
                                                safeSetState(() => _model
                                                    .allFieldsChecked = false);
                                                return;
                                              }
                                              shouldSetState = true;
                                              if (_model.allFieldsChecked !=
                                                  null) {
                                                _model.isChecked =
                                                    !_model.isChecked;
                                                safeSetState(() {});
                                                if (shouldSetState) {
                                                  safeSetState(() {});
                                                }
                                                return;
                                              } else {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: const Text('Alert!'),
                                                      content: const Text(
                                                          'Please fill the required fields.'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: const Text('Ok'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                                _model.isChecked = false;
                                                safeSetState(() {});
                                                if (shouldSetState) {
                                                  safeSetState(() {});
                                                }
                                                return;
                                              }

                                              if (shouldSetState) {
                                                safeSetState(() {});
                                              }
                                            }
                                          },
                                          side: BorderSide(
                                            width: 2,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          checkColor:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                      RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'I confirm that ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            const Color(0xFF8C0D0D),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                            ),
                                            TextSpan(
                                              text: valueOrDefault<String>(
                                                _model.initiateOnBoarding
                                                    ? _model.customerNumber
                                                    : _model.bankingName,
                                                '-',
                                              ),
                                              style: const TextStyle(),
                                            ),
                                            const TextSpan(
                                              text:
                                                  '  has agreed \nto pay amount of ₹ ',
                                              style: TextStyle(),
                                            ),
                                            TextSpan(
                                              text: valueOrDefault<String>(
                                                _model.amount,
                                                '0',
                                              ),
                                              style: const TextStyle(),
                                            ),
                                            const TextSpan(
                                              text: ' by UPI OVER VOICE',
                                              style: TextStyle(),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color: const Color(0xFF8C0D0D),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 200.0,
                                ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.08,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      var shouldSetState = false;
                      if (_model.consentCheckValue == true) {
                        if (_model.initiateOnBoarding) {
                          if (_model.bankName != '') {
                            if (_model.language != '') {
                              _model.consentOnBoardingResponse =
                                  await VerifyGroup.consentCall.call(
                                merchantMobile: FFAppState().mobileNumber,
                                customerMobile: _model.customerNumber,
                                consentName: 'click_2_call',
                              );

                              shouldSetState = true;
                              if ((_model
                                      .consentOnBoardingResponse?.succeeded ??
                                  true)) {
                                _model.initiateOnBoardingCallParams =
                                    await actions.generateInitiateCallParams(
                                  _model.customerNumber!,
                                  FFAppState().mobileNumber,
                                  _model.amount!,
                                  'for this customer',
                                  _model.checkboxValue!
                                      ? _model.invoiceNumber!
                                      : '',
                                  'app',
                                  _model.ifscCode != null &&
                                          _model.ifscCode != ''
                                      ? _model.ifscCode!
                                      : '',
                                  1,
                                  _model.language,
                                  _model.bankingName!,
                                );
                                shouldSetState = true;
                                _model.initiateOnBoardingCallChecksum =
                                    actions.generateChecksum(
                                  _model.initiateOnBoardingCallParams!,
                                  FFAppConstants.secret,
                                );
                                shouldSetState = true;
                                _model.apiOnBoardingCallResponse =
                                    await CollectMoneyGroup.collectMoneyCall
                                        .call(
                                  entityId: '18241',
                                  checksum:
                                      _model.initiateOnBoardingCallChecksum,
                                  mobileNumber: FFAppState().mobileNumber,
                                  payerMobile: _model.customerNumber,
                                  amount: _model.amount,
                                  remarks: 'for this customer',
                                  invoiceNumber: _model.checkboxValue!
                                      ? _model.invoiceNumber
                                      : '',
                                  channel: 'app',
                                  ifscCode: _model.ifscCode != null &&
                                          _model.ifscCode != ''
                                      ? _model.ifscCode
                                      : '',
                                  click2call: 1,
                                  language: _model.language,
                                  customerName: _model.bankingName,
                                );

                                shouldSetState = true;
                                if ((_model
                                        .apiOnBoardingCallResponse?.succeeded ??
                                    true)) {
                                  context.pushNamed(
                                    'TransactionRequest',
                                    queryParameters: {
                                      'txn': serializeParam(
                                        getJsonField(
                                          (_model.apiOnBoardingCallResponse
                                                  ?.jsonBody ??
                                              ''),
                                          r'''$''',
                                        ),
                                        ParamType.JSON,
                                      ),
                                      'name': serializeParam(
                                        _model.bankingName,
                                        ParamType.String,
                                      ),
                                      'amount': serializeParam(
                                        _model.amount,
                                        ParamType.String,
                                      ),
                                      'initiatedOn': serializeParam(
                                        getCurrentTimestamp,
                                        ParamType.DateTime,
                                      ),
                                      'bankingName': serializeParam(
                                        _model.customerNumber,
                                        ParamType.String,
                                      ),
                                      'upiMobileNumber': serializeParam(
                                        _model.customerNumber,
                                        ParamType.String,
                                      ),
                                      'invoiceBillNumber': serializeParam(
                                        _model.invoiceNumber,
                                        ParamType.String,
                                      ),
                                      'bankName': serializeParam(
                                        _model.bankName,
                                        ParamType.String,
                                      ),
                                      'ifscCode': serializeParam(
                                        _model.ifscCode,
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );

                                  if (shouldSetState) safeSetState(() {});
                                  return;
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Could not initiate call for MCP',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: const Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                  );
                                  if (shouldSetState) safeSetState(() {});
                                  return;
                                }
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Please try again later',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                                if (shouldSetState) safeSetState(() {});
                                return;
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Please select a language',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                ),
                              );
                              if (shouldSetState) safeSetState(() {});
                              return;
                            }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Please select a bank',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: const Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).tertiary,
                              ),
                            );
                            if (shouldSetState) safeSetState(() {});
                            return;
                          }
                        } else {
                          if (_model.showMissCallPay == true) {
                            _model.consentMCPCallResponse =
                                await VerifyGroup.consentCall.call(
                              merchantMobile: FFAppState().mobileNumber,
                              customerMobile: _model.customerNumber,
                              consentName: 'click_2_call',
                            );

                            shouldSetState = true;
                            if ((_model.consentMCPCallResponse?.succeeded ??
                                true)) {
                              _model.initiateMCPCallParams =
                                  await actions.generateInitiateCallParams(
                                _model.customerNumber!,
                                FFAppState().mobileNumber,
                                _model.amount!,
                                'for this customer',
                                _model.checkboxValue!
                                    ? _model.invoiceNumber!
                                    : '',
                                'app',
                                _model.ifscCode != null && _model.ifscCode != ''
                                    ? _model.ifscCode!
                                    : '',
                                1,
                                _model.language,
                                _model.bankingName!,
                              );
                              shouldSetState = true;
                              _model.initiateMCPCallChecksum =
                                  actions.generateChecksum(
                                _model.initiateMCPCallParams!,
                                FFAppConstants.secret,
                              );
                              shouldSetState = true;
                              _model.apiResultMCPCall =
                                  await CollectMoneyGroup.collectMoneyCall.call(
                                entityId: '18241',
                                checksum: _model.initiateMCPCallChecksum,
                                mobileNumber: FFAppState().mobileNumber,
                                payerMobile: _model.customerNumber,
                                amount: _model.amount,
                                remarks: 'for this customer',
                                invoiceNumber: _model.checkboxValue!
                                    ? _model.invoiceNumber
                                    : '',
                                channel: 'app',
                                ifscCode: _model.ifscCode != null &&
                                        _model.ifscCode != ''
                                    ? _model.ifscCode
                                    : '',
                                click2call: 1,
                                language: _model.language,
                                customerName: _model.bankingName,
                              );

                              shouldSetState = true;
                              if ((_model.apiResultMCPCall?.succeeded ??
                                  true)) {
                                context.pushNamed(
                                  'TransactionRequest',
                                  queryParameters: {
                                    'txn': serializeParam(
                                      getJsonField(
                                        (_model.apiResultMCPCall?.jsonBody ??
                                            ''),
                                        r'''$''',
                                      ),
                                      ParamType.JSON,
                                    ),
                                    'name': serializeParam(
                                      _model.bankingName,
                                      ParamType.String,
                                    ),
                                    'amount': serializeParam(
                                      _model.amount,
                                      ParamType.String,
                                    ),
                                    'initiatedOn': serializeParam(
                                      getCurrentTimestamp,
                                      ParamType.DateTime,
                                    ),
                                    'bankingName': serializeParam(
                                      _model.bankingName,
                                      ParamType.String,
                                    ),
                                    'upiMobileNumber': serializeParam(
                                      _model.customerNumber,
                                      ParamType.String,
                                    ),
                                    'invoiceBillNumber': serializeParam(
                                      _model.invoiceNumber,
                                      ParamType.String,
                                    ),
                                    'bankName': serializeParam(
                                      _model.bankName,
                                      ParamType.String,
                                    ),
                                    'ifscCode': serializeParam(
                                      _model.ifscCode,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );

                                if (shouldSetState) safeSetState(() {});
                                return;
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Could not initiate call for MCP',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).tertiary,
                                  ),
                                );
                                if (shouldSetState) safeSetState(() {});
                                return;
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Please try again later',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                              if (shouldSetState) safeSetState(() {});
                              return;
                            }
                          } else {
                            if (_model.bankName != '') {
                              if (_model.language != '') {
                                _model.consentCallResponse =
                                    await VerifyGroup.consentCall.call(
                                  merchantMobile: FFAppState().mobileNumber,
                                  customerMobile: _model.customerNumber,
                                  consentName: 'click_2_call',
                                );

                                shouldSetState = true;
                                if ((_model.consentCallResponse?.succeeded ??
                                    true)) {
                                  _model.initiateUpiCallParams =
                                      await actions.generateInitiateCallParams(
                                    _model.customerNumber!,
                                    FFAppState().mobileNumber,
                                    _model.amount!,
                                    'for this customer',
                                    _model.checkboxValue!
                                        ? _model.invoiceNumber!
                                        : '',
                                    'app',
                                    _model.ifscCode!,
                                    1,
                                    _model.language,
                                    _model.bankingName!,
                                  );
                                  shouldSetState = true;
                                  _model.initiateUpiCallChecksum =
                                      actions.generateChecksum(
                                    _model.initiateUpiCallParams!,
                                    FFAppConstants.secret,
                                  );
                                  shouldSetState = true;
                                  _model.apiResultUpiCall =
                                      await CollectMoneyGroup.collectMoneyCall
                                          .call(
                                    entityId: '18241',
                                    checksum: _model.initiateUpiCallChecksum,
                                    mobileNumber: FFAppState().mobileNumber,
                                    payerMobile: _model.customerNumber,
                                    amount: _model.amount,
                                    remarks: 'for this customer',
                                    invoiceNumber: _model.checkboxValue!
                                        ? _model.invoiceNumber
                                        : '',
                                    channel: 'app',
                                    ifscCode: _model.ifscCode,
                                    click2call: 1,
                                    language: _model.language,
                                    customerName: _model.bankingName,
                                  );

                                  shouldSetState = true;
                                  if ((_model.apiResultUpiCall?.succeeded ??
                                      true)) {
                                    context.pushNamed(
                                      'TransactionRequest',
                                      queryParameters: {
                                        'txn': serializeParam(
                                          getJsonField(
                                            (_model.apiResultUpiCall
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$''',
                                          ),
                                          ParamType.JSON,
                                        ),
                                        'name': serializeParam(
                                          _model.bankingName,
                                          ParamType.String,
                                        ),
                                        'amount': serializeParam(
                                          _model.amount,
                                          ParamType.String,
                                        ),
                                        'initiatedOn': serializeParam(
                                          getCurrentTimestamp,
                                          ParamType.DateTime,
                                        ),
                                        'bankingName': serializeParam(
                                          _model.bankingName,
                                          ParamType.String,
                                        ),
                                        'upiMobileNumber': serializeParam(
                                          _model.customerNumber,
                                          ParamType.String,
                                        ),
                                        'invoiceBillNumber': serializeParam(
                                          _model.invoiceNumber,
                                          ParamType.String,
                                        ),
                                        'bankName': serializeParam(
                                          _model.bankName,
                                          ParamType.String,
                                        ),
                                        'ifscCode': serializeParam(
                                          _model.ifscCode,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );

                                    if (shouldSetState) safeSetState(() {});
                                    return;
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Could not initiate call for UPI',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: const Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .tertiary,
                                      ),
                                    );
                                    if (shouldSetState) safeSetState(() {});
                                    return;
                                  }
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Please try again later',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: const Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                  if (shouldSetState) safeSetState(() {});
                                  return;
                                }
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Please select a language',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).tertiary,
                                  ),
                                );
                                if (shouldSetState) safeSetState(() {});
                                return;
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Please select a bank',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                ),
                              );
                              if (shouldSetState) safeSetState(() {});
                              return;
                            }
                          }
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Please given consent',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: const Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );
                        if (shouldSetState) safeSetState(() {});
                        return;
                      }

                      if (shouldSetState) safeSetState(() {});
                    },
                    text: !_model.initiateOnBoarding
                        ? 'INITIATE UPI OVER CALL'
                        : 'INITIATE UPI OVER CALL',
                    options: FFButtonOptions(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      height: 45.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleSmallFamily),
                          ),
                      borderSide: const BorderSide(
                        width: 2.0,
                      ),
                    ),
                  ),
                ].divide(const SizedBox(height: 12.0)),
              ),
            ).animateOnPageLoad(
                animationsMap['containerOnPageLoadAnimation2']!),
          ],
        ),
      ),
    );
  }
}
