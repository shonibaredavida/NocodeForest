import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dialog_component_model.dart';
export 'dialog_component_model.dart';

class DialogComponentWidget extends StatefulWidget {
  const DialogComponentWidget({
    Key? key,
    this.bizRef,
    this.talentRef,
    this.promoDoc,
    String? subtitle,
    this.dialogTitle,
    bool? requiresYesNo,
    bool? deleteDialog,
    this.successDialog,
    this.nextRoute,
    this.emailToSendLink,
    this.keyToEmail,
    bool? toResendALink,
    bool? toSendReconfirmationNotResetPassword,
  })  : this.subtitle =
            subtitle ?? 'Are you user you want to  delete Subscriber?',
        this.requiresYesNo = requiresYesNo ?? true,
        this.deleteDialog = deleteDialog ?? true,
        this.toResendALink = toResendALink ?? false,
        this.toSendReconfirmationNotResetPassword =
            toSendReconfirmationNotResetPassword ?? false,
        super(key: key);

  final WaitlistBusinessOwnerRecord? bizRef;
  final WaitlistTalentRecord? talentRef;
  final PromoRecordsRecord? promoDoc;
  final String subtitle;
  final String? dialogTitle;
  final bool requiresYesNo;
  final bool deleteDialog;
  final bool? successDialog;
  final Future<dynamic> Function()? nextRoute;
  final String? emailToSendLink;
  final String? keyToEmail;
  final bool toResendALink;
  final bool toSendReconfirmationNotResetPassword;

  @override
  _DialogComponentWidgetState createState() => _DialogComponentWidgetState();
}

class _DialogComponentWidgetState extends State<DialogComponentWidget> {
  late DialogComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DialogComponentModel());

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

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
              child: Container(
                constraints: BoxConstraints(
                  minWidth: 500.0,
                  maxWidth: 700.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        if (widget.deleteDialog || widget.successDialog!)
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (widget.deleteDialog)
                                Icon(
                                  Icons.warning_amber_sharp,
                                  color: FlutterFlowTheme.of(context).error,
                                  size: 94.0,
                                ),
                              if (widget.successDialog ?? true)
                                Icon(
                                  Icons.check,
                                  color: FlutterFlowTheme.of(context).success,
                                  size: 94.0,
                                ),
                            ],
                          ),
                        if (widget.dialogTitle != null &&
                            widget.dialogTitle != '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                32.0, 0.0, 32.0, 0.0),
                            child: Wrap(
                              spacing: 0.0,
                              runSpacing: 0.0,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.start,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 50.0, 0.0, 0.0),
                                    child: Text(
                                      widget.dialogTitle!,
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto Condensed',
                                            fontSize: 24.0,
                                            letterSpacing: 1.4,
                                            fontWeight: FontWeight.w600,
                                            lineHeight: 1.5,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (widget.subtitle != null && widget.subtitle != '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                32.0, 0.0, 32.0, 32.0),
                            child: Wrap(
                              spacing: 0.0,
                              runSpacing: 0.0,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.start,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 32.0, 0.0, 10.0),
                                        child: Text(
                                          widget.subtitle,
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto Condensed',
                                                fontSize: 22.0,
                                                letterSpacing: 1.3,
                                                lineHeight: 1.333,
                                              ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Visibility(
                                          visible: widget.toResendALink,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 2.0, 0.0, 10.0),
                                                child: Text(
                                                  'Didn\'t get the link? ',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Condensed',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 14.0,
                                                        lineHeight: 1.333,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 2.0, 0.0, 10.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    if (widget
                                                        .toSendReconfirmationNotResetPassword) {
                                                      GoRouter.of(context)
                                                          .prepareAuthEvent();

                                                      final user =
                                                          await authManager
                                                              .signInWithEmail(
                                                        context,
                                                        widget.emailToSendLink!,
                                                        widget.keyToEmail!,
                                                      );
                                                      if (user == null) {
                                                        return;
                                                      }

                                                      await authManager
                                                          .sendEmailVerification();
                                                      GoRouter.of(context)
                                                          .prepareAuthEvent();
                                                      await authManager
                                                          .signOut();
                                                      GoRouter.of(context)
                                                          .clearRedirectLocation();
                                                    } else {
                                                      if (widget
                                                          .emailToSendLink!
                                                          .isEmpty) {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Email required!',
                                                            ),
                                                          ),
                                                        );
                                                        return;
                                                      }
                                                      await authManager
                                                          .resetPassword(
                                                        email: widget
                                                            .emailToSendLink!,
                                                        context: context,
                                                      );
                                                    }

                                                    await authManager
                                                        .sendEmailVerification();
                                                    GoRouter.of(context)
                                                        .prepareAuthEvent();
                                                    await authManager.signOut();
                                                    GoRouter.of(context)
                                                        .clearRedirectLocation();

                                                    context.goNamedAuth(
                                                        'landingPageBuyers',
                                                        context.mounted);
                                                  },
                                                  child: Text(
                                                    'Click here',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Roboto Condensed',
                                                          color:
                                                              Color(0x8504A24C),
                                                          fontSize: 14.0,
                                                          lineHeight: 1.333,
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
                              ],
                            ),
                          ),
                        if (widget.requiresYesNo)
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              Navigator.pop(context);
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 32.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      Navigator.pop(context);

                                      context.pushNamed('landingWaitlistCoppp');
                                    },
                                    text: 'No',
                                    options: FFButtonOptions(
                                      width: 120.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Roboto Condensed',
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
                                            lineHeight: 1.5,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 32.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (widget.bizRef != null) {
                                        await widget.bizRef!.reference.delete();
                                      } else {
                                        await widget.talentRef!.reference
                                            .delete();
                                      }

                                      Navigator.pop(context);

                                      context.pushNamed(
                                        'adminBizView',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    },
                                    text: 'Yes',
                                    options: FFButtonOptions(
                                      width: 120.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context).error,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Roboto Condensed',
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
                                            lineHeight: 1.5,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (!widget.requiresYesNo)
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              Navigator.pop(context);
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 50.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      Navigator.pop(context);
                                    },
                                    text: 'Ok',
                                    options: FFButtonOptions(
                                      width: 130.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Roboto Condensed',
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
                                            lineHeight: 1.5,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
