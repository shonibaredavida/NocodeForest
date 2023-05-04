import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'testing3_model.dart';
export 'testing3_model.dart';

class Testing3Widget extends StatefulWidget {
  const Testing3Widget({Key? key}) : super(key: key);

  @override
  _Testing3WidgetState createState() => _Testing3WidgetState();
}

class _Testing3WidgetState extends State<Testing3Widget> {
  late Testing3Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Testing3Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 1256.0,
                    height: 123.1,
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 36.0, 0.0, 36.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/NF_Logo.svg',
                                  width: 132.0,
                                  height: 51.1,
                                  fit: BoxFit.cover,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      height: 51.1,
                                      decoration: BoxDecoration(),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: 'About Us',
                                      options: FFButtonOptions(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            48.0, 24.0, 48.0, 24.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0x00009946),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Roboto Condensed',
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              lineHeight: 1.5,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        hoverColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        hoverTextColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                      ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: 'Categories',
                                      options: FFButtonOptions(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            48.0, 24.0, 48.0, 24.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0x00009946),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Roboto Condensed',
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              lineHeight: 1.5,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        hoverColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        hoverTextColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                      ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: 'Become a Seller',
                                      options: FFButtonOptions(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            48.0, 24.0, 48.0, 24.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0x00009946),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Roboto Condensed',
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              lineHeight: 1.5,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        hoverColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        hoverTextColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                      ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        context.safePop();
                                      },
                                      text: 'bc',
                                      options: FFButtonOptions(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            48.0, 24.0, 48.0, 24.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0x00009946),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Roboto Condensed',
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              lineHeight: 1.5,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        hoverColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        hoverTextColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                      ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        GoRouter.of(context).prepareAuthEvent();
                                        await authManager.signOut();
                                        GoRouter.of(context)
                                            .clearRedirectLocation();

                                        context.goNamedAuth(
                                            'landingWaitlist', mounted);
                                      },
                                      text: 'Logout',
                                      options: FFButtonOptions(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            48.0, 24.0, 48.0, 24.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0x00009946),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Roboto Condensed',
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              lineHeight: 1.5,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        hoverColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        hoverTextColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 24.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'Sign In',
                                        options: FFButtonOptions(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  48.0, 24.0, 48.0, 24.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: Color(0x004B39EF),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily:
                                                        'Roboto Condensed',
                                                    color: Colors.white,
                                                    fontSize: 14.0,
                                                    lineHeight: 1.5,
                                                  ),
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          hoverColor: Color(0xFF99969E),
                                          hoverBorderSide: BorderSide(
                                            color: Color(0xFF99969E),
                                            width: 1.0,
                                          ),
                                          hoverTextColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent4,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 22.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'Create Account',
                                        options: FFButtonOptions(
                                          width: 194.0,
                                          height: 48.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily:
                                                        'Roboto Condensed',
                                                    color: Colors.white,
                                                    lineHeight: 1.5,
                                                  ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          hoverColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          hoverTextColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 48.0,
                                      height: 48.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        border: Border.all(
                                          color: Color(0x47FFFFFF),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.1, 14.62, 14.62, 14.62),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/images/Icon.svg',
                                              width: 15.8,
                                              height: 18.8,
                                              fit: BoxFit.cover,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
