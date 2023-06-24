import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main_components/create_account_modal/create_account_modal_widget.dart';
import '/main_components/dialog_component/dialog_component_widget.dart';
import '/main_components/signin_modal/signin_modal_widget.dart';
import '/sellers_related/componnents/add_product/add_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'header_model.dart';
export 'header_model.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  late HeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return ClipRRect(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (!loggedIn)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 36.0, 0.0, 36.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('landingPageBuyers');
                      },
                      child: SvgPicture.asset(
                        'assets/images/NF_Logo.svg',
                        width: 132.0,
                        height: 51.1,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Categories',
                              options: FFButtonOptions(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    48.0, 24.0, 48.0, 24.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0x000D0D0D),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Roboto Condensed',
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      lineHeight: 1.5,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                                hoverColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                hoverTextColor:
                                    FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ],
                        ),
                        FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Request a Template',
                          options: FFButtonOptions(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                48.0, 24.0, 48.0, 24.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0x00FFFFFF),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Roboto Condensed',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  lineHeight: 1.5,
                                ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(4.0),
                            hoverColor:
                                FlutterFlowTheme.of(context).primaryText,
                            hoverTextColor:
                                FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 4.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 24.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.of(context).viewInsets,
                                          child: SigninModalWidget(),
                                        );
                                      },
                                    ).then((value) => setState(() {}));
                                  },
                                  text: 'Sign In',
                                  options: FFButtonOptions(
                                    height: 48.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        48.0, 0.0, 48.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0x00009946),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Roboto Condensed',
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          lineHeight: 1.5,
                                        ),
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                    hoverColor: Color(0xFF99969E),
                                    hoverBorderSide: BorderSide(
                                      color: Color(0xFF99969E),
                                      width: 1.0,
                                    ),
                                    hoverTextColor:
                                        FlutterFlowTheme.of(context).accent4,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 22.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.of(context).viewInsets,
                                          child: CreateAccountModalWidget(),
                                        );
                                      },
                                    ).then((value) => setState(() {}));
                                  },
                                  text: 'Create Account',
                                  options: FFButtonOptions(
                                    width: 194.0,
                                    height: 48.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Roboto Condensed',
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          lineHeight: 1.5,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                    hoverColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    hoverTextColor:
                                        FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                              if (FFAppState().NotNeedNow)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 2.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (loggedIn) {
                                        if (FFAppState().userCart.length > 1) {
                                          context.pushNamed('buyerCartScreen');
                                        } else {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            context: context,
                                            builder: (context) {
                                              return Padding(
                                                padding: MediaQuery.of(context)
                                                    .viewInsets,
                                                child: DialogComponentWidget(
                                                  subtitle: 'Cart is empty',
                                                  requiresYesNo: false,
                                                  nextRoute: () async {},
                                                ),
                                              );
                                            },
                                          ).then((value) => setState(() {}));
                                        }
                                      } else {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.of(context)
                                                  .viewInsets,
                                              child: SigninModalWidget(),
                                            );
                                          },
                                        ).then((value) => setState(() {}));
                                      }
                                    },
                                    child: Container(
                                      width: 48.0,
                                      height: 48.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        border: Border.all(
                                          color: Color(0x47FFFFFF),
                                        ),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return Padding(
                                                padding: MediaQuery.of(context)
                                                    .viewInsets,
                                                child: SigninModalWidget(),
                                              );
                                            },
                                          ).then((value) => setState(() {}));
                                        },
                                        child: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.shopping_cart_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 19.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
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
            if (loggedIn &&
                !valueOrDefault<bool>(currentUserDocument?.admin, false))
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 36.0, 0.0, 36.0),
                child: AuthUserStreamWidget(
                  builder: (context) => Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('landingPageBuyers');
                        },
                        child: SvgPicture.asset(
                          'assets/images/NF_Logo.svg',
                          width: 132.0,
                          height: 51.1,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Categories',
                                options: FFButtonOptions(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      48.0, 24.0, 48.0, 24.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0x00FFFFFF),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Roboto Condensed',
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        lineHeight: 1.5,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius: BorderRadius.circular(4.0),
                                  hoverColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  hoverTextColor:
                                      FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ],
                          ),
                          if (valueOrDefault<bool>(
                                  currentUserDocument?.becomeASeller, false) ==
                              false)
                            FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Request a Template',
                              options: FFButtonOptions(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    48.0, 24.0, 48.0, 24.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0x00FFFFFF),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Roboto Condensed',
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      lineHeight: 1.5,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                                hoverColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                hoverTextColor:
                                    FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          if (valueOrDefault<bool>(
                                  currentUserDocument?.becomeASeller, false) ==
                              false)
                            FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed('landingPageSellers');
                              },
                              text: 'Become a Seller',
                              options: FFButtonOptions(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    48.0, 24.0, 48.0, 24.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0x00FFFFFF),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Roboto Condensed',
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      lineHeight: 1.5,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                                hoverColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                hoverTextColor:
                                    FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          if (valueOrDefault<bool>(
                                  currentUserDocument?.becomeASeller, false) ==
                              true)
                            FFButtonWidget(
                              onPressed: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  isDismissible: false,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding:
                                          MediaQuery.of(context).viewInsets,
                                      child: AddProductWidget(),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              text: 'Add Product',
                              icon: Icon(
                                Icons.add,
                                size: 18.0,
                              ),
                              options: FFButtonOptions(
                                width: 194.0,
                                height: 48.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 2.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Roboto Condensed',
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      lineHeight: 1.5,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                                hoverColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                hoverTextColor:
                                    FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 3.0, 12.0, 0.0),
                                child: Icon(
                                  Icons.notifications_none,
                                  color: Color(0xFFBABDB9),
                                  size: 27.0,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 27.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 14.0, 0.0),
                                      child: ClipOval(
                                        child: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Color(0x44FFFFFF),
                                            ),
                                          ),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context
                                                  .pushNamed('dashboardBuyer');
                                            },
                                            child: Image.network(
                                              currentUserPhoto,
                                              width: 48.0,
                                              height: 48.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        setState(() {
                                          FFAppState().userCart = [];
                                        });
                                        GoRouter.of(context).prepareAuthEvent();
                                        await authManager.signOut();
                                        GoRouter.of(context)
                                            .clearRedirectLocation();

                                        context.goNamedAuth('landingPageBuyers',
                                            context.mounted);
                                      },
                                      child: Icon(
                                        Icons.arrow_drop_down_sharp,
                                        color: Color(0xFF5C5F62),
                                        size: 24.0,
                                      ),
                                    ),
                                    Container(
                                      width: 50.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            GoRouter.of(context)
                                                .prepareAuthEvent();
                                            await authManager.signOut();
                                            GoRouter.of(context)
                                                .clearRedirectLocation();

                                            context.goNamedAuth(
                                                'landingPageBuyers',
                                                context.mounted);
                                          },
                                          child: Icon(
                                            Icons.logout_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (FFAppState().NotNeedNow)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 2.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (loggedIn) {
                                        if (FFAppState().userCart.length > 1) {
                                          context.pushNamed('buyerCartScreen');
                                        } else {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            context: context,
                                            builder: (context) {
                                              return Padding(
                                                padding: MediaQuery.of(context)
                                                    .viewInsets,
                                                child: DialogComponentWidget(
                                                  subtitle: 'Cart is empty',
                                                  requiresYesNo: false,
                                                  nextRoute: () async {},
                                                ),
                                              );
                                            },
                                          ).then((value) => setState(() {}));
                                        }
                                      } else {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.of(context)
                                                  .viewInsets,
                                              child: SigninModalWidget(),
                                            );
                                          },
                                        ).then((value) => setState(() {}));
                                      }
                                    },
                                    child: Container(
                                      width: 48.0,
                                      height: 48.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        border: Border.all(
                                          color: Color(0x47FFFFFF),
                                        ),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState().userCart.length >
                                              0) {
                                            context
                                                .pushNamed('buyerCartScreen');
                                          } else {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return Padding(
                                                  padding:
                                                      MediaQuery.of(context)
                                                          .viewInsets,
                                                  child: DialogComponentWidget(
                                                    subtitle: 'No item in cart',
                                                    requiresYesNo: false,
                                                    deleteDialog: false,
                                                    successDialog: false,
                                                    nextRoute: () async {},
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() {}));
                                          }
                                        },
                                        child: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.shopping_cart_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 19.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
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
    );
  }
}
