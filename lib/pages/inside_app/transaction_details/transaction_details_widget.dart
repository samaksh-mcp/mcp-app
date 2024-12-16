import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/backend/schema/structs/index.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'transaction_details_model.dart';
export 'transaction_details_model.dart';

class TransactionDetailsWidget extends StatefulWidget {
  const TransactionDetailsWidget({
    super.key,
    required this.txn,
  });

  final dynamic txn;

  @override
  State<TransactionDetailsWidget> createState() =>
      _TransactionDetailsWidgetState();
}

class _TransactionDetailsWidgetState extends State<TransactionDetailsWidget> {
  late TransactionDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransactionDetailsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: custom_widgets.CustomTxnDetailsSuccess(
                  width: double.infinity,
                  height: double.infinity,
                  customerName: valueOrDefault<String>(
                    TxnStruct.maybeFromMap(widget.txn)
                        ?.payerInfo
                        .customer
                        .fullName,
                    'null',
                  ),
                  amount: valueOrDefault<String>(
                    TxnStruct.maybeFromMap(widget.txn)?.txnAmount,
                    'null',
                  ),
                  completedAt: valueOrDefault<String>(
                    TxnStruct.maybeFromMap(widget.txn)?.completedAt,
                    'null',
                  ),
                  upiTxnId: valueOrDefault<String>(
                    TxnStruct.maybeFromMap(widget.txn)?.bankTxnRefId,
                    'null',
                  ),
                  merchantName: valueOrDefault<String>(
                    TxnStruct.maybeFromMap(widget.txn)
                        ?.payeeInfo
                        .merchant
                        .fullName,
                    'null',
                  ),
                  merchantVpaAddress: valueOrDefault<String>(
                    TxnStruct.maybeFromMap(widget.txn)
                        ?.payeeInfo
                        .merchant
                        .vpaAddress,
                    'null',
                  ),
                  customerVpaAddress: valueOrDefault<String>(
                    TxnStruct.maybeFromMap(widget.txn)
                        ?.payerInfo
                        .customer
                        .vpaAddress,
                    'null',
                  ),
                  missCallTxnId: valueOrDefault<String>(
                    TxnStruct.maybeFromMap(widget.txn)?.mcpTxnId,
                    'null',
                  ),
                  rnnNumber: valueOrDefault<String>(
                    TxnStruct.maybeFromMap(widget.txn)?.bankRrn,
                    'null',
                  ),
                  requestType: TxnStruct.maybeFromMap(widget.txn!)!.txnRequest,
                  txnType: TxnStruct.maybeFromMap(widget.txn!)!.bankTxnStatus,
                  expiredAt: valueOrDefault<String>(
                    TxnStruct.maybeFromMap(widget.txn)?.expirationDate,
                    'null',
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, -1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 12.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    icon: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20.0,
                    ),
                    onPressed: () async {
                      context.safePop();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
