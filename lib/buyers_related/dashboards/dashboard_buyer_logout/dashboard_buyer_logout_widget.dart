import '/auth/firebase_auth/auth_util.dart';
import '/buyers_related/component/sidebar_buyer/sidebar_buyer_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main_components/header/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dashboard_buyer_logout_model.dart';
export 'dashboard_buyer_logout_model.dart';

class DashboardBuyerLogoutWidget extends StatefulWidget {
  const DashboardBuyerLogoutWidget({Key? key}) : super(key: key);

  @override
  _DashboardBuyerLogoutWidgetState createState() =>
      _DashboardBuyerLogoutWidgetState();
}

class _DashboardBuyerLogoutWidgetState
    extends State<DashboardBuyerLogoutWidget> {
  late DashboardBuyerLogoutModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardBuyerLogoutModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 1512.0,
                    height: 123.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF0D0D0D),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
                      child: wrapWithModel(
                        model: _model.headerModel,
                        updateCallback: () => setState(() {}),
                        child: HeaderWidget(),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 1512.0,
                      height: 700.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF3F3F5),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          wrapWithModel(
                            model: _model.sidebarBuyerModel,
                            updateCallback: () => setState(() {}),
                            child: SidebarBuyerWidget(
                              logoutColor: Color(0xFFF34335),
                              logoutIconColor:
                                  FlutterFlowTheme.of(context).lineColor,
                              page1IsActive: false,
                              page2IsActive: false,
                              pageThreeIsActive: false,
                              logoutState: true,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 519.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            32.0, 32.0, 32.0, 32.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'You are about to logout of the system',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Condensed',
                                                        color:
                                                            Color(0xFF0F1C10),
                                                        fontSize: 24.0,
                                                        lineHeight: 1.33,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 44.0, 0.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  GoRouter.of(context)
                                                      .prepareAuthEvent();
                                                  await authManager.signOut();
                                                  GoRouter.of(context)
                                                      .clearRedirectLocation();

                                                  context.goNamedAuth(
                                                      'landingPageBuyers',
                                                      context.mounted);
                                                },
                                                text: 'Logout',
                                                options: FFButtonOptions(
                                                  width: 141.0,
                                                  height: 48.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Color(0xFFF34335),
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                'Roboto Condensed',
                                                            color: Colors.white,
                                                          ),
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                              ),
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
    );
  }
}
