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

import 'package:miss_call_pay_merchant_app_duplicate/flutter_flow/flutter_flow_widgets.dart';

import 'dart:ui';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:printing/printing.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:http/http.dart' as http;
import 'package:pdf/widgets.dart' as pw;
import 'package:http/http.dart' as http;
import 'package:pdf/pdf.dart';
import 'dart:typed_data';
import 'dart:io';

Future<Uint8List> _resizeImage(Uint8List imageBytes, double scaleFactor) async {
  final image = await decodeImageFromList(imageBytes);
  final width = (image.width * scaleFactor).toInt();
  final height = (image.height * scaleFactor).toInt();

  final resizedImage = await image.toByteData(format: ImageByteFormat.png);

  return resizedImage?.buffer.asUint8List() ?? Uint8List(0);
}

buildPrintableData(qrImageBytes, did, tid, upi) {
  return pw.Column(
    mainAxisSize: pw.MainAxisSize.max,
    crossAxisAlignment: pw.CrossAxisAlignment.center,
    children: [
      pw.Padding(
        padding: pw.EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: pw.Container(
          width: 450,
          height: 600,
          decoration: pw.BoxDecoration(
            border: pw.Border.all(
              color: PdfColor(0, 0, 0),
              width: 2,
            ),
            borderRadius: pw.BorderRadius.circular(12),
          ),
          child: pw.Padding(
            padding: pw.EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            child: pw.Column(
              mainAxisAlignment: pw.MainAxisAlignment.start,
              crossAxisAlignment: pw.CrossAxisAlignment.center,
              children: [
                pw.Text(
                  'Give Missed Call / Scan QR to Pay',
                  style: pw.TextStyle(
                    font: pw.Font.courier(),
                    fontWeight: pw.FontWeight.bold,
                    fontSize: 14,
                    color: PdfColor(0, 0, 0),
                    letterSpacing: 1.0,
                  ),
                  textAlign: pw.TextAlign.center,
                ),
                pw.SizedBox(height: 8),
                pw.Text(
                  valueOrDefault<String>(did, '0'),
                  style: pw.TextStyle(
                    font: pw.Font.courier(),
                    fontWeight: pw.FontWeight.bold,
                    fontSize: 24,
                    color: PdfColor(0, 0, 0),
                  ),
                ),
                pw.SizedBox(height: 6),
                pw.Text(
                  valueOrDefault<String>(tid, '0'),
                  style: pw.TextStyle(
                    font: pw.Font.courier(),
                    fontWeight: pw.FontWeight.bold,
                    fontSize: 18,
                    color: PdfColor(0, 0, 0),
                  ),
                ),
                pw.SizedBox(height: 12),
                pw.RichText(
                  text: pw.TextSpan(
                    children: [
                      pw.TextSpan(
                        text: 'UPI ID: ',
                        style: pw.TextStyle(
                          font: pw.Font.courier(),
                          fontWeight: pw.FontWeight.bold,
                          fontSize: 12,
                          color: PdfColor(0, 0, 0),
                        ),
                      ),
                      pw.TextSpan(
                        text: upi,
                        style: pw.TextStyle(
                          font: pw.Font.courier(),
                          fontSize: 12,
                          color: PdfColor(0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                ),
                pw.SizedBox(height: 12),
                pw.Image(
                  pw.MemoryImage(qrImageBytes),
                  fit: pw.BoxFit.contain,
                  width: 380,
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

Future<Uint8List> _generateQrImage(String data) async {
  final image = await QrPainter(
    data: data,
    version: QrVersions.auto,
    gapless: true,
  ).toImageData(400);

  if (image == null) {
    print('unable to geneate qr');
    throw Exception("Failed to generate QR code image.");
  }

  return image.buffer.asUint8List();
}

Future<void> getPdf(Uint8List screenShot) async {
  final pdf = pw.Document();
  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (context) {
        return pw.Center(
          child: pw.Image(
            pw.MemoryImage(screenShot),
            fit: pw.BoxFit.contain,
          ),
        );
      },
    ),
  );
  final output = File('/qr.pdf');
  await output.writeAsBytes(await pdf.save());
}

class DownloadPdfButton extends StatefulWidget {
  const DownloadPdfButton({
    super.key,
    this.width,
    this.height,
    required this.did,
    required this.tid,
    required this.upiId,
    required this.qrUrl,
    required this.buttonString,
    required this.merchantName,
  });

  final double? width;
  final double? height;
  final String did;
  final String tid;
  final String upiId;
  final String qrUrl;
  final String buttonString;
  final String merchantName;

  @override
  State<DownloadPdfButton> createState() => _DownloadPdfButtonState();
}

class _DownloadPdfButtonState extends State<DownloadPdfButton> {
  Future<void> printDoc() async {
    final backimageUrl =
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/miss-call-pay-merchant-app-duplicate-kcl4tn/assets/2rrpfc5t3b1q/InsideQR.png';
    final backresponse = await http.get(Uri.parse(backimageUrl));
    final backgroundImage = pw.MemoryImage(backresponse.bodyBytes);

    if (backresponse.statusCode == 200) {
      final qr = await _generateQrImage(widget.qrUrl);

      final pdf = pw.Document();

      pdf.addPage(
        pw.Page(
          build: (pw.Context context) {
            return buildPrintableData(qr, widget.did, widget.tid, widget.upiId);
          },
        ),
      );

      final output = await pdf.save();

      print('PDF created with resized network image!');
      await Printing.layoutPdf(
          onLayout: (PdfPageFormat format) async => pdf.save());
    } else {
      print('Failed to load image');
    }
  }

  Future<void> _createAndDownloadPDF() async {
    final pdf = pw.Document();

    final imageUrl =
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/miss-call-pay-merchant-app-duplicate-kcl4tn/assets/2rrpfc5t3b1q/InsideQR.png";
    // 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/miss-call-pay-merchant-app-duplicate-kcl4tn/assets/fxu9kdpqzlfo/APPDynamicQR(1).png';
    final response = await http.get(Uri.parse(imageUrl));
    final image = pw.MemoryImage(response.bodyBytes);

    final qrImage = await QrPainter(
      data: widget.qrUrl,
      version: QrVersions.auto,
      gapless: true,
      embeddedImageStyle: const QrEmbeddedImageStyle(size: Size(150, 150)),
    ).toImageData(400);

    final qr = qrImage!.buffer.asUint8List();

    final String svgContent = '''
    <svg width="200" height="200" xmlns="http://www.w3.org/2000/svg">
      <rect width="100%" height="100%" fill="blue" />
    </svg>''';

    pdf.addPage(
      pw.Page(
        pageTheme: pw.PageTheme(
          margin: pw.EdgeInsets.zero,
          orientation: pw.PageOrientation.portrait,
          buildBackground: (context) =>
              pw.SvgImage(svg: svgContent, fit: pw.BoxFit.fill),
        ),
        build: (pw.Context context) {
          return pw.Column(
            mainAxisSize: pw.MainAxisSize.max,
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            children: [
              pw.Padding(
                padding: pw.EdgeInsets.only(
                  left: 50,
                  right: 50,
                ),
                child: pw.Container(
                  width: 500,
                  height: 841,
                  decoration: pw.BoxDecoration(
                    image: pw.DecorationImage(
                      image: image,
                      fit: pw.BoxFit.fill,
                    ),
                  ),
                  child: pw.Padding(
                    padding: pw.EdgeInsets.zero,
                    child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      crossAxisAlignment: pw.CrossAxisAlignment.center,
                      children: [
                        pw.SizedBox(height: 215),
                        pw.Text(
                          'Give Missed Call / Scan QR to Pay',
                          style: pw.TextStyle(
                            font: pw.Font.courier(),
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 18,
                            color: const PdfColor(0, 0, 0),
                            letterSpacing: 1.0,
                          ),
                          textAlign: pw.TextAlign.center,
                        ),
                        pw.SizedBox(height: 8),
                        pw.Text(
                          '${widget.did}',
                          style: pw.TextStyle(
                            font: pw.Font.courier(),
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 24,
                            color: const PdfColor(0, 0, 0),
                          ),
                        ),
                        pw.SizedBox(height: 6),
                        pw.Text(
                          "TID: ${widget.tid}",
                          style: pw.TextStyle(
                            font: pw.Font.courier(),
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 18,
                            color: const PdfColor(0, 0, 0),
                          ),
                        ),
                        pw.SizedBox(height: 5),
                        pw.Image(pw.MemoryImage(qr), width: 300, height: 300),
                        pw.SizedBox(height: 5),
                        pw.Align(
                          alignment: pw.AlignmentDirectional(0, 0),
                          child: pw.Padding(
                            padding:
                                pw.EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: pw.RichText(
                              text: pw.TextSpan(
                                children: [
                                  pw.TextSpan(
                                    text: 'UPI ID : ',
                                    style: pw.TextStyle(
                                      font: pw.Font.courier(),
                                      fontWeight: pw.FontWeight.bold,
                                      fontSize: 18,
                                      color: const PdfColor(0, 0, 0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        pw.SizedBox(height: 5),
                        pw.RichText(
                          text: pw.TextSpan(
                            children: [
                              pw.TextSpan(
                                text: widget.upiId,
                                style: pw.TextStyle(
                                  font: pw.Font.courier(),
                                  fontWeight: pw.FontWeight.bold,
                                  fontSize: 14,
                                  color: const PdfColor(0, 0, 0),
                                ),
                              ),
                            ],
                          ),
                        ),
                        pw.SizedBox(height: 5),
                        pw.Text(
                          "${widget.merchantName}",
                          style: pw.TextStyle(
                            font: pw.Font.courier(),
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 22,
                            color: const PdfColor(0, 0, 0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );

    await Printing.layoutPdf(onLayout: (format) async => pdf.save());
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () => {
        //printDoc()
        _createAndDownloadPDF()
      },
      text: widget.buttonString,
      icon: Icon(
        Icons.download,
        size: 18,
      ),
      options: FFButtonOptions(
        width: MediaQuery.of(context).size.width * 0.32,
        height: 45,
        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
        color: FlutterFlowTheme.of(context).secondaryBackground,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
              color: FlutterFlowTheme.of(context).primary,
              letterSpacing: 0.0,
              fontWeight: FontWeight.bold,
              useGoogleFonts: GoogleFonts.asMap()
                  .containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
            ),
        elevation: 0,
        borderSide: BorderSide(
          color: FlutterFlowTheme.of(context).primary,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
