import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/buyers_related/component/product_review/product_review_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main_components/account_panel/account_panel_widget.dart';
import '/main_components/dashboard_sidebar/dashboard_sidebar_widget.dart';
import '/main_components/header/header_widget.dart';
import '/main_components/notification_panel/notification_panel_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dashboard_buyer_download_screen_model.dart';
export 'dashboard_buyer_download_screen_model.dart';

class DashboardBuyerDownloadScreenWidget extends StatefulWidget {
  const DashboardBuyerDownloadScreenWidget({
    Key? key,
    required this.downloadedProducts,
  }) : super(key: key);

  final List<DocumentReference>? downloadedProducts;

  @override
  _DashboardBuyerDownloadScreenWidgetState createState() =>
      _DashboardBuyerDownloadScreenWidgetState();
}

class _DashboardBuyerDownloadScreenWidgetState
    extends State<DashboardBuyerDownloadScreenWidget> {
  late DashboardBuyerDownloadScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardBuyerDownloadScreenModel());

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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
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
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      32.0, 0.0, 32.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.headerModel,
                                    updateCallback: () => setState(() {}),
                                    child: HeaderWidget(
                                      dashboard: true,
                                    ),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      wrapWithModel(
                                        model: _model.dashboardSidebarModel,
                                        updateCallback: () => setState(() {}),
                                        child: DashboardSidebarWidget(
                                          bGColor7: FlutterFlowTheme.of(context)
                                              .primary,
                                          iconSevenColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          p1State: false,
                                          p2State: false,
                                          p4State: false,
                                          p5State: false,
                                          profileState: false,
                                          logoutState: false,
                                          p6State: false,
                                          p7State: true,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 16.0, 16.0, 16.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            child: Visibility(
                                              visible: !valueOrDefault<bool>(
                                                  currentUserDocument
                                                      ?.becomeASeller,
                                                  false),
                                              child: AuthUserStreamWidget(
                                                builder: (context) => Builder(
                                                  builder: (context) {
                                                    final individualDownload =
                                                        (currentUserDocument
                                                                    ?.downloads
                                                                    ?.toList() ??
                                                                [])
                                                            .map((e) => e)
                                                            .toList();
                                                    return GridView.builder(
                                                      padding: EdgeInsets.zero,
                                                      gridDelegate:
                                                          SliverGridDelegateWithFixedCrossAxisCount(
                                                        crossAxisCount: 4,
                                                        crossAxisSpacing: 12.0,
                                                        mainAxisSpacing: 12.0,
                                                        childAspectRatio: 0.92,
                                                      ),
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          individualDownload
                                                              .length,
                                                      itemBuilder: (context,
                                                          individualDownloadIndex) {
                                                        final individualDownloadItem =
                                                            individualDownload[
                                                                individualDownloadIndex];
                                                        return Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: FutureBuilder<
                                                              ProductsRecord>(
                                                            future: ProductsRecord
                                                                .getDocumentOnce(
                                                                    individualDownloadItem),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        SpinKitPulse(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          50.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              final containerProductsRecord =
                                                                  snapshot
                                                                      .data!;
                                                              return Container(
                                                                width: 325.0,
                                                                height: 390.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFF242424),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              16.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: Color(
                                                                        0x47E0E3E7),
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          24.0,
                                                                          24.0,
                                                                          24.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .stretch,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            16.0),
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                            child:
                                                                                Image.network(
                                                                              containerProductsRecord.image,
                                                                              width: double.infinity,
                                                                              height: 150.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      ClipRRect(
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                4.0),
                                                                            child:
                                                                                Text(
                                                                              containerProductsRecord.name,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Roboto Condensed',
                                                                                    fontSize: 16.0,
                                                                                    lineHeight: 1.5,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      ClipRRect(
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                                                    child: Text(
                                                                                      'by ',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Roboto Condensed',
                                                                                            fontSize: 16.0,
                                                                                            lineHeight: 1.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                                                    child: Text(
                                                                                      containerProductsRecord.sellerName,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Roboto Condensed',
                                                                                            fontSize: 16.0,
                                                                                            lineHeight: 1.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                                                    child: FutureBuilder<UsersRecord>(
                                                                                      future: UsersRecord.getDocumentOnce(containerProductsRecord.sellerInfo!),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: SpinKitPulse(
                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                size: 50.0,
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final richTextUsersRecord = snapshot.data!;
                                                                                        return RichText(
                                                                                          text: TextSpan(
                                                                                            children: [
                                                                                              TextSpan(
                                                                                                text: ' in ',
                                                                                                style: TextStyle(),
                                                                                              ),
                                                                                              TextSpan(
                                                                                                text: containerProductsRecord.category,
                                                                                                style: GoogleFonts.getFont(
                                                                                                  'Roboto',
                                                                                                  fontWeight: FontWeight.bold,
                                                                                                ),
                                                                                              )
                                                                                            ],
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                  fontSize: 16.0,
                                                                                                  lineHeight: 1.0,
                                                                                                ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                FFButtonWidget(
                                                                              onPressed: () async {
                                                                                await launchURL(containerProductsRecord.cloneLink);
                                                                              },
                                                                              text: 'See Product',
                                                                              icon: Icon(
                                                                                Icons.remove_red_eye_outlined,
                                                                                size: 15.0,
                                                                              ),
                                                                              options: FFButtonOptions(
                                                                                width: 130.0,
                                                                                height: 40.0,
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                color: Color(0x00009946),
                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      fontFamily: 'Roboto Condensed',
                                                                                      color: Colors.white,
                                                                                      fontSize: 16.0,
                                                                                      lineHeight: 1.5,
                                                                                    ),
                                                                                borderSide: BorderSide(
                                                                                  color: Color(0xFFBABDB9),
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          if (!containerProductsRecord
                                                                              .listOfReviewer
                                                                              .contains(currentUserUid))
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 10.0, 0.0),
                                                                              child: InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  await showModalBottomSheet(
                                                                                    isScrollControlled: true,
                                                                                    backgroundColor: Colors.transparent,
                                                                                    isDismissible: false,
                                                                                    enableDrag: false,
                                                                                    context: context,
                                                                                    builder: (context) {
                                                                                      return GestureDetector(
                                                                                        onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
                                                                                        child: Padding(
                                                                                          padding: MediaQuery.viewInsetsOf(context),
                                                                                          child: ProductReviewWidget(
                                                                                            productRef: individualDownloadItem,
                                                                                            productItem: containerProductsRecord,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ).then((value) => setState(() {}));
                                                                                },
                                                                                child: Icon(
                                                                                  Icons.mark_unread_chat_alt,
                                                                                  color: FlutterFlowTheme.of(context).secondary,
                                                                                  size: 24.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
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
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.8,
                                            decoration: BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.do_not_touch_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 84.0,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(20.0, 40.0,
                                                          20.0, 20.0),
                                                  child: AutoSizeText(
                                                    'Mobile version is currently not available.\nKindly access Nocode Forest \nvia \nDesktop or Laptop',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
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
                                        borderRadius:
                                            BorderRadius.circular(8.0),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
