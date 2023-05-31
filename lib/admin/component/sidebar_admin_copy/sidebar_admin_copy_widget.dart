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
import 'sidebar_admin_copy_model.dart';
export 'sidebar_admin_copy_model.dart';

class SidebarAdminCopyWidget extends StatefulWidget {
  const SidebarAdminCopyWidget({
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

  @override
  _SidebarAdminCopyWidgetState createState() => _SidebarAdminCopyWidgetState();
}

class _SidebarAdminCopyWidgetState extends State<SidebarAdminCopyWidget>
    with TickerProviderStateMixin {
  late SidebarAdminCopyModel _model;

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
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SidebarAdminCopyModel());

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
      width: _model.compactView! ? 95.0 : 275.0,
      height: double.infinity,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: _model.compactView! ? 70.0 : 250.0,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryText,
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 22.0, 0.0, 20.0),
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
                              if (!_model.compactView!)
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
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation1']!),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 20.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (!widget.p2State) {
                            context.pushNamed(
                              'dashboardSellerAnalyticsScreen',
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
                                if (!_model.compactView!)
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
                        ),
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation2']!),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 20.0),
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
                              if (!_model.compactView!)
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
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation3']!),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 20.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (!widget.p4State!) {
                            context.pushNamed(
                              'dashboardSellerProductScreen',
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
                                if (!_model.compactView!)
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
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: 25.0,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0x1A100303),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (_model.compactView ?? true)
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.updatePage(() {
                        _model.compactView = false;
                      });
                    },
                    child: Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Colors.black,
                      size: 35.0,
                    ),
                  ),
                if (_model.compactView ?? true)
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.updatePage(() {
                        _model.compactView = true;
                      });
                    },
                    child: Icon(
                      Icons.keyboard_arrow_left_sharp,
                      color: Colors.black,
                      size: 35.0,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
