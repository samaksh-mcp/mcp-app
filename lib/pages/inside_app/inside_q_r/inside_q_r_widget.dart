import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'inside_q_r_model.dart';
export 'inside_q_r_model.dart';

class InsideQRWidget extends StatefulWidget {
  const InsideQRWidget({super.key});

  @override
  State<InsideQRWidget> createState() => _InsideQRWidgetState();
}

class _InsideQRWidgetState extends State<InsideQRWidget> {
  late InsideQRModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InsideQRModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.insiderQrParamString = await actions.generateStaticQrParamsString(
        FFAppState().mobileNumber,
      );
      _model.insiderQrChecksum = actions.generateChecksum(
        _model.insiderQrParamString!,
        FFAppConstants.secret,
      );
      _model.isLoading = true;
      safeSetState(() {});
      _model.apiResultfm6 = await QRGeneartionGroup.staticQRCall.call(
        checksum: _model.insiderQrChecksum,
        mobileNumber: FFAppState().mobileNumber,
        entityId: FFAppConstants.entityID,
      );

      if ((_model.apiResultfm6?.succeeded ?? true)) {
        _model.insiderQrResponse = getJsonField(
          (_model.apiResultfm6?.jsonBody ?? ''),
          r'''$''',
        );
        safeSetState(() {});
        FFAppState().qrResponse = getJsonField(
          (_model.apiResultfm6?.jsonBody ?? ''),
          r'''$''',
        );
        safeSetState(() {});
        _model.isLoading = false;
        safeSetState(() {});
        return;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Error Loading QR',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            duration: const Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).tertiary,
          ),
        );
        return;
      }
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                FFAppState().otpGenerated =
                    !(FFAppState().otpGenerated ?? true);
                safeSetState(() {});
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
          child: Builder(
            builder: (context) {
              if (!_model.isLoading) {
                return Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/InsideQR.png',
                      ).image,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.7,
                          height: MediaQuery.sizeOf(context).height * 0.59,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (false)
                                      FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'Download',
                                        icon: const Icon(
                                          Icons.download,
                                          size: 18.0,
                                        ),
                                        options: FFButtonOptions(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.35,
                                          height: 45.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmallFamily),
                                              ),
                                          elevation: 0.0,
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    if (false)
                                      SizedBox(
                                        width: 130.0,
                                        height: 50.0,
                                        child: custom_widgets.DownloadPdfButton(
                                          width: 130.0,
                                          height: 50.0,
                                          did: StaticQRStruct.maybeFromMap(
                                                  _model.insiderQrResponse!)!
                                              .responseData
                                              .merchantDid
                                              .kickstart
                                              .did,
                                          tid: StaticQRStruct.maybeFromMap(
                                                  _model.insiderQrResponse!)!
                                              .responseData
                                              .merchantDid
                                              .tid
                                              .firstOrNull!
                                              .tid,
                                          upiId: 'example@upi',
                                          qrUrl: StaticQRStruct.maybeFromMap(
                                                  _model.insiderQrResponse!)!
                                              .responseData
                                              .qrCodeUrl,
                                          buttonString: 'Download',
                                          merchantName:
                                              StaticQRStruct.maybeFromMap(_model
                                                      .insiderQrResponse!)!
                                                  .responseData
                                                  .profileInfo
                                                  .fullName,
                                        ),
                                      ),
                                    if (false)
                                      FFButtonWidget(
                                        onPressed: () {
                                          print('ShareButton pressed ...');
                                        },
                                        text: 'Share QR',
                                        icon: Icon(
                                          Icons.share_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          size: 18.0,
                                        ),
                                        options: FFButtonOptions(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.35,
                                          height: 45.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                color: Colors.white,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmallFamily),
                                              ),
                                          elevation: 4.0,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                  ].divide(const SizedBox(width: 8.0)),
                                ),
                                Text(
                                  'Give Missed call / Scan QR to pay',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Roboto'),
                                      ),
                                ),
                                if (false)
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await Clipboard.setData(
                                          const ClipboardData(text: ''));
                                    },
                                    child: Text(
                                      'DID: ${valueOrDefault<String>(
                                        StaticQRStruct.maybeFromMap(
                                                _model.insiderQrResponse)
                                            ?.responseData
                                            .merchantDid
                                            .kickstart
                                            .did,
                                        '0',
                                      )}',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Gigza Heavy',
                                            fontSize: 34.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Gigza Heavy'),
                                          ),
                                    ),
                                  ),
                                if (false)
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await Clipboard.setData(
                                            const ClipboardData(text: ''));
                                      },
                                      child: Text(
                                        'TID: ${StaticQRStruct.maybeFromMap(_model.insiderQrResponse)?.responseData.merchantDid.tid.firstOrNull?.tid}',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Gigza Heavy',
                                              fontSize: 26.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          'Gigza Heavy'),
                                            ),
                                      ),
                                    ),
                                  ),
                                if (false)
                                  SizedBox(
                                    width: 300.0,
                                    height: 250.0,
                                    child: custom_widgets.GenearteQRCode(
                                      width: 300.0,
                                      height: 250.0,
                                      data: StaticQRStruct.maybeFromMap(
                                              _model.insiderQrResponse!)!
                                          .responseData
                                          .qrCodeUrl,
                                    ),
                                  ),
                                Container(
                                  width: 300.0,
                                  height: 440.0,
                                  decoration: const BoxDecoration(),
                                  child: SizedBox(
                                    width: 300.0,
                                    height: 475.0,
                                    child: custom_widgets.ShareQrButton(
                                      width: 300.0,
                                      height: 475.0,
                                      tid: StaticQRStruct.maybeFromMap(
                                              _model.insiderQrResponse!)!
                                          .responseData
                                          .merchantDid
                                          .tid
                                          .firstOrNull!
                                          .tid,
                                      did: StaticQRStruct.maybeFromMap(
                                              _model.insiderQrResponse!)!
                                          .responseData
                                          .merchantDid
                                          .kickstart
                                          .did,
                                      upiId: StaticQRStruct.maybeFromMap(
                                              _model.insiderQrResponse!)!
                                          .responseData
                                          .merchantVpa,
                                      qrUrl: StaticQRStruct.maybeFromMap(
                                              _model.insiderQrResponse!)!
                                          .responseData
                                          .qrCodeUrl,
                                      downloadButtonString: 'Download',
                                      shareButtonString: 'Share QR',
                                      merchantName: StaticQRStruct.maybeFromMap(
                                              _model.insiderQrResponse!)!
                                          .responseData
                                          .profileInfo
                                          .fullName,
                                    ),
                                  ),
                                ),
                                if (false)
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'UPI ID : ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts:
                                                      GoogleFonts.asMap()
                                                          .containsKey(
                                                              'Roboto'),
                                                ),
                                          ),
                                          TextSpan(
                                            text: '[UPI ID]',
                                            style: GoogleFonts.getFont(
                                              'Roboto',
                                              fontSize: 18.0,
                                            ),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey('Roboto'),
                                            ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(height: 25.0)),
                  ),
                );
              } else {
                return const Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: SizedBox(
                    width: 100.0,
                    height: 100.0,
                    child: custom_widgets.Spinner(
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
