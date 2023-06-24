import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sidebar_admin_model.dart';
export 'sidebar_admin_model.dart';

class SidebarAdminWidget extends StatefulWidget {
  const SidebarAdminWidget({
    Key? key,
    Color? iconOneColor,
    Color? iconTwoColor,
    Color? iconThreeColor,
    Color? bGColor1,
    Color? bGColor2,
    Color? bGColor3,
    Color? logoutColor,
    Color? logoutIconColor,
    Color? iconFourColor,
    Color? bGColor4,
    Color? iconFiveColor,
    Color? iconSixColor,
    Color? bGColor5,
    Color? bGColor6,
    Color? bGColor7,
    Color? iconSevenColor,
    Color? iconProfileColor,
    Color? bGProfile,
    Color? bGSetting,
    Color? iconSettingColor,
    bool? p1State,
    bool? p2State,
    this.p4State,
    this.p3State,
    bool? p5State,
  })  : this.iconOneColor = iconOneColor ?? const Color(0xFF99969E),
        this.iconTwoColor = iconTwoColor ?? const Color(0xFF99969E),
        this.iconThreeColor = iconThreeColor ?? const Color(0xFF99969E),
        this.bGColor1 = bGColor1 ?? const Color(0xFFFAFAFA),
        this.bGColor2 = bGColor2 ?? const Color(0xFFFAFAFA),
        this.bGColor3 = bGColor3 ?? const Color(0xFFFAFAFA),
        this.logoutColor = logoutColor ?? Colors.white,
        this.logoutIconColor = logoutIconColor ?? const Color(0xFF99969E),
        this.iconFourColor = iconFourColor ?? const Color(0xFF99969E),
        this.bGColor4 = bGColor4 ?? const Color(0xFFFAFAFA),
        this.iconFiveColor = iconFiveColor ?? const Color(0xFF99969E),
        this.iconSixColor = iconSixColor ?? const Color(0xFF99969E),
        this.bGColor5 = bGColor5 ?? const Color(0xFFFAFAFA),
        this.bGColor6 = bGColor6 ?? const Color(0xFFFAFAFA),
        this.bGColor7 = bGColor7 ?? const Color(0xFFFAFAFA),
        this.iconSevenColor = iconSevenColor ?? const Color(0xFF99969E),
        this.iconProfileColor = iconProfileColor ?? const Color(0xFF99969E),
        this.bGProfile = bGProfile ?? const Color(0xFFFAFAFA),
        this.bGSetting = bGSetting ?? const Color(0xFFFAFAFA),
        this.iconSettingColor = iconSettingColor ?? const Color(0xFF99969E),
        this.p1State = p1State ?? false,
        this.p2State = p2State ?? false,
        this.p5State = p5State ?? false,
        super(key: key);

  final Color iconOneColor;
  final Color iconTwoColor;
  final Color iconThreeColor;
  final Color bGColor1;
  final Color bGColor2;
  final Color bGColor3;
  final Color logoutColor;
  final Color logoutIconColor;
  final Color iconFourColor;
  final Color bGColor4;
  final Color iconFiveColor;
  final Color iconSixColor;
  final Color bGColor5;
  final Color bGColor6;
  final Color bGColor7;
  final Color iconSevenColor;
  final Color iconProfileColor;
  final Color bGProfile;
  final Color bGSetting;
  final Color iconSettingColor;
  final bool p1State;
  final bool p2State;
  final bool? p4State;
  final bool? p3State;
  final bool p5State;

  @override
  _SidebarAdminWidgetState createState() => _SidebarAdminWidgetState();
}

class _SidebarAdminWidgetState extends State<SidebarAdminWidget>
    with TickerProviderStateMixin {
  late SidebarAdminModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SidebarAdminModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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

    return Container(
      width: 250.0,
      height: double.infinity,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 250.0,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryText,
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 22.0, 0.0, 20.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (!widget.p1State) {
                                context.pushNamed(
                                  'adminOverview',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              }
                            },
                            child: Container(
                              width: double.infinity,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: valueOrDefault<Color>(
                                  widget.bGColor1,
                                  Color(0xFF009946),
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 4.0, 4.0, 4.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 12.0, 0.0),
                                      child: SvgPicture.asset(
                                        'assets/images/Component_3.svg',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      'Overview',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto Condensed',
                                            color: widget.iconOneColor,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation1']!),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 20.0),
                          child: Container(
                            width: double.infinity,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: widget.bGColor2,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 4.0, 4.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 12.0, 0.0),
                                    child: SvgPicture.asset(
                                      'assets/images/Component_3.svg',
                                      width: 24.0,
                                      height: 24.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'Payments',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto Condensed',
                                          color: widget.iconTwoColor,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation2']!),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 20.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (!widget.p3State!) {
                                context.pushNamed(
                                  'adminProducts',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              }
                            },
                            child: Container(
                              width: double.infinity,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: widget.bGColor3,
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 4.0, 4.0, 4.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 12.0, 0.0),
                                      child: SvgPicture.asset(
                                        'assets/images/Component_3.svg',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      'Products',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto Condensed',
                                            color: widget.iconThreeColor,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation3']!),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 20.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (!widget.p4State!) {
                                context.pushNamed(
                                  'adminUsersList',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              }
                            },
                            child: Container(
                              width: double.infinity,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: widget.bGColor4,
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 4.0, 4.0, 4.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 12.0, 0.0),
                                      child: SvgPicture.asset(
                                        'assets/images/Component_3.svg',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      'Users',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto Condensed',
                                            color: widget.iconFourColor,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation4']!),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 20.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (!widget.p5State) {
                                context.pushNamed(
                                  'adminUsersList',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              }
                            },
                            child: Container(
                              width: double.infinity,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: widget.bGColor5,
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 4.0, 4.0, 4.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 12.0, 0.0),
                                      child: SvgPicture.asset(
                                        'assets/images/Component_3.svg',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      'Admins',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto Condensed',
                                            color: widget.iconFiveColor,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation5']!),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 70.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      var confirmDialogResponse = await showDialog<bool>(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                content: Text('Do you want to Logout?'),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(
                                        alertDialogContext, false),
                                    child: Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext, true),
                                    child: Text('Confirm'),
                                  ),
                                ],
                              );
                            },
                          ) ??
                          false;
                      if (confirmDialogResponse) {
                        GoRouter.of(context).prepareAuthEvent();
                        await authManager.signOut();
                        GoRouter.of(context).clearRedirectLocation();
                      }

                      context.goNamedAuth('landingPageBuyers', context.mounted);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).error,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 4.0, 4.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 12.0, 0.0),
                              child: Icon(
                                Icons.logout,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                            ),
                            Text(
                              'Logout',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto Condensed',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 1.2,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation6']!),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
