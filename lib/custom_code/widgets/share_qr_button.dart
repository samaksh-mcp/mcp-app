// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:qr_bar_code/code/code.dart';
import 'package:qr_bar_code/qr/qr.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:miss_call_pay_merchant_app_duplicate/flutter_flow/flutter_flow_widgets.dart';

Future<void> saveAndShare(
    Uint8List bytes, String mName, String did, String tid) async {
  final directory = await getApplicationDocumentsDirectory();
  final image = File('${directory.path}/qr.png');
  await image.writeAsBytes(bytes);
  final text = "Name - ${mName}\nMissCallPay to Pay\nDID: ${did}\nTID: ${tid}";
  await Share.shareXFiles(
    [XFile(image.path)],
    text: text,
  );
}

class ShareQrButton extends StatefulWidget {
  const ShareQrButton({
    super.key,
    this.width,
    this.height,
    required this.tid,
    required this.did,
    required this.upiId,
    required this.qrUrl,
    required this.downloadButtonString,
    required this.shareButtonString,
    required this.merchantName,
  });

  final double? width;
  final double? height;
  final String tid;
  final String did;
  final String upiId;
  final String qrUrl;
  final String downloadButtonString;
  final String shareButtonString;
  final String merchantName;

  @override
  State<ShareQrButton> createState() => _ShareQrButtonState();
}

class _ShareQrButtonState extends State<ShareQrButton> {
  final screenshotController = ScreenshotController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Screenshot(
          controller: screenshotController,
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Text(
                    "${widget.did}",
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Gigza Heavy',
                          fontSize: 30,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts:
                              GoogleFonts.asMap().containsKey('Gigza Heavy'),
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Text(
                      "TID: ${widget.tid}",
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Gigza Heavy',
                            fontSize: 26,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts:
                                GoogleFonts.asMap().containsKey('Gigza Heavy'),
                          ),
                    ),
                  ),
                ),
                QrImageView(
                  data: widget.qrUrl,
                  // embeddedImage: AssetImage('assets/MCP_QRicon.png'),
                  embeddedImage: NetworkImage(
                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/miss-call-pay-merchant-app-duplicate-kcl4tn/assets/wm4zx96v2nb9/MCP_QRicon.png'),
                  size: 220,
                  backgroundColor: Colors.white,
                  gapless: true,
                  embeddedImageStyle: const QrEmbeddedImageStyle(
                    size: Size(55, 55),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'UPI ID: ${widget.upiId}',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Roboto',
                                fontSize: 12,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts:
                                    GoogleFonts.asMap().containsKey('Roboto'),
                              ),
                        ),
                      ],
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Roboto',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts:
                                GoogleFonts.asMap().containsKey('Roboto'),
                          ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Text(
                    widget.merchantName,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Roboto',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          useGoogleFonts:
                              GoogleFonts.asMap().containsKey('Roboto'),
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            DownloadPdfButton(
                buttonString: widget.downloadButtonString,
                did: widget.did,
                qrUrl: widget.qrUrl,
                tid: widget.tid,
                upiId: widget.upiId,
                merchantName: widget.merchantName),
            SizedBox(
              width: 5,
            ),
            FFButtonWidget(
              onPressed: () async {
                final image = await screenshotController.capture();
                print(image);
                if (image != null) {
                  await saveAndShare(
                      image, widget.merchantName, widget.did, widget.tid);
                }
              },
              text: widget.shareButtonString,
              icon: Icon(
                Icons.share_outlined,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                size: 18,
              ),
              options: FFButtonOptions(
                width: MediaQuery.sizeOf(context).width * 0.32,
                height: 45,
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                      color: Colors.white,
                      fontSize: 16,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleSmallFamily),
                    ),
                elevation: 4,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
