import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'custom_nav_bar_model.dart';
export 'custom_nav_bar_model.dart';

class CustomNavBarWidget extends StatefulWidget {
  const CustomNavBarWidget({
    super.key,
    required this.pageName,
  });

  final String? pageName;

  @override
  State<CustomNavBarWidget> createState() => _CustomNavBarWidgetState();
}

class _CustomNavBarWidgetState extends State<CustomNavBarWidget> {
  late CustomNavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomNavBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.0,
      height: 120.0,
      decoration: const BoxDecoration(),
      child: Stack(
        alignment: const AlignmentDirectional(0.0, 1.0),
        children: [
          Container(
            width: 360.0,
            height: 80.0,
            decoration: const BoxDecoration(),
            child: Stack(
              alignment: const AlignmentDirectional(0.0, 0.0),
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/Subtract.png',
                    width: 360.0,
                    height: 80.0,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlutterFlowIconButton(
                          borderRadius: 20.0,
                          buttonSize: 50.0,
                          icon: Icon(
                            Icons.home_outlined,
                            color: widget.pageName == 'HomeScreen'
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).primaryText,
                            size: 28.0,
                          ),
                          onPressed: () async {
                            context.goNamed('HomeScreen');
                          },
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 48.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 20.0,
                            buttonSize: 50.0,
                            icon: Icon(
                              Icons.volume_mute_outlined,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 28.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              48.0, 0.0, 0.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 20.0,
                            buttonSize: 50.0,
                            icon: Icon(
                              Icons.qr_code_rounded,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 28.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 20.0,
                          buttonSize: 50.0,
                          icon: Icon(
                            Icons.settings_outlined,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 28.0,
                          ),
                          onPressed: () async {
                            context.goNamed('HomeScreen');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, -0.5),
            child: FlutterFlowIconButton(
              borderRadius: 30.0,
              buttonSize: 55.0,
              fillColor: FlutterFlowTheme.of(context).primary,
              icon: Icon(
                Icons.add,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                size: 35.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
        ],
      ),
    );
  }
}
