import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/main_components/success_page/success_page_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'wait_list_form_business_owner_modal_model.dart';
export 'wait_list_form_business_owner_modal_model.dart';

class WaitListFormBusinessOwnerModalWidget extends StatefulWidget {
  const WaitListFormBusinessOwnerModalWidget({
    Key? key,
    Color? textboxBgColor,
    Color? mainBgColor,
    String? headerTitle,
    Color? textboxLabelColors,
    String? buttonText,
    bool? businessOwner,
  })  : this.textboxBgColor = textboxBgColor ?? const Color(0xFF3F3F3F),
        this.mainBgColor = mainBgColor ?? const Color(0xFF242424),
        this.headerTitle = headerTitle ?? 'Profile Details',
        this.textboxLabelColors = textboxLabelColors ?? const Color(0xFFBAB9BD),
        this.buttonText = buttonText ?? 'Submit',
        this.businessOwner = businessOwner ?? false,
        super(key: key);

  final Color textboxBgColor;
  final Color mainBgColor;
  final String headerTitle;
  final Color textboxLabelColors;
  final String buttonText;
  final bool businessOwner;

  @override
  _WaitListFormBusinessOwnerModalWidgetState createState() =>
      _WaitListFormBusinessOwnerModalWidgetState();
}

class _WaitListFormBusinessOwnerModalWidgetState
    extends State<WaitListFormBusinessOwnerModalWidget> {
  late WaitListFormBusinessOwnerModalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WaitListFormBusinessOwnerModalModel());

    _model.nameTextFieldController ??= TextEditingController();
    _model.phoneController ??= TextEditingController();
    _model.emailTextFieldController ??= TextEditingController();
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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FutureBuilder<ApiCallResponse>(
          future: CountryListCall.call(),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: SpinKitCubeGrid(
                    color: FlutterFlowTheme.of(context).primary,
                    size: 50.0,
                  ),
                ),
              );
            }
            final stackCountryListResponse = snapshot.data!;
            return Container(
              width: 1200.0,
              height: 624.0,
              child: Stack(
                children: [
                  Container(
                    width: 1200.0,
                    height: 624.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF242424),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          32.0, 32.0, 32.0, 32.0),
                      child: Container(
                        width: 1200.0,
                        height: 468.0,
                        decoration: BoxDecoration(),
                        child: Form(
                          key: _model.formKey,
                          autovalidateMode: AutovalidateMode.disabled,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 30.0),
                                child: Text(
                                  widget.headerTitle,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'millik',
                                        fontSize: 24.0,
                                        useGoogleFonts: false,
                                        lineHeight: 1.333,
                                      ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 16.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 4.0),
                                                child: Text(
                                                  'Full Name',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Condensed',
                                                        color: widget
                                                            .textboxLabelColors,
                                                        fontSize: 16.0,
                                                        lineHeight: 1.5,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 36.0),
                                                child: Container(
                                                  width: 100.0,
                                                  height: 48.0,
                                                  decoration: BoxDecoration(),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 1.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .nameTextFieldController,
                                                      autofocus: true,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .characters,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Condensed',
                                                                  color: Color(
                                                                      0xFF3F3F3F),
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
                                                              BorderRadius
                                                                  .circular(
                                                                      5.0),
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
                                                              BorderRadius
                                                                  .circular(
                                                                      5.0),
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
                                                              BorderRadius
                                                                  .circular(
                                                                      5.0),
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
                                                              BorderRadius
                                                                  .circular(
                                                                      5.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: widget
                                                            .textboxBgColor,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                      validator: _model
                                                          .nameTextFieldControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 4.0),
                                                child: Text(
                                                  'Phone Number (WhatsApp Enabled Preferred)',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Condensed',
                                                        color: widget
                                                            .textboxLabelColors,
                                                        fontSize: 16.0,
                                                        lineHeight: 1.5,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 36.0),
                                                child: Container(
                                                  width: 100.0,
                                                  height: 48.0,
                                                  decoration: BoxDecoration(),
                                                  child: TextFormField(
                                                    controller:
                                                        _model.phoneController,
                                                    autofocus: true,
                                                    textCapitalization:
                                                        TextCapitalization.none,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto Condensed',
                                                                color: Color(
                                                                    0xFF99969E),
                                                                fontSize: 16.0,
                                                                lineHeight: 1.5,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          widget.textboxBgColor,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Roboto Condensed',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 16.0,
                                                          lineHeight: 1.5,
                                                        ),
                                                    keyboardType: TextInputType
                                                        .emailAddress,
                                                    validator: _model
                                                        .phoneControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 4.0),
                                                child: Text(
                                                  'What industry is your business or project in?',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Condensed',
                                                        color: widget
                                                            .textboxLabelColors,
                                                        fontSize: 16.0,
                                                        lineHeight: 1.5,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 36.0),
                                                child: Container(
                                                  width: 100.0,
                                                  height: 48.0,
                                                  decoration: BoxDecoration(),
                                                  child: ClipRRect(
                                                    child: Container(
                                                      height: 48.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child:
                                                          FlutterFlowDropDown<
                                                              String>(
                                                        controller: _model
                                                                .industryDropDownValueController ??=
                                                            FormFieldController<
                                                                String>(null),
                                                        options: [
                                                          'Agriculture and farming',
                                                          'Arts, entertainment, and recreation',
                                                          'Banking and finance',
                                                          ' Construction',
                                                          'Education and training',
                                                          'Energy and utilities',
                                                          ' Engineering and manufacturing',
                                                          'Government and public administration',
                                                          ' Healthcare and social assistance',
                                                          'Hospitality and tourism ',
                                                          'Information technology',
                                                          'Legal services',
                                                          'Marketing, advertising, and public relatins',
                                                          'Media and communication',
                                                          'Mining and extraction',
                                                          'Non-profit and philanthropic organizations',
                                                          'Real estate',
                                                          'Retail and wholesale trade',
                                                          'Science and research',
                                                          'Transportation and logistics',
                                                          'Other'
                                                        ],
                                                        onChanged: (val) =>
                                                            setState(() => _model
                                                                    .industryDropDownValue =
                                                                val),
                                                        width: 180.0,
                                                        height: 48.0,
                                                        searchHintTextStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Condensed',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                ),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Condensed',
                                                                  color: Color(
                                                                      0xFF858585),
                                                                  fontSize:
                                                                      16.0,
                                                                  lineHeight:
                                                                      1.5,
                                                                ),
                                                        hintText:
                                                            'Select Option',
                                                        searchHintText:
                                                            'Search for an item...',
                                                        fillColor: widget
                                                            .textboxBgColor,
                                                        elevation: 2.0,
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderWidth: 0.0,
                                                        borderRadius: 5.0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    4.0,
                                                                    12.0,
                                                                    4.0),
                                                        hidesUnderline: true,
                                                        isSearchable: false,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 4.0),
                                                child: Text(
                                                  'What is your estimated budget for this project?',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Condensed',
                                                        color: widget
                                                            .textboxLabelColors,
                                                        fontSize: 16.0,
                                                        lineHeight: 1.5,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 32.0),
                                                child: Container(
                                                  width: 100.0,
                                                  height: 48.0,
                                                  decoration: BoxDecoration(),
                                                  child: ClipRRect(
                                                    child: Container(
                                                      height: 48.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child:
                                                          FlutterFlowDropDown<
                                                              String>(
                                                        controller: _model
                                                                .budgetDropDownValueController ??=
                                                            FormFieldController<
                                                                String>(null),
                                                        options: [
                                                          '\$1-\$10',
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
                                                        onChanged: (val) =>
                                                            setState(() => _model
                                                                    .budgetDropDownValue =
                                                                val),
                                                        width: 180.0,
                                                        height: 48.0,
                                                        searchHintTextStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Condensed',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                ),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Condensed',
                                                                  color: Color(
                                                                      0xFF858585),
                                                                  fontSize:
                                                                      16.0,
                                                                  lineHeight:
                                                                      1.5,
                                                                ),
                                                        hintText:
                                                            'Select Option',
                                                        searchHintText:
                                                            'Search for an item...',
                                                        fillColor: widget
                                                            .textboxBgColor,
                                                        elevation: 2.0,
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderWidth: 0.0,
                                                        borderRadius: 5.0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    4.0,
                                                                    12.0,
                                                                    4.0),
                                                        hidesUnderline: true,
                                                        isSearchable: false,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 4.0),
                                              child: Text(
                                                'Email Address',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Roboto Condensed',
                                                          color: widget
                                                              .textboxLabelColors,
                                                          fontSize: 16.0,
                                                          lineHeight: 1.5,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 36.0),
                                              child: Container(
                                                width: 100.0,
                                                height: 48.0,
                                                decoration: BoxDecoration(),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 1.0),
                                                  child: TextFormField(
                                                    controller: _model
                                                        .emailTextFieldController,
                                                    autofocus: true,
                                                    textCapitalization:
                                                        TextCapitalization
                                                            .characters,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto Condensed',
                                                                color: Color(
                                                                    0xFF99969E),
                                                                fontSize: 16.0,
                                                                lineHeight: 1.5,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          widget.textboxBgColor,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                    validator: _model
                                                        .emailTextFieldControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 4.0),
                                              child: Text(
                                                'Location',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Roboto Condensed',
                                                          color: widget
                                                              .textboxLabelColors,
                                                          fontSize: 16.0,
                                                          lineHeight: 1.5,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 36.0),
                                              child: ClipRRect(
                                                child: Container(
                                                  height: 48.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .locationDropDownValueController ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options: (getJsonField(
                                                      stackCountryListResponse
                                                          .jsonBody,
                                                      r'''$..countryname''',
                                                    ) as List)
                                                        .map<String>(
                                                            (s) => s.toString())
                                                        .toList()!,
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .locationDropDownValue =
                                                            val),
                                                    width: 180.0,
                                                    height: 48.0,
                                                    searchHintTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto Condensed',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                            ),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Roboto Condensed',
                                                          color:
                                                              Color(0xFF858585),
                                                          fontSize: 16.0,
                                                          lineHeight: 1.5,
                                                        ),
                                                    hintText:
                                                        'Select your Country',
                                                    searchHintText:
                                                        'Search for an item...',
                                                    fillColor:
                                                        widget.textboxBgColor,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderWidth: 0.0,
                                                    borderRadius: 5.0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 4.0,
                                                                12.0, 4.0),
                                                    hidesUnderline: true,
                                                    isSearchable: false,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 4.0),
                                              child: Text(
                                                'What type of website or application are you looking to build?',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Roboto Condensed',
                                                          color: widget
                                                              .textboxLabelColors,
                                                          fontSize: 16.0,
                                                          lineHeight: 1.5,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 36.0),
                                              child: ClipRRect(
                                                child: Container(
                                                  height: 48.0,
                                                  decoration: BoxDecoration(),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .applicationTypeDropDownValueController ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options: [
                                                      'Blog or personal website',
                                                      'E-commerce ',
                                                      'Portfolio / online gallery',
                                                      'Corporate / business website',
                                                      'Social media platform',
                                                      'Educational / e-learning',
                                                      'Health and fitness app',
                                                      'Food and beverage app ',
                                                      'Travel and tourism website',
                                                      'Job board  / recruitment ',
                                                      'Real estate website / app',
                                                      'Entertainment website / app',
                                                      'Gaming app',
                                                      'Dating website / app',
                                                      'Non-profite / charitable website',
                                                      'Other'
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .applicationTypeDropDownValue =
                                                            val),
                                                    width: 180.0,
                                                    height: 48.0,
                                                    searchHintTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto Condensed',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                            ),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Roboto Condensed',
                                                          color:
                                                              Color(0xFF858585),
                                                          fontSize: 16.0,
                                                          lineHeight: 1.5,
                                                        ),
                                                    hintText: 'Select Option',
                                                    searchHintText:
                                                        'Search for an item...',
                                                    fillColor:
                                                        widget.textboxBgColor,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderWidth: 0.0,
                                                    borderRadius: 5.0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 4.0,
                                                                12.0, 4.0),
                                                    hidesUnderline: true,
                                                    isSearchable: false,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 4.0),
                                              child: Text(
                                                'Would you like ongoing support or maintenance after you purchase the template?',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Roboto Condensed',
                                                          color: widget
                                                              .textboxLabelColors,
                                                          fontSize: 16.0,
                                                          lineHeight: 1.5,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 32.0),
                                              child: ClipRRect(
                                                child: Container(
                                                  height: 48.0,
                                                  decoration: BoxDecoration(),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .maintenanceDropDownValueController ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options: ['Yes ', 'No'],
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .maintenanceDropDownValue =
                                                            val),
                                                    width: 180.0,
                                                    height: 48.0,
                                                    searchHintTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto Condensed',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                            ),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Roboto Condensed',
                                                          color:
                                                              Color(0xFF858585),
                                                          fontSize: 16.0,
                                                          lineHeight: 1.5,
                                                        ),
                                                    hintText: 'Select Option',
                                                    searchHintText:
                                                        'Search for an item...',
                                                    fillColor:
                                                        widget.textboxBgColor,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderWidth: 0.0,
                                                    borderRadius: 5.0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 4.0,
                                                                12.0, 4.0),
                                                    hidesUnderline: true,
                                                    isSearchable: false,
                                                  ),
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
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      Navigator.pop(context);
                                    },
                                    text: 'Close',
                                    options: FFButtonOptions(
                                      width: 198.0,
                                      height: 48.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0x00009946),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Roboto Condensed',
                                            color: Colors.white,
                                          ),
                                      borderSide: BorderSide(
                                        color: Color(0xFFBABDB9),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      if ((_model.nameTextFieldController
                                                      .text !=
                                                  null &&
                                              _model.nameTextFieldController
                                                      .text !=
                                                  '') &&
                                          (_model
                                                      .phoneController.text !=
                                                  null &&
                                              _model
                                                      .phoneController.text !=
                                                  '') &&
                                          (_model
                                                      .industryDropDownValue !=
                                                  null &&
                                              _model
                                                      .industryDropDownValue !=
                                                  '') &&
                                          (_model
                                                      .locationDropDownValue !=
                                                  null &&
                                              _model
                                                      .locationDropDownValue !=
                                                  '') &&
                                          (_model.emailTextFieldController
                                                      .text !=
                                                  null &&
                                              _model.emailTextFieldController
                                                      .text !=
                                                  '') &&
                                          (_model.applicationTypeDropDownValue !=
                                                  null &&
                                              _model.applicationTypeDropDownValue !=
                                                  '') &&
                                          (_model.maintenanceDropDownValue !=
                                                  null &&
                                              _model.maintenanceDropDownValue !=
                                                  '') &&
                                          (_model.budgetDropDownValue != null &&
                                              _model.budgetDropDownValue !=
                                                  '')) {
                                        final waitlistBusinessOwnerCreateData =
                                            {
                                          ...createWaitlistBusinessOwnerRecordData(
                                            country:
                                                _model.locationDropDownValue,
                                            email: _model
                                                .emailTextFieldController.text,
                                            phone: _model.phoneController.text,
                                            fullName: _model
                                                .nameTextFieldController.text,
                                            websiteType: _model
                                                .applicationTypeDropDownValue,
                                            postMaintenance:
                                                _model.maintenanceDropDownValue,
                                            industry:
                                                _model.industryDropDownValue,
                                            budget: _model.budgetDropDownValue,
                                          ),
                                          'created_time':
                                              FieldValue.serverTimestamp(),
                                        };
                                        await WaitlistBusinessOwnerRecord
                                            .collection
                                            .doc()
                                            .set(
                                                waitlistBusinessOwnerCreateData);
                                        setState(() {
                                          _model.industryDropDownValueController
                                              ?.reset();
                                          _model.budgetDropDownValueController
                                              ?.reset();
                                          _model.locationDropDownValueController
                                              ?.reset();
                                          _model
                                              .applicationTypeDropDownValueController
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
                                        });
                                        Navigator.pop(context);
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (bottomSheetContext) {
                                            return Padding(
                                              padding: MediaQuery.of(
                                                      bottomSheetContext)
                                                  .viewInsets,
                                              child: SuccessPageWidget(),
                                            );
                                          },
                                        ).then((value) => setState(() {}));
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
                                    text: widget.buttonText,
                                    options: FFButtonOptions(
                                      width: 198.0,
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
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
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
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
