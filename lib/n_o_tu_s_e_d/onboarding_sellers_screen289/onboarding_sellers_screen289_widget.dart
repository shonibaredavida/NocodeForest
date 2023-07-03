import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'onboarding_sellers_screen289_model.dart';
export 'onboarding_sellers_screen289_model.dart';

class OnboardingSellersScreen289Widget extends StatefulWidget {
  const OnboardingSellersScreen289Widget({Key? key}) : super(key: key);

  @override
  _OnboardingSellersScreen289WidgetState createState() =>
      _OnboardingSellersScreen289WidgetState();
}

class _OnboardingSellersScreen289WidgetState
    extends State<OnboardingSellersScreen289Widget> {
  late OnboardingSellersScreen289Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnboardingSellersScreen289Model());

    _model.emailController ??= TextEditingController();
    _model.passwordController ??= TextEditingController();
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 982.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 982.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Image.asset(
                          'assets/images/Rectangle_66.png',
                          width: 100.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 982.0,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 24.0, 123.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                          'onboardingSellersScreen1');
                                    },
                                    child: Image.asset(
                                      'assets/images/Rectangle_80.png',
                                      width: 106.5,
                                      height: 8.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 24.0, 123.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                          'onboardingSellersScreen289');
                                    },
                                    child: Image.asset(
                                      'assets/images/Rectangle_80.png',
                                      width: 106.5,
                                      height: 8.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 24.0, 123.0),
                                  child: Image.asset(
                                    'assets/images/Rectangle_81.png',
                                    width: 106.5,
                                    height: 8.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 24.0, 123.0),
                                  child: Image.asset(
                                    'assets/images/Rectangle_81.png',
                                    width: 106.5,
                                    height: 8.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            Material(
                              color: Colors.transparent,
                              elevation: 0.1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Container(
                                width: 428.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 60.0,
                                      color: Color(0x19000000),
                                      offset: Offset(40.0, 40.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      32.0, 32.0, 32.0, 32.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 32.0),
                                        child: Text(
                                          'Register',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'millik',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 24.0,
                                                useGoogleFonts: false,
                                                lineHeight: 1.33,
                                              ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Email Address',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Roboto Condensed',
                                                  color: Colors.black,
                                                  fontSize: 20.0,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: TextFormField(
                                              controller:
                                                  _model.emailController,
                                              autofocus: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Condensed',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        fontSize: 17.0,
                                                      ),
                                              validator: _model
                                                  .emailControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 32.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Password',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Condensed',
                                                        color: Colors.black,
                                                        fontSize: 20.0,
                                                        lineHeight: 1.4,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 0.0),
                                              child: TextFormField(
                                                controller:
                                                    _model.passwordController,
                                                autofocus: true,
                                                obscureText:
                                                    !_model.passwordVisibility,
                                                decoration: InputDecoration(
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  suffixIcon: InkWell(
                                                    onTap: () => setState(
                                                      () => _model
                                                              .passwordVisibility =
                                                          !_model
                                                              .passwordVisibility,
                                                    ),
                                                    focusNode: FocusNode(
                                                        skipTraversal: true),
                                                    child: Icon(
                                                      _model.passwordVisibility
                                                          ? Icons
                                                              .visibility_outlined
                                                          : Icons
                                                              .visibility_off_outlined,
                                                      size: 22,
                                                    ),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Roboto Condensed',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          fontSize: 17.0,
                                                        ),
                                                validator: _model
                                                    .passwordControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 32.0, 0.0, 32.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            GoRouter.of(context)
                                                .prepareAuthEvent();

                                            final user = await authManager
                                                .createAccountWithEmail(
                                              context,
                                              _model.emailController.text,
                                              _model.passwordController.text,
                                            );
                                            if (user == null) {
                                              return;
                                            }

                                            await UsersRecord.collection
                                                .doc(user.uid)
                                                .update({
                                              ...createUsersRecordData(
                                                status: 'active',
                                                becomeASeller: false,
                                                admin: false,
                                                photoUrl:
                                                    'data:image/jpeg;base64,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',
                                              ),
                                              'created_time':
                                                  FieldValue.serverTimestamp(),
                                            });

                                            context.pushNamedAuth(
                                                'onboardingSellersScreen2',
                                                context.mounted);
                                          },
                                          text: 'Continue',
                                          options: FFButtonOptions(
                                            width: 130.0,
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
                                                BorderRadius.circular(4.0),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: Text(
                                          'or continue with',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto Condensed',
                                                color: Color(0xFF99969E),
                                                fontSize: 16.0,
                                                lineHeight: 1.5,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 32.0),
                                        child: Container(
                                          width: 364.0,
                                          height: 54.0,
                                          decoration: BoxDecoration(),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              GoRouter.of(context)
                                                  .prepareAuthEvent();
                                              final user = await authManager
                                                  .signInWithGoogle(context);
                                              if (user == null) {
                                                return;
                                              }

                                              context.pushNamedAuth(
                                                  'onboardingSellersScreen2',
                                                  context.mounted);
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/images/Group.svg',
                                                  height: 32.0,
                                                  fit: BoxFit.fitHeight,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Nocode Forest collects and uses personal data in accordance with our Privacy Policy. By creating an account, you agree to our Terms & Conditions.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto Condensed',
                                              color: Color(0xFF99969E),
                                              fontSize: 16.0,
                                              lineHeight: 1.5,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 95.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('onboardingSellersScreen2');
                                },
                                child: Image.asset(
                                  'assets/images/NF_Logo.png',
                                  width: 134.0,
                                  height: 52.0,
                                  fit: BoxFit.cover,
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
      ),
    );
  }
}
