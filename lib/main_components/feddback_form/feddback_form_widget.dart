import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'feddback_form_model.dart';
export 'feddback_form_model.dart';

class FeddbackFormWidget extends StatefulWidget {
  const FeddbackFormWidget({Key? key}) : super(key: key);

  @override
  _FeddbackFormWidgetState createState() => _FeddbackFormWidgetState();
}

class _FeddbackFormWidgetState extends State<FeddbackFormWidget> {
  late FeddbackFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeddbackFormModel());

    _model.reviewFieldController ??= TextEditingController();
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
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: AlignmentDirectional(0.0, -1.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 80.0, 0.0, 60.0),
            child: Container(
              width: 800.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(25.0, 25.0, 25.0, 25.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Kindly give us our feeedback',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'millik',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  fontSize: 32.0,
                                  useGoogleFonts: false,
                                  lineHeight: 1.2,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (_model.feedbackSent) {
                                  setState(() {
                                    _model.feedbackSent = false;
                                  });
                                  await Future.delayed(
                                      const Duration(milliseconds: 100));
                                  Navigator.pop(context);
                                } else {
                                  if (_model.reviewFieldController.text !=
                                          null &&
                                      _model.reviewFieldController.text != '') {
                                    var confirmDialogResponse =
                                        await showDialog<bool>(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  content: Text(
                                                      'Exit without sending my feedback?'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              false),
                                                      child: Text('No'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              true),
                                                      child: Text('Yes'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            ) ??
                                            false;
                                    Navigator.pop(context);
                                  } else {
                                    Navigator.pop(context);
                                  }
                                }
                              },
                              child: Icon(
                                Icons.close_sharp,
                                color: FlutterFlowTheme.of(context).accent1,
                                size: 40.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 40.0, 20.0, 0.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 10.0,
                                shape: const CircleBorder(),
                                child: ClipOval(
                                  child: Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: AuthUserStreamWidget(
                                      builder: (context) => ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          !loggedIn
                                              ? 'data:image/jpeg;base64,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'
                                              : currentUserPhoto,
                                          width: 150.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 29.0, 0.0, 0.0),
                            child: Container(
                              width: 580.0,
                              decoration: BoxDecoration(),
                              child: Form(
                                key: _model.formKey,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.stretch,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 10.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .reviewFieldController,
                                                      autofocus: true,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .sentences,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            'Kindly share us your feedback, advice  and suggestions',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Condensed',
                                                                  color: Color(
                                                                      0xFF99969E),
                                                                  fontSize:
                                                                      16.0,
                                                                  lineHeight:
                                                                      1.5,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            Color(0xFFFAFAFA),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto Condensed',
                                                                color: Color(
                                                                    0xFF4F4A4A),
                                                                fontSize: 18.0,
                                                                lineHeight: 1.5,
                                                              ),
                                                      textAlign:
                                                          TextAlign.start,
                                                      maxLines: 4,
                                                      validator: _model
                                                          .reviewFieldControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (_model.feedbackSent)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 10.0),
                              child: Text(
                                'Thanks for your Honest Feedback',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto Condensed',
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      fontSize: 30.0,
                                      letterSpacing: 1.1,
                                      fontWeight: FontWeight.w300,
                                      lineHeight: 1.5,
                                    ),
                              ),
                            ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                if (_model.feedbackSent) {
                                  setState(() {
                                    _model.feedbackSent = false;
                                  });
                                  await Future.delayed(
                                      const Duration(milliseconds: 100));
                                  Navigator.pop(context);
                                } else {
                                  if (_model.reviewFieldController.text ==
                                          null ||
                                      _model.reviewFieldController.text == '') {
                                    Navigator.pop(context);
                                  } else {
                                    var feedbackRecordReference =
                                        FeedbackRecord.collection.doc();
                                    await feedbackRecordReference
                                        .set(createFeedbackRecordData(
                                      comment:
                                          _model.reviewFieldController.text,
                                      isUser: loggedIn ? true : false,
                                      dateCreated: getCurrentTimestamp,
                                      userName: loggedIn
                                          ? currentUserEmail
                                          : 'Anonymous',
                                    ));
                                    _model.feedbAckCreAted =
                                        FeedbackRecord.getDocumentFromData(
                                            createFeedbackRecordData(
                                              comment: _model
                                                  .reviewFieldController.text,
                                              isUser: loggedIn ? true : false,
                                              dateCreated: getCurrentTimestamp,
                                              userName: loggedIn
                                                  ? currentUserEmail
                                                  : 'Anonymous',
                                            ),
                                            feedbackRecordReference);
                                    await Future.delayed(
                                        const Duration(milliseconds: 100));
                                    setState(() {
                                      _model.feedbackSent = true;
                                    });
                                  }
                                }

                                setState(() {});
                              },
                              text:
                                  (_model.feedbAckCreAted?.reference != null) ||
                                          _model.feedbackSent
                                      ? 'Exit'
                                      : 'Submit Feedback',
                              options: FFButtonOptions(
                                width: 297.0,
                                height: 50.0,
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
                                      fontSize: 18.0,
                                      lineHeight: 1.5,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
