import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/waitlist/promo/mobilepromo_success2/mobilepromo_success2_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mob_promo_form_model.dart';
export 'mob_promo_form_model.dart';

class MobPromoFormWidget extends StatefulWidget {
  const MobPromoFormWidget({Key? key}) : super(key: key);

  @override
  _MobPromoFormWidgetState createState() => _MobPromoFormWidgetState();
}

class _MobPromoFormWidgetState extends State<MobPromoFormWidget> {
  late MobPromoFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MobPromoFormModel());

    _model.nameTextFieldController ??= TextEditingController();
    _model.emailTextFieldController ??= TextEditingController();
    _model.phoneTextFieldController ??= TextEditingController();
    _model.companyNameTextFieldController ??= TextEditingController();
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

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          child: Material(
            color: Colors.transparent,
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.75,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              32.0, 88.0, 32.0, 0.0),
                          child: Container(
                            height: 72.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF34335),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Once in a Lifetime \nLimited Offer!!!',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'millik',
                                          fontSize: 20.0,
                                          useGoogleFonts: false,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Wrap(
                          spacing: 0.0,
                          runSpacing: 0.0,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  32.0, 32.0, 32.0, 32.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text:
                                                'Get a Company Website for \$10 - \$49 ',
                                            style: TextStyle(
                                              fontSize: 24.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                '\nwith FREE Hosting + Domain Forever',
                                            style: TextStyle(),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'millik',
                                              fontSize: 20.0,
                                              useGoogleFonts: false,
                                              lineHeight: 1.4,
                                            ),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 32.0),
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
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Fill this form to Claim the Offer Now. ',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto Condensed',
                                            fontSize: 16.0,
                                            lineHeight: 1.5,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Form(
                          key: _model.formKey,
                          autovalidateMode: AutovalidateMode.disabled,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 24.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        'Full Name',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto Condensed',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              lineHeight: 1.5,
                                            ),
                                      ),
                                      Container(
                                        width: 279.0,
                                        height: 48.0,
                                        decoration: BoxDecoration(),
                                        child: TextFormField(
                                          controller:
                                              _model.nameTextFieldController,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .override(
                                                      fontFamily:
                                                          'Roboto Condensed',
                                                      fontSize: 14.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            filled: true,
                                            fillColor: Color(0xFF3F3F3F),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          validator: _model
                                              .nameTextFieldControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 24.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        'Email Address',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto Condensed',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              lineHeight: 1.5,
                                            ),
                                      ),
                                      Container(
                                        width: 279.0,
                                        height: 48.0,
                                        decoration: BoxDecoration(),
                                        child: TextFormField(
                                          controller:
                                              _model.emailTextFieldController,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .override(
                                                      fontFamily:
                                                          'Roboto Condensed',
                                                      fontSize: 14.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            filled: true,
                                            fillColor: Color(0xFF3F3F3F),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          validator: _model
                                              .emailTextFieldControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 24.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        'Phone Number (WhatsApp Enabled \nPreferred)',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto Condensed',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              lineHeight: 1.5,
                                            ),
                                      ),
                                      Container(
                                        width: 279.0,
                                        height: 48.0,
                                        decoration: BoxDecoration(),
                                        child: TextFormField(
                                          controller:
                                              _model.phoneTextFieldController,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .override(
                                                      fontFamily:
                                                          'Roboto Condensed',
                                                      fontSize: 14.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            filled: true,
                                            fillColor: Color(0xFF3F3F3F),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          validator: _model
                                              .phoneTextFieldControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 24.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        'Company / Business / Product Name',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto Condensed',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              lineHeight: 1.5,
                                            ),
                                      ),
                                      Container(
                                        width: 279.0,
                                        height: 48.0,
                                        decoration: BoxDecoration(),
                                        child: TextFormField(
                                          controller: _model
                                              .companyNameTextFieldController,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .override(
                                                      fontFamily:
                                                          'Roboto Condensed',
                                                      fontSize: 14.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            filled: true,
                                            fillColor: Color(0xFF3F3F3F),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          validator: _model
                                              .companyNameTextFieldControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 24.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        'What industry is your Company in?',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto Condensed',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              lineHeight: 1.5,
                                            ),
                                      ),
                                      Container(
                                        width: 279.0,
                                        height: 48.0,
                                        decoration: BoxDecoration(),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .industryDropDownValueController ??=
                                              FormFieldController<String>(null),
                                          options: [
                                            'Agriculture and farming',
                                            'Arts, entertainment, and recreation',
                                            'Banking and finance',
                                            'Construction',
                                            'Education and training',
                                            'Energy and utilities',
                                            'Engineering and manufacturing',
                                            'Government and public administration',
                                            'Healthcare and social assistance',
                                            'Hospitality and tourism',
                                            'Information technology',
                                            'Legal services',
                                            'Marketing, advertising, and public relations',
                                            'Media and communication',
                                            'Mining and extraction',
                                            'Non-profit and philanthropic organizations',
                                            'Real estate',
                                            'Retail and wholesale trade',
                                            'Science and research',
                                            'Transportation and logistics',
                                            'Other'
                                          ],
                                          onChanged: (val) => setState(() =>
                                              _model.industryDropDownValue =
                                                  val),
                                          width: 279.0,
                                          height: 48.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto Condensed',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 16.0,
                                                lineHeight: 1.5,
                                              ),
                                          hintText: 'Select Option',
                                          fillColor: Color(0xFF3F3F3F),
                                          elevation: 2.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 0.0,
                                          borderRadius: 5.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 4.0, 12.0, 4.0),
                                          hidesUnderline: true,
                                          isSearchable: false,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 32.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        'Select an Offer',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto Condensed',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              lineHeight: 1.5,
                                            ),
                                      ),
                                      Container(
                                        width: 279.0,
                                        height: 48.0,
                                        decoration: BoxDecoration(),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .offerDropDownValueController ??=
                                              FormFieldController<String>(null),
                                          options: [
                                            '\$10 (₦8,000) - Company Website Template\n',
                                            '\$29  (₦23,200) - Company Website Template + FREE Domain + Hosting\n',
                                            '\$49 (₦39,200) - Company Website Template + FREE Domain + Hosting + Customization\n'
                                          ],
                                          onChanged: (val) => setState(() =>
                                              _model.offerDropDownValue = val),
                                          width: 279.0,
                                          height: 48.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto Condensed',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 16.0,
                                                lineHeight: 1.5,
                                              ),
                                          hintText: 'Select Option',
                                          fillColor: Color(0xFF3F3F3F),
                                          elevation: 2.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 0.0,
                                          borderRadius: 5.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 4.0, 12.0, 4.0),
                                          hidesUnderline: true,
                                          isSearchable: false,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 32.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if ((_model.nameTextFieldController.text != null &&
                                              _model.nameTextFieldController
                                                      .text !=
                                                  '') &&
                                          (_model.phoneTextFieldController.text !=
                                                  null &&
                                              _model.phoneTextFieldController.text !=
                                                  '') &&
                                          (_model.companyNameTextFieldController
                                                      .text !=
                                                  null &&
                                              _model.companyNameTextFieldController
                                                      .text !=
                                                  '') &&
                                          (_model.emailTextFieldController
                                                      .text !=
                                                  null &&
                                              _model.emailTextFieldController
                                                      .text !=
                                                  '') &&
                                          (_model.industryDropDownValue !=
                                                  null &&
                                              _model.industryDropDownValue !=
                                                  '') &&
                                          (_model.offerDropDownValue != null &&
                                              _model.offerDropDownValue !=
                                                  '')) {
                                        await PromoRecordsRecord.collection
                                            .doc()
                                            .set({
                                          ...createPromoRecordsRecordData(
                                            email: _model
                                                .emailTextFieldController.text,
                                            phone: _model
                                                .phoneTextFieldController.text,
                                            name: _model
                                                .nameTextFieldController.text,
                                            companyInfo: _model
                                                .companyNameTextFieldController
                                                .text,
                                            offerChoice:
                                                _model.offerDropDownValue,
                                            industry:
                                                _model.industryDropDownValue,
                                          ),
                                          'time_created':
                                              FieldValue.serverTimestamp(),
                                        });
                                        setState(() {
                                          _model.industryDropDownValueController
                                              ?.reset();
                                          _model.offerDropDownValueController
                                              ?.reset();
                                        });
                                        setState(() {
                                          _model.nameTextFieldController
                                              ?.clear();
                                          _model.emailTextFieldController
                                              ?.clear();
                                          _model.phoneTextFieldController
                                              ?.clear();
                                          _model.companyNameTextFieldController
                                              ?.clear();
                                        });
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          isDismissible: false,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.of(context)
                                                  .viewInsets,
                                              child:
                                                  MobilepromoSuccess2Widget(),
                                            );
                                          },
                                        ).then((value) => setState(() {}));
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text(
                                                  'Kindly fill all Fields'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      }
                                    },
                                    text: 'Claim Offer Now',
                                    options: FFButtonOptions(
                                      width: 279.0,
                                      height: 48.0,
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
                                            fontSize: 20.0,
                                            lineHeight: 1.4,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
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
                  Align(
                    alignment: AlignmentDirectional(0.95, -1.01),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 32.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (FFAppState().promoState == false) {
                            Navigator.pop(context);
                          } else {
                            _model.updatePage(() {
                              FFAppState().promoState = false;
                            });
                          }
                        },
                        child: Material(
                          color: Colors.transparent,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Container(
                            width: 90.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 5.0, 5.0, 5.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: Icon(
                                      Icons.close,
                                      color: Color(0xFFBAB9BD),
                                      size: 24.0,
                                    ),
                                  ),
                                  Text(
                                    'Close',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto Condensed',
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          lineHeight: 1.5,
                                        ),
                                  ),
                                ],
                              ),
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
        ),
      ],
    );
  }
}
