import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/waitlist/components/footer_mobilewaitlist/footer_mobilewaitlist_widget.dart';
import '/waitlist/components/waitlist_menu/waitlist_menu_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'biz_mobileform_waitlist_model.dart';
export 'biz_mobileform_waitlist_model.dart';

class BizMobileformWaitlistWidget extends StatefulWidget {
  const BizMobileformWaitlistWidget({Key? key}) : super(key: key);

  @override
  _BizMobileformWaitlistWidgetState createState() =>
      _BizMobileformWaitlistWidgetState();
}

class _BizMobileformWaitlistWidgetState
    extends State<BizMobileformWaitlistWidget> {
  late BizMobileformWaitlistModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BizMobileformWaitlistModel());

    _model.nameTextFieldController ??= TextEditingController();
    _model.emailTextFieldController ??= TextEditingController();
    _model.phoneTextFieldController ??= TextEditingController();
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
        backgroundColor: Color(0xFFF3F3F5),
        body: SafeArea(
          top: true,
          child: Visibility(
            visible: responsiveVisibility(
              context: context,
              tabletLandscape: false,
              desktop: false,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
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
                      Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF0D0D0D),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 0.0),
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
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (context) {
                                      return GestureDetector(
                                        onTap: () => FocusScope.of(context)
                                            .requestFocus(_model.unfocusNode),
                                        child: Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: WaitlistMenuWidget(),
                                        ),
                                      );
                                    },
                                  ).then((value) => setState(() {}));
                                },
                                child: Icon(
                                  Icons.menu_rounded,
                                  color: Color(0xFFBABDB9),
                                  size: 32.0,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 16.0),
                                child: SvgPicture.asset(
                                  'assets/images/NF_Logo.svg',
                                  width: 80.0,
                                  height: 32.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(44.7, 44.0, 300.0, 44.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.safePop();
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: Icon(
                              Icons.chevron_left_outlined,
                              color: Color(0xFF0F1C10),
                              size: 16.0,
                            ),
                          ),
                          Text(
                            'Back',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto Condensed',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  fontSize: 16.0,
                                  lineHeight: 1.5,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 36.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: FutureBuilder<ApiCallResponse>(
                        future: CountryListCall.call(),
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
                          final columnCountryListResponse = snapshot.data!;
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 32.0, 0.0, 32.0),
                                    child: Text(
                                      'For Business Owners, \nStartup Founders, and \nProject Owners',
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
                              Form(
                                key: _model.formKey,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 24.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Full Name',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Roboto Condensed',
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                  .nameTextFieldController,
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
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                filled: true,
                                                fillColor: Color(0xFF3F3F3F),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Email Address',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Roboto Condensed',
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                  .emailTextFieldController,
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
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                filled: true,
                                                fillColor: Color(0xFF3F3F3F),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Phone Number (WhatsApp Enabled \nPreferred)',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Roboto Condensed',
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                  .phoneTextFieldController,
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
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                filled: true,
                                                fillColor: Color(0xFF3F3F3F),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Location',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Roboto Condensed',
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                      .locationnDropDownValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: (getJsonField(
                                                columnCountryListResponse
                                                    .jsonBody,
                                                r'''$..countryname''',
                                              ) as List)
                                                  .map<String>(
                                                      (s) => s.toString())
                                                  .toList()!,
                                              onChanged: (val) => setState(() =>
                                                  _model.locationnDropDownValue =
                                                      val),
                                              width: 279.0,
                                              height: 48.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Condensed',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(
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
                                          0.0, 0.0, 0.0, 24.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'What industry is your business or project in?',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Roboto Condensed',
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                  FormFieldController<String>(
                                                      null),
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
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Condensed',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(
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
                                          0.0, 0.0, 0.0, 24.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'What type of website or application are you \nlooking to build?',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Roboto Condensed',
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                      .websiteTypeDropDownValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: [
                                                'Blog or personal websit',
                                                'E-commerce website',
                                                'Portfolio or online gallery',
                                                'Corporate or business website',
                                                'Social media platform',
                                                'Educational or e-learning website',
                                                'Health and fitness app',
                                                'Food and beverage app',
                                                'Travel and tourism website or app',
                                                'Job board or recruitment website',
                                                'Real estate website or app',
                                                'Entertainment app',
                                                'Gaming app',
                                                'Dating website or app',
                                                'Non-profit or charitable website',
                                                'Other'
                                              ],
                                              onChanged: (val) => setState(() =>
                                                  _model.websiteTypeDropDownValue =
                                                      val),
                                              width: 279.0,
                                              height: 48.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Condensed',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(
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
                                          0.0, 0.0, 0.0, 24.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'What is your estimated budget for this \nproject?',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Roboto Condensed',
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                      .budgetDropDownValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: [
                                                '\$1-\$1',
                                                '\$11-\$25',
                                                '\$26-\$50',
                                                '\$51-\$100',
                                                '\$101-\$250',
                                                '\$251-\$500',
                                                '\$501-\$750',
                                                '\$751-\$1000',
                                                '\$1001-\$2000',
                                                '\$2001-\$5000',
                                                '\$5001-\$10000'
                                              ],
                                              onChanged: (val) => setState(() =>
                                                  _model.budgetDropDownValue =
                                                      val),
                                              width: 279.0,
                                              height: 48.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Condensed',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(
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
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Would you like ongoing support or \nmaintenance after you purchase the \ntemplate?',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Roboto Condensed',
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                      .maintenanceDropDownValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: ['Yes', 'No\n'],
                                              onChanged: (val) => setState(() =>
                                                  _model.maintenanceDropDownValue =
                                                      val),
                                              width: 279.0,
                                              height: 48.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Condensed',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(
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
                                          if ((_model.nameTextFieldController.text != null && _model.nameTextFieldController.text != '') &&
                                              (_model.phoneTextFieldController
                                                          .text !=
                                                      null &&
                                                  _model.phoneTextFieldController
                                                          .text !=
                                                      '') &&
                                              (_model
                                                          .industryDropDownValue !=
                                                      null &&
                                                  _model
                                                          .industryDropDownValue !=
                                                      '') &&
                                              (_model
                                                          .locationnDropDownValue !=
                                                      null &&
                                                  _model
                                                          .locationnDropDownValue !=
                                                      '') &&
                                              (_model
                                                          .emailTextFieldController
                                                          .text !=
                                                      null &&
                                                  _model.emailTextFieldController
                                                          .text !=
                                                      '') &&
                                              (_model
                                                          .websiteTypeDropDownValue !=
                                                      null &&
                                                  _model
                                                          .websiteTypeDropDownValue !=
                                                      '') &&
                                              (_model.budgetDropDownValue !=
                                                      null &&
                                                  _model.budgetDropDownValue !=
                                                      '') &&
                                              (_model.maintenanceDropDownValue !=
                                                      null &&
                                                  _model.maintenanceDropDownValue !=
                                                      '')) {
                                            await WaitlistBusinessOwnerRecord
                                                .collection
                                                .doc()
                                                .set({
                                              ...createWaitlistBusinessOwnerRecordData(
                                                country: _model
                                                    .locationnDropDownValue,
                                                email: _model
                                                    .emailTextFieldController
                                                    .text,
                                                phone: _model
                                                    .phoneTextFieldController
                                                    .text,
                                                fullName: _model
                                                    .nameTextFieldController
                                                    .text,
                                                websiteType: _model
                                                    .websiteTypeDropDownValue,
                                                postMaintenance: _model
                                                    .maintenanceDropDownValue,
                                                industry: _model
                                                    .industryDropDownValue,
                                                budget:
                                                    _model.budgetDropDownValue,
                                              ),
                                              'created_time':
                                                  FieldValue.serverTimestamp(),
                                            });
                                            setState(() {
                                              _model
                                                  .locationnDropDownValueController
                                                  ?.reset();
                                              _model
                                                  .industryDropDownValueController
                                                  ?.reset();
                                              _model
                                                  .websiteTypeDropDownValueController
                                                  ?.reset();
                                              _model
                                                  .budgetDropDownValueController
                                                  ?.reset();
                                              _model
                                                  .maintenanceDropDownValueController
                                                  ?.reset();
                                            });
                                            setState(() {
                                              _model.nameTextFieldController
                                                  ?.clear();
                                              _model.emailTextFieldController
                                                  ?.clear();
                                              _model.phoneTextFieldController
                                                  ?.clear();
                                            });

                                            context.pushNamed(
                                                'bizMobileSuccessWaitlist');
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text(
                                                      'kindly fill all fields'),
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
                                        text: 'Submit',
                                        options: FFButtonOptions(
                                          width: 279.0,
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
                                                  ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.footerMobilewaitlistModel,
                    updateCallback: () => setState(() {}),
                    child: FooterMobilewaitlistWidget(),
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
