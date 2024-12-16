import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'o_t_pscreen_model.dart';
export 'o_t_pscreen_model.dart';

class OTPscreenWidget extends StatefulWidget {
  const OTPscreenWidget({
    super.key,
    required this.checksum,
  });

  final String? checksum;

  @override
  State<OTPscreenWidget> createState() => _OTPscreenWidgetState();
}

class _OTPscreenWidgetState extends State<OTPscreenWidget> {
  late OTPscreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OTPscreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.timerController.onStartTimer();
      _model.refreshTimerController.onStartTimer();
      _model.lastOtpRequestTime = getCurrentTimestamp;
      safeSetState(() {});
    });

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
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            automaticallyImplyLeading: true,
            leading: FlutterFlowIconButton(
              buttonSize: double.infinity,
              icon: Icon(
                Icons.chevron_left_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 30.0,
              ),
              onPressed: () async {
                context.safePop();
              },
            ),
            title: ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: Image.asset(
                'assets/images/MCPhighRes.png',
                width: 135.0,
                height: 45.0,
                fit: BoxFit.scaleDown,
              ),
            ),
            actions: const [],
            centerTitle: true,
            toolbarHeight: 70.0,
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(17.0, 60.0, 0.0, 0.0),
                    child: Text(
                      'OTP Verification',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleMediumFamily,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleMediumFamily),
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(17.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'Enter the verification code we just sent on your mobile number',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 43.0, 0.0, 0.0),
                  child: PinCodeTextField(
                    autoDisposeControllers: false,
                    appContext: context,
                    length: 4,
                    textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyLargeFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyLargeFamily),
                        ),
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    enableActiveFill: false,
                    autoFocus: true,
                    enablePinAutofill: true,
                    errorTextSpace: 16.0,
                    showCursor: true,
                    cursorColor: FlutterFlowTheme.of(context).primary,
                    obscureText: false,
                    hintCharacter: '●',
                    keyboardType: TextInputType.number,
                    pinTheme: PinTheme(
                      fieldHeight: 44.0,
                      fieldWidth: 44.0,
                      borderWidth: 2.0,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                      shape: PinCodeFieldShape.box,
                      activeColor: FlutterFlowTheme.of(context).primaryText,
                      inactiveColor: FlutterFlowTheme.of(context).alternate,
                      selectedColor: FlutterFlowTheme.of(context).primary,
                    ),
                    controller: _model.otpField,
                    onChanged: (_) {},
                    onCompleted: (_) async {
                      if (functions.hasFourDigits(_model.otpField!.text)) {
                        safeSetState(() {
                          _model.otpField?.text = _model.otpField!.text;
                        });
                        _model.otpFilled = true;
                        safeSetState(() {});
                        return;
                      } else {
                        _model.otpFilled = false;
                        safeSetState(() {});
                        var confirmDialogResponse = await showDialog<bool>(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: const Text('Oops!'),
                                  content: const Text('Could not detect OTP.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.pop(
                                          alertDialogContext, false),
                                      child: const Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () => Navigator.pop(
                                          alertDialogContext, true),
                                      child: const Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            ) ??
                            false;
                        return;
                      }
                    },
                    autovalidateMode: AutovalidateMode.disabled,
                    validator: _model.otpFieldValidator.asValidator(context),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 33.0, 0.0, 5.0),
                  child: FlutterFlowTimer(
                    initialTime: _model.timerInitialTimeMs,
                    getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                      value,
                      hours: false,
                      milliSecond: false,
                    ),
                    controller: _model.timerController,
                    updateStateInterval: const Duration(milliseconds: 1),
                    onChanged: (value, displayTime, shouldUpdate) {
                      _model.timerMilliseconds = value;
                      _model.timerValue = displayTime;
                      if (shouldUpdate) safeSetState(() {});
                    },
                    onEnded: () async {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: const Text('OTP Expired'),
                            content: const Text('Try again from start.'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: const Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );

                      context.goNamed('LoginMethod');
                    },
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineMediumFamily,
                          color: FlutterFlowTheme.of(context).primary,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context)
                                  .headlineMediumFamily),
                        ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (_model.isResendDisplayed)
                      FFButtonWidget(
                        onPressed: !_model.canResend
                            ? null
                            : () async {
                                var shouldSetState = false;
                                if (_model.otpRetryCount < 3) {
                                  _model.resendOtpResponse =
                                      await AuthenticationGroup.generateOtpCall
                                          .call(
                                    checksum: widget.checksum,
                                    entityId: FFAppConstants.entityID,
                                    mobileNum: FFAppState().mobileNumber,
                                    langCode: FFAppConstants.langCode,
                                    autoFetchCode: FFAppConstants.autoFetchCode,
                                  );

                                  shouldSetState = true;
                                  if ((_model.resendOtpResponse?.succeeded ??
                                      true)) {
                                    _model.canResend = false;
                                    safeSetState(() {});
                                    _model.lastOtpRequestTime =
                                        getCurrentTimestamp;
                                    safeSetState(() {});
                                    _model.otpRetryCount =
                                        _model.otpRetryCount + 1;
                                    safeSetState(() {});
                                    _model.timerController.timer
                                        .setPresetTime(mSec: 90000, add: false);
                                    _model.timerController.onResetTimer();

                                    _model.timerController.onStartTimer();
                                    _model.timer = 10000;
                                    safeSetState(() {});
                                    _model.refreshTimerController.timer
                                        .setPresetTime(mSec: 10000, add: false);
                                    _model.refreshTimerController
                                        .onResetTimer();

                                    _model.refreshTimerController
                                        .onStartTimer();
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'OTP send to your mobile number',
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
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Failed to resend OTP.',
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
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: const Text('Attention!'),
                                        content: const Text(
                                            'Max number of retries reached. Try again later.'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: const Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  _model.canResend = false;
                                  safeSetState(() {});
                                }

                                if (shouldSetState) safeSetState(() {});
                              },
                        text: 'Resend OTP',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0x00002EDC),
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: FlutterFlowTheme.of(context).primary,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleSmallFamily),
                              ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                          disabledTextColor:
                              FlutterFlowTheme.of(context).secondaryText,
                        ),
                      ),
                    FlutterFlowTimer(
                      initialTime: _model.timer,
                      getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                        value,
                        hours: false,
                        milliSecond: false,
                      ),
                      controller: _model.refreshTimerController,
                      updateStateInterval: const Duration(milliseconds: 1000),
                      onChanged: (value, displayTime, shouldUpdate) {
                        _model.refreshTimerMilliseconds = value;
                        _model.refreshTimerValue = displayTime;
                        if (shouldUpdate) safeSetState(() {});
                      },
                      onEnded: () async {
                        _model.timer = 0;
                        safeSetState(() {});
                        _model.canResend = true;
                        safeSetState(() {});
                        _model.isResendDisplayed = true;
                        safeSetState(() {});
                        FFAppState().timeExpired =
                            !(FFAppState().timeExpired ?? true);
                        safeSetState(() {});
                        FFAppState().timeExpired = false;
                        safeSetState(() {});
                      },
                      textAlign: TextAlign.start,
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineSmallFamily),
                              ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: !_model.otpFilled
                        ? null
                        : () async {
                            var shouldSetState = false;
                            _model.validationDone = true;
                            if (_model.formKey.currentState == null ||
                                !_model.formKey.currentState!.validate()) {
                              _model.validationDone = false;
                            }
                            shouldSetState = true;
                            _model.deviceToken = await actions.getDeviceToken();
                            shouldSetState = true;
                            FFAppState().deviceToken = _model.deviceToken!;
                            safeSetState(() {});
                            _model.otpEncrypt = await actions.encryptOtp(
                              _model.otpField!.text,
                            );
                            shouldSetState = true;
                            _model.verifyOtpParamString =
                                await actions.verifyOtpParamString(
                              FFAppState().mobileNumber,
                              _model.otpEncrypt!,
                              FFAppState().deviceToken,
                            );
                            shouldSetState = true;
                            _model.verifyOtpChecksum =
                                actions.generateChecksum(
                              _model.verifyOtpParamString!,
                              FFAppConstants.secret,
                            );
                            shouldSetState = true;
                            _model.verifyOtp =
                                await AuthenticationGroup.verfyOtpCall.call(
                              mobile: FFAppState().mobileNumber,
                              otp: _model.otpEncrypt,
                              checkSum: _model.verifyOtpChecksum,
                              entityID: FFAppConstants.entityID,
                              pushToken: FFAppState().deviceToken,
                            );

                            shouldSetState = true;
                            if ((_model.verifyOtp?.succeeded ?? true)) {
                              FFAppState().verifyOtpResponse = getJsonField(
                                (_model.verifyOtp?.jsonBody ?? ''),
                                r'''$''',
                              );
                              safeSetState(() {});
                              FFAppState().firebaseToken = getJsonField(
                                (_model.verifyOtp?.jsonBody ?? ''),
                                r'''$.response.profile_info.firebase_token''',
                              ).toString();
                              safeSetState(() {});
                              FFAppState().accessToken = getJsonField(
                                (_model.verifyOtp?.jsonBody ?? ''),
                                r'''$.response.profile_info.access_token''',
                              ).toString();
                              safeSetState(() {});
                              FFAppState().onBoardingUrl = getJsonField(
                                (_model.verifyOtp?.jsonBody ?? ''),
                                r'''$.response.profile_info.short_url''',
                              ).toString();
                              safeSetState(() {});
                              _model.historyparam =
                                  await actions.generateHistoryParamsString(
                                FFAppState().mobileNumber,
                                50,
                                0,
                                'Total',
                                '',
                                '',
                              );
                              shouldSetState = true;
                              _model.historyChecksum =
                                  actions.generateChecksum(
                                _model.historyparam!,
                                FFAppConstants.secret,
                              );
                              shouldSetState = true;
                              _model.billingInfoResponse =
                                  await TransctionsGroup.historyCall.call(
                                entityID: FFAppConstants.entityID,
                                checksum: _model.historyChecksum,
                                mobileNumber: FFAppState().mobileNumber,
                                length: 50,
                                page: 1,
                                filter: 'Total',
                                searchOption: '',
                                txnStatus: '',
                              );

                              shouldSetState = true;
                              if ((_model.billingInfoResponse?.succeeded ??
                                  true)) {
                                FFAppState().checksum = _model.historyChecksum!;
                                safeSetState(() {});
                                FFAppState().billingInfo = getJsonField(
                                  (_model.billingInfoResponse?.jsonBody ?? ''),
                                  r'''$''',
                                );
                                safeSetState(() {});

                                context.goNamed(
                                  'HomeScreen',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.rightToLeft,
                                    ),
                                  },
                                );

                                if (shouldSetState) safeSetState(() {});
                                return;
                              } else {
                                FFAppState().checksum = _model.historyChecksum!;
                                safeSetState(() {});

                                context.goNamed(
                                  'HomeScreen',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.rightToLeft,
                                    ),
                                  },
                                );

                                if (shouldSetState) safeSetState(() {});
                                return;
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'You entered wrong OTP. Please try again.',
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

                            if (shouldSetState) safeSetState(() {});
                          },
                    text: 'Continue',
                    options: FFButtonOptions(
                      width: 360.0,
                      height: 50.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            color: Colors.white,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleSmallFamily),
                          ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(12.0),
                      disabledColor: FlutterFlowTheme.of(context).secondaryText,
                      disabledTextColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
