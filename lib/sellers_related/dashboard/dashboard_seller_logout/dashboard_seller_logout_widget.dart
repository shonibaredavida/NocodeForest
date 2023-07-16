import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main_components/account_panel/account_panel_widget.dart';
import '/main_components/dashboard_sidebar/dashboard_sidebar_widget.dart';
import '/main_components/header/header_widget.dart';
import '/main_components/notification_panel/notification_panel_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dashboard_seller_logout_model.dart';
export 'dashboard_seller_logout_model.dart';

class DashboardSellerLogoutWidget extends StatefulWidget {
  const DashboardSellerLogoutWidget({Key? key}) : super(key: key);

  @override
  _DashboardSellerLogoutWidgetState createState() =>
      _DashboardSellerLogoutWidgetState();
}

class _DashboardSellerLogoutWidgetState
    extends State<DashboardSellerLogoutWidget> {
  late DashboardSellerLogoutModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardSellerLogoutModel());

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
          child: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Container(
              constraints: BoxConstraints(
                maxWidth: 1728.0,
                maxHeight: 1117.0,
              ),
              decoration: BoxDecoration(),
              child: Stack(
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 1512.0,
                          height: 123.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF0D0D0D),
                          ),
                          child: wrapWithModel(
                            model: _model.headerModel,
                            updateCallback: () => setState(() {}),
                            child: HeaderWidget(
                              dashboard: true,
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
                                  model: _model.dashboardSidebarModel,
                                  updateCallback: () => setState(() {}),
                                  child: DashboardSidebarWidget(
                                    logoutColor: Color(0xFFF34335),
                                    logoutIconColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryText,
                                    p1State: false,
                                    p2State: false,
                                    p4State: false,
                                    p5State: false,
                                    profileState: false,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 519.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      32.0, 32.0, 32.0, 32.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'You are about to logout of the system',
                                                    style: FlutterFlowTheme.of(
                                                            context)
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
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 44.0,
                                                                0.0, 0.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        setState(() {
                                                          FFAppState()
                                                                  .reviewAdded =
                                                              false;
                                                        });
                                                        setState(() {
                                                          FFAppState()
                                                              .userCart = [];
                                                        });
                                                        GoRouter.of(context)
                                                            .prepareAuthEvent();
                                                        await authManager
                                                            .signOut();
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
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            Color(0xFFF34335),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Condensed',
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
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
                  if ((FFAppState().showAccountPanel && loggedIn) &&
                      responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                      ))
                    Align(
                      alignment: AlignmentDirectional(0.97, 1.0),
                      child: wrapWithModel(
                        model: _model.accountPanelModel,
                        updateCallback: () => setState(() {}),
                        child: AccountPanelWidget(),
                      ),
                    ),
                  if ((FFAppState().showNotification && loggedIn) &&
                      responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                      ))
                    Align(
                      alignment: AlignmentDirectional(0.97, 1.0),
                      child: wrapWithModel(
                        model: _model.notificationPanelModel,
                        updateCallback: () => setState(() {}),
                        child: NotificationPanelWidget(),
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: SingleChildScrollView(
                          primary: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.8,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.do_not_touch_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 84.0,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 40.0, 20.0, 20.0),
                                            child: AutoSizeText(
                                              'Mobile version is currently not available.\nKindly access Nocode Forest \nvia \nDesktop or Laptop',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Condensed',
                                                        fontSize: 22.0,
                                                        lineHeight: 1.4,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 20.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: SvgPicture.asset(
                                    'assets/images/NF_Logo.svg',
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
