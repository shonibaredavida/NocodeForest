import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/main_components/account_panel/account_panel_widget.dart';
import '/main_components/footer_component/footer_component_widget.dart';
import '/main_components/header/header_widget.dart';
import '/main_components/notification_panel/notification_panel_widget.dart';
import '/main_components/signin_modal/signin_modal_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'landing_page_buyers_model.dart';
export 'landing_page_buyers_model.dart';

class LandingPageBuyersWidget extends StatefulWidget {
  const LandingPageBuyersWidget({Key? key}) : super(key: key);

  @override
  _LandingPageBuyersWidgetState createState() =>
      _LandingPageBuyersWidgetState();
}

class _LandingPageBuyersWidgetState extends State<LandingPageBuyersWidget> {
  late LandingPageBuyersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LandingPageBuyersModel());

    _model.textController ??= TextEditingController();
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
                    ),
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                            ))
                              Container(
                                width: double.infinity,
                                constraints: BoxConstraints(
                                  maxWidth: 1728.0,
                                ),
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'assets/images/Landing_Page_BACKGROUND_(1).png',
                                    ).image,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      70.0, 0.0, 70.0, 82.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    height: 130.1,
                                                    decoration: BoxDecoration(),
                                                    child: wrapWithModel(
                                                      model: _model.headerModel,
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      child: HeaderWidget(
                                                        dashboard: false,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 608.0,
                                              decoration: BoxDecoration(),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 53.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      height: 608.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        48.0,
                                                                        0.0,
                                                                        22.0),
                                                            child: RichText(
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text:
                                                                        'Buy/Sell ',
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        'Ready-to-use',
                                                                    style:
                                                                        TextStyle(),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        '\nNocode ',
                                                                    style:
                                                                        TextStyle(),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        'Themes',
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        '\nFor Your Next Project',
                                                                    style:
                                                                        TextStyle(),
                                                                  )
                                                                ],
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'millik',
                                                                      fontSize:
                                                                          48.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                      lineHeight:
                                                                          1.5,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        40.0),
                                                            child: Text(
                                                              'Explore thousands of easy to customize nocode\ntemplates for web and mobile app projects, made by \nworld-class nocode developers and designers.',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto Condensed',
                                                                    fontSize:
                                                                        24.0,
                                                                    lineHeight:
                                                                        1.333,
                                                                  ),
                                                            ),
                                                          ),
                                                          if (responsiveVisibility(
                                                            context: context,
                                                            phone: false,
                                                            tablet: false,
                                                            tabletLandscape:
                                                                false,
                                                            desktop: false,
                                                          ))
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          40.0),
                                                              child: Container(
                                                                width: 495.0,
                                                                height: 48.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          11.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .search_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            TextFormField(
                                                                          controller:
                                                                              _model.textController,
                                                                          onChanged: (_) =>
                                                                              EasyDebounce.debounce(
                                                                            '_model.textController',
                                                                            Duration(milliseconds: 2000),
                                                                            () =>
                                                                                setState(() {}),
                                                                          ),
                                                                          obscureText:
                                                                              false,
                                                                          decoration:
                                                                              InputDecoration(
                                                                            hintText:
                                                                                ' Seach for anything here ',
                                                                            hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Roboto Condensed',
                                                                                  color: Color(0xFF95A1AC),
                                                                                  fontSize: 16.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                  lineHeight: 1.5,
                                                                                ),
                                                                            enabledBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: Color(0x00000000),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: const BorderRadius.only(
                                                                                topLeft: Radius.circular(4.0),
                                                                                topRight: Radius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                            focusedBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: Color(0x00000000),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: const BorderRadius.only(
                                                                                topLeft: Radius.circular(4.0),
                                                                                topRight: Radius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                            errorBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: Color(0x00000000),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: const BorderRadius.only(
                                                                                topLeft: Radius.circular(4.0),
                                                                                topRight: Radius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                            focusedErrorBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: Color(0x00000000),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: const BorderRadius.only(
                                                                                topLeft: Radius.circular(4.0),
                                                                                topRight: Radius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                9.0,
                                                                                0.0),
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Clash Display',
                                                                                color: Color(0xFF95A1AC),
                                                                                fontSize: 14.0,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                          validator: _model
                                                                              .textControllerValidator
                                                                              .asValidator(context),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          9.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .chevron_right_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 136.0,
                                                                child: Stack(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              1.0,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            46.0,
                                                                        height:
                                                                            46.0,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(21.0),
                                                                              child: Image.network(
                                                                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYw2QiCa74U-a5hPJ8p8ECSJazRY03SUa6AA&usqp=CAU',
                                                                                width: 42.0,
                                                                                height: 42.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.6,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            46.0,
                                                                        height:
                                                                            46.0,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(21.0),
                                                                              child: Image.network(
                                                                                'data:image/jpeg;base64,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',
                                                                                width: 42.0,
                                                                                height: 42.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.2,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            46.0,
                                                                        height:
                                                                            46.0,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(21.0),
                                                                              child: Image.network(
                                                                                'https://picsum.photos/seed/544/600',
                                                                                width: 42.0,
                                                                                height: 42.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -0.2,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            46.0,
                                                                        height:
                                                                            46.0,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(21.0),
                                                                              child: Image.network(
                                                                                'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUWFRUREhIYGBUYEhUYGBgYGBERGBISGBUZGRgYGBgcIS4lHB4rHxgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QGhISGjQhJCExNDE0MTQ0NDQxNDE0NDQ/NDQ0NDQ0MTQ0NDE0MTQxMTQ0MTQ0NDQ0NDQ0NDExNDExNP/AABEIAL0BCwMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAADAAECBAUGBwj/xAA3EAABAwMDAgMHAgUEAwAAAAABAAIRAwQhBRIxQVFhcYEGEyKRobHBMvAUQmKC0RVScvEzouH/xAAZAQADAQEBAAAAAAAAAAAAAAAAAQIDBAX/xAAkEQEBAAIBBAICAwEAAAAAAAAAAQIRIQMEEjFBURMiYXGBI//aAAwDAQACEQMRAD8A9R3pe8VZ1RCfURwtZq11RrVkOpUVC5rokLaN5dQCuR1e+5yrup33IBXPVAXlV6Cg5xJVmhaEq9b2YGSrYgJa2Nh21m0crTa9oCy33AHVULnUfFVIW23X1ADAWZd3xPJWN/HzlUL6+kHKchLF1qmYBVOreF3VZNJ25xKsVcBFglDc+SSn2AqmCVYobjiFUmiSdbdkSwtCXtkYladnZzyFoODKYlxAPbE/JK5aOY7bdhTG0T2VO6ph7y48DAVD/XsQ1uI5JhUKurOPb0Kx840mLZfXYzhULjUfFZNxVcRM/lCotJyVpj45fJZbi3Vqlyri2nlWWMT0nZ2nBHQ9u62moztCbZIjLLwWrRooppK4i5MkWQVllgIUq9Taq3+oqv2OWUrm0A4WbWpQrj76UBzwcrTGX5KqzGKW1TTOcr0EQpJkkw+iHPQX1EF9VVatbxXlabJ16ywtSvokAp7+9jAK5q8uSTynID16xcfBTpkKmxylUugEUND34QnVwVgXepROVnHWTOU9CadBeE9CsCu2o522MfhWKOotdy5bVoxvJ6piyMYUiBlY9/Vk7R6rsbtzQIwsYaKHyYIynE2MeyZiUW4pkiAF0ltoWwDqEepp7QQlaJHN2mlE5IW1QsGsEuIA8YCJXumUxAEu7QfuuZ1C4e90ufieOg8FOWf0qYtS71YA7KQ/uP4WZUfLtxMk90Km0d1N7x1I/KyttaTSTdruclScWj95VdlWOG4UKjj0wlobWHXIAMZCD/GCIQnB3XPyQTRd2T0VtEbdEGWkhXKV8XubvOe8ASMYKoinHKDMKpdIrrdM1D9TCZg4P9PZW33YXL2LzBKtl57ru6M8ptjlOVq7rSs1EdPUoa38SiQCcJglKoJFQUi5Qc5FByUpQ5TpbN7jUrLLvbyByhXV5Cwbu6lebI2Pd3Uys2pUHdVr28jqs3+M6yim0a13t6rIu9RPRBua89VWOURNQfVJ5KHCMWJNpEkDuVaWn7P6Wart5/Q3/wBnLp7m32MxOArGjUmsa1jRAAUddqYFNvJyfBqxuVuTSY6jmGXD3O7icLqNMqDbDhCx6LGs5TV9RDeCrt2JNOjutQY1sTK56/1fsViXWpF0wVnPqEnJRIVraq1tzcnJyFlVQ7qPtlTp/qznER0A8VYp0A8wB6kk/ILKqR06xfVO0AY5wTAXS2PseXRvOP30W/7PaS2lTbAlzsuJ+i6GixYZ9SziOvp9GWbrn7b2MpAZcT6BSd7G0pmTHRdUxhRgzwWf5Mm34sfpx59kKRgfdO/2Wpt6LsmsHZVK7OiLnkc6eP04a79n6YmG9Oq5LU9F2OLm8dRzC9UuqQgrl9RpcnzRhnlvlHU6ONnEcIH7MR6qyx8iUDUWFryCf+lNhwPJep2ttvvh5vUmuKk5ygSmcUy7dsk9yaU0IjGJzYRITBqOWJmtT0QQYpQjuCEjQdZfX/OVlVLqASTkqhUuC53gh16mJK81tarX9clDpjCrPfucrgGEWFFOscpmuKL7skq3b2hPRPgtUGiyVfo2vWFYpWzW8p33Aap39LmP20ra8LBHKp3V/JLiZJWVcX/ZUKlZzuqJiLkvXOodiqD6pd1Q4Tq5ii5EkAkpMOZT0Fi5G0iOwV3SHw8EiVm1XTBWjp3IJMeXJXNlNbbYc16dpdTcwY6YW1bs8Mrn/Z10tHaAunotXJlOXfheFui1vVH90DxhVWHorjDhGoe6rFkYVe5pq1XJQ2iQnqHusG6WFc0sFdTc0BlYd4yCcdFB2vPvaWhBDlnUxIHkuk1qjua5vWDHmuftm/CPJep2XLze5msgwxSDEUtTwvSmLl2gGIjUySZJFQKmoORQW5NCSdI1llKBlVbmHYVi8ftHiqtuCei82ajX2Cy0yFfp26MymBkp31wFNy+lTEOnbAZKm+qGqncXkKhUuC5GrRcpF64vln1K7ihEJ1cx0i5WmhOkkq0CSSSRoEFIJAJ1UiTwtrQLD3lQMJIET6J7DQt9D34qfHMhkDLQY574WloDNldo7tK4+rlN3Tq6eFmrfl3NhbNY0NYMfdats/KoUOEGu94/SY78yuWcu706J9ZjMucB4lTp39M/pqNPkQuYNBm0mtVDGZkyGzjqSsh1Gwncy4eSOIc8ifRXMUXJ3r7lpGIKFVuA2O0rmtLu/iDGO3N6GVpa4xzaYeOglF0Yeq6wymJdJJwGtySVyd5rFeoSW0S1vjjH3Ttu6o3Pp0g+ptDvjzgmAGN6nr6IT7q7cx1SpDXB5AYWNZLRGTmQn48bZ3O70z3Vy953Dp9Vh7YLh2cflOFv2zC4F5EHmM4lYtyIe7zXX2eX72fww7mfrLQlJRSXrOE5TJJJA8qJTpkAydMnlBrVWnudJ46KQgIdasAOVm3F2ei8rVrfcjQrXICza9wTwguqSolyqYpuWzEJJ2qcK5CDKSRCSekkknSRpRKdNkqCLQdBTC0y0lM60Vug/CI5sp6LhtexdNjt7Hj4mHc2MHa7BHjmPmjvpbLmYMT2j1CytDqbK7HTALtp8j+wvQdYtGOBeP1bQR5hcPXnjl/bv6N8sP6RtKwiJVp9PcAQDPpCwKDyHAeK6ahUwFy8yun2xrzQGPLnVnEhzY5IDP8AjiAUG306jQpvpsO/eQTINQyBAzAHC6anTnup/wAMJkhazLU0i4Te9MXStPa1gqFm12IJ/VC0rk76Za7MfYqxcvERhUbR/wATh0M//FF5a4xi6fvdLA8hzDtEYx0PjgKdxp1R/wD5H48ByPNV7h/urgnIDuY+63G3QcInlHlZwm4TbBumhjT8MfuFxOof+R0cEyu81emCD5Lgr8/H6fldfY3/AKf45u7x/VXSlTDCowvYeYZJJaNhbB3KVuj0ziE0LpXaa1ROmtErP8kPxc44KK23acMeaJ/pHgn5weLlHVZ5KrvKiCnlcKyTBJIJhIKe5RSTlSSQUgw9ki0p7h6MnASThURoUmDKZSZyEw29Ptt0LYZpwWPYXW1aZ1ERyqQP/BtC7CzJNuHHO5nEzG0xPgvPquqDurWj+1NQOFrtBY8xuJMtnJjuuXucdyOrt8vHLn5dLXbDmn+pa9tV6ErIe7cD6FSbUIyF5+npSuno1wPlwh3upBgxk/lYrb3vjxOFRbWNV4/2g/NVILlGpUuCwb3se8kT8ILpP+3wVanrQY/c6mWdt2QfI9VrWzZG1B1Owa5u1wwfJVJBbfhymr6kalSaYEAZPmjULwtAzxAT6jbUqcAVGN7iQDKyjdMLg1jg4nGEWbRcrOa09Q1EbCZ6Lj6rpdJ81uX9ntY13Qk48lg1T8RXV2mP78OXucrceVkKs7lLcU7AvWjgpir2n3MGFUe3CPprJfCWU3BvTfZUJhHDSVo2Fo3aCrwtmBc2WpR5Vh29tkSOq0PceCvbWBN7xvdK0914mnCZSWDQoSTBOmEkWm3qk2n3TuMELLLL4ipin1QqjZIyiDn0P1Ki5vxeQUKIgDKTMmSoPMlECLbfZaSkdkpCi4qDnI3TFFQgIdJ5OZKrl5VikMBG6SNQ5AlWtLdtr0ieN7fqqbf1E+ik90EOHIIPqDKVOXnb0v3sEKzRfOAs5kPY1w/maHDxBCag8h3UEcjwXPcXdjk220A4EKhc1vcML9jnbRkN7z36BW6VeCHcjqrtNoJcCMEfdEujs25Kl7Q13n4pY0z8NMtnwlzvrC2mXdgQfeCu55A/UKzpd1ggn/CpO0djHkwSyZ2yfgz0jp4LUraOwtBaw9/hD3Y+y33jovx5X3XP6leUdwba25aXY3vAEHng5ceeUDRbUNLiROTBIg88+a0rnTCHNcAWhpJJdAPBHHMqGmgGY43wPIcqMrNcJ/Fcf2oHtFWADWD+VpPqVyrStTXq8vdnl0D/AItWS0ru7PHUuX25O4y3dCKTXQohIrvjmTe9EtKm1wKrykEy06621cNbEpquueK5Tee6cFR4Slpv1Nd8VX/1s91ivUEvCQ2SnTKTWE8BcLU7GE8I7GR5pmNgQiNWeWV9LkMUOpy1Fch1BlvkoFEbyf7VJ6Zgkie/2TVyOUaAUjp9k+7w+ygXqbG90Fs5aUB5RK1SOEFrSclAp2om77JgE/AlAJgHRSqhCod/FGf90B2XsbdipTNu4/GwSz+ph6eh+62HszmA4fVebWd0+k9tSmYc0yOnmPJep6dcUL6nvY7ZUbAd02ujqPyssprl09PLc18lagEFhV6yGNp5bjzCwrh76DwKgxOHjLT69Fep3okPGQf1fgqLPptMvtav6REPbg/v6LMfqIbMBze+0nae+F0rA2o0RBlBfpdMZcMJ437azK64cveai54LWNOe/wDhSpU/d09zsYcfoti5pMGGADPyC5f2v1ZrGCkwy4j9lP3dRn1MrMd2uauq+558MevJ+6g1Vrbie5PqrDV6nRmsZHmZ3dtFBTjKgEWmV0yoM5iiivOEKUwkGJtyIColqWwGUycppQGYxmUcOTBkJh1C8rK7raThMqTSoHieyTXRnoefNSYhQ7nkfJFLojqTwP8AKC9k887h8kaFHYMeg+uUC4dmEcOwT5qpElMkqbU9R8Y6qTjA8UEMnJSCDWTko8KQamKD0QCHcGAigKvcGSAgUSgMJ6inTCHWqfvugfAtYD3THF87nPaWwPgc3ZB7wQ76LV9mrp9C4dTEkEhrtu7pw8TGOuRws6z03eWAvEPBIIkxt5B8cre06gylcM21A92wtcDtMjAbxwRxnpHill6PCXcrqNQrPaycOaR548QVgb3tO6mIB5Z/KR4dl016zdSmOiWkaa19OTyssco7bjtzdDXnUj1b/S+Y/tcFaq+2jSPjnHYg/Yq/rFqykxzngQO/Vec39wHE7WgNnsBK0kl+GOWVx9V0F/7aOcCKbI8SuWq1nPcXuMuKG4pEYVST4YZZZZe60rOnLQrLqazLauW+XVaQqhwwu7o5zKa+mWUMkCkUy6UJEqKYp0BJhUi9CCRKWwRKSSilTVmJPb80mDCnC8psi1N37fZFLRBPH74CEBJG79+aAiDA8jPoiTLh5T68D7qD8EjoZUrXuegj6qkiVm4DQoMZGUi4udA4RnBKmrFsnKkGqe1ItSNAhRU3BRAQZyqvLpVmocKtT7oKrTBkf2j5kKvc/q/tb9s/WVZb09PplVbl0kf8R+T+UQqlRqEECSGzJAg+BInrC6rRLOjh9P4iOpOWny6Fck1HoVnMO5ji13cGP+0ZY7isM/G8zb1ShUJZsI8k1xrNO0Y3eHOLp2taBmOcnAXK6D7Rue9lGsAdxhrx8OY/mHHqFp+2LGOoAudD2uGzu4nBA8In5Ln8bMpK7POXG2OV1/XH3L97zDRO1g4aPyfFZGwkbiCATAPj2Vr3LTTLj+oEfzNHptncT4xHiq76jiGtLpDRA7ATx48ldDit3d1DYovCkB3Ki45RCIotB+0z0QoUk5lcbLBppseDwU6zmPLchXqVQO457Lv6XWmXF4rPLHSRTpiE612Rkkk0pA6ikpJmqUsS0oxaM/XwQK2II5UmGcHgfU915UaHBnnjoPyfFDcehRHFAqFURVHzHcH5o7jtaB1/Kq0MuyrDMuygD0WQPuiEJNKRQECmKTlCVJmcmASTwgwLk4UGDgJ6/I81JgyEEM6M+QHzVJzpJPirNXAnzP4VRqBRGKYUAptKokKjsq7YgFw3uHBy81C0dp2Au+QVEfqVxh6+CVM11VDQWtM5MGI+GeVVp1Bwf8g+Y/KE55Jkp2hGiWXsxIGPOR6FAjlHs+Y6OBB+Ug+hQHdfNI0wE6ZOgzQi03lpDhyENO5EuqTTbctfiId26HyUXCFQBgghXHOldvS6lynKMppIKSgCk4rbZElKioo2H//Z',
                                                                                width: 42.0,
                                                                                height: 42.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -0.6,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            46.0,
                                                                        height:
                                                                            46.0,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(21.0),
                                                                              child: Image.network(
                                                                                'data:image/jpeg;base64,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',
                                                                                width: 42.0,
                                                                                height: 42.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            46.0,
                                                                        height:
                                                                            46.0,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(21.0),
                                                                              child: Image.network(
                                                                                'data:image/jpeg;base64,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',
                                                                                width: 42.0,
                                                                                height: 42.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  '200+ Professional Creators\nwith contents updated everyday ',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Roboto Condensed',
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.2,
                                                                        lineHeight:
                                                                            1.5,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 608.0,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Stack(
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.59,
                                                                      -0.99),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/Pattern-fill-189f3959b02b08c8fe30026dfcdf3e1e_(1).png',
                                                                width: 502.0,
                                                                height: 608.0,
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -0.52,
                                                                      0.64),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/webflow-icone-svg-150px.svg',
                                                                width: 48.0,
                                                                height: 48.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -0.43,
                                                                      -0.96),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/figma-icone-svg-150px.svg',
                                                                width: 36.0,
                                                                height: 36.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -0.15,
                                                                      0.91),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/notion-icon-svg-150px.svg',
                                                                width: 48.0,
                                                                height: 48.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -0.8,
                                                                      -0.4),
                                                              child: Container(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            -0.53,
                                                                            -0.51),
                                                                        child: Image
                                                                            .network(
                                                                          'https://www.gitbook.com/cdn-cgi/image/width=40,dpr=2,height=40,fit=contain,format=auto/https%3A%2F%2F1863580799-files.gitbook.io%2F~%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MhFNOxEwcl8ED58MUC_%252Ficon%252FkDnE0cMcK7kTGuzaH2xR%252Fff_logo_small.png%3Falt%3Dmedia%26token%3D9bb0798d-02dc-48ae-9c0e-25e6dfb97ccc',
                                                                          width:
                                                                              30.0,
                                                                          height:
                                                                              30.0,
                                                                          fit: BoxFit
                                                                              .scaleDown,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.57,
                                                                      0.82),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/airtable-icone-svg-150px.svg',
                                                                width: 36.0,
                                                                height: 36.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.74,
                                                                      -0.65),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/wordpress-icone-svg-150px.svg',
                                                                width: 48.0,
                                                                height: 48.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.36,
                                                                      -0.96),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/wix-icone-svg-150px.svg',
                                                                width: 36.0,
                                                                height: 36.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -0.42,
                                                                      -0.07),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/sketch-icone-svg-150px.svg',
                                                                width: 36.0,
                                                                height: 36.0,
                                                                fit: BoxFit
                                                                    .cover,
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
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 40.0, 0.0, 40.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                      child: Container(
                                                        height: 222.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color(0x48FFFFFF),
                                                              Color(0x13FFFFFF),
                                                              Color(0x19FFFFFF)
                                                            ],
                                                            stops: [
                                                              0.0,
                                                              1.0,
                                                              1.0
                                                            ],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1.0, 0.0),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1.0, 0),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      29.02,
                                                                      36.0,
                                                                      29.02,
                                                                      36.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            36.0),
                                                                child: Text(
                                                                  'Nocode tools available includes...',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'millik',
                                                                        fontSize:
                                                                            32.0,
                                                                        useGoogleFonts:
                                                                            false,
                                                                        lineHeight:
                                                                            1.2,
                                                                      ),
                                                                ),
                                                              ),
                                                              ClipRRect(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              72.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Color(0xFFF3F3F5),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(9.0, 9.0, 9.0, 9.0),
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                        child: Image.asset(
                                                                                          'assets/images/My_project_(2).png',
                                                                                          fit: BoxFit.cover,
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
                                                                      Container(
                                                                        height:
                                                                            74.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFFF3F3F5),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: SvgPicture.asset(
                                                                                  'assets/images/Frame_512826.svg',
                                                                                  height: 74.0,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        height:
                                                                            74.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFFF3F3F5),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 15.0, 10.0, 15.0),
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: SvgPicture.asset(
                                                                                  'assets/images/Frame_512827.svg',
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        height:
                                                                            74.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFFF3F3F5),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: SvgPicture.asset(
                                                                                  'assets/images/Frame_512819.svg',
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        height:
                                                                            74.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFFF3F3F5),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: SvgPicture.asset(
                                                                                  'assets/images/Frame_512825.svg',
                                                                                  fit: BoxFit.cover,
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
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                              child: Container(
                                                width: double.infinity,
                                                constraints: BoxConstraints(
                                                  maxHeight: 350.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color(0x47FFFFFF),
                                                      Color(0x13FFFFFF),
                                                      Color(0x19FAFAFB)
                                                    ],
                                                    stops: [0.0, 1.0, 1.0],
                                                    begin: AlignmentDirectional(
                                                        1.0, 0.0),
                                                    end: AlignmentDirectional(
                                                        -1.0, 0),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(30.0, 30.0,
                                                          30.0, 30.0),
                                                  child: ClipRRect(
                                                    child: Container(
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        20.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: 453.3,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Our Services',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'millik',
                                                                          fontSize:
                                                                              32.0,
                                                                          useGoogleFonts:
                                                                              false,
                                                                          lineHeight:
                                                                              1.25,
                                                                        ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            22.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'At Nocode Forest, we offer a wide range of services, including:\nReady-to-use MVPs: Our platform provides a vast collection of MVPs, ranging from mobile apps to web apps, built with nocode tools. You can easily browse and select the MVP that fits your needs, purchase it, and launch it on the go.',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto Condensed',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            fontSize:
                                                                                20.0,
                                                                            lineHeight:
                                                                                1.4,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          ClipRRect(
                                                            child: Container(
                                                              width: 900.0,
                                                              constraints:
                                                                  BoxConstraints(
                                                                maxWidth:
                                                                    1000.0,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child:
                                                                  SingleChildScrollView(
                                                                scrollDirection:
                                                                    Axis.horizontal,
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            287.0,
                                                                        height:
                                                                            240.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF0D0D0D),
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              32.0,
                                                                              0.0,
                                                                              0.0,
                                                                              40.17),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                                                                                    child: SvgPicture.asset(
                                                                                      'assets/images/Icon.svg',
                                                                                      width: 74.0,
                                                                                      height: 67.8,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                  Text(
                                                                                    'Finance Application\nTemplates',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Roboto Condensed',
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          fontSize: 24.0,
                                                                                          lineHeight: 1.25,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            287.0,
                                                                        height:
                                                                            240.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF0D0D0D),
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              32.0,
                                                                              0.0,
                                                                              0.0,
                                                                              45.73),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                                                                                    child: SvgPicture.asset(
                                                                                      'assets/images/Icon_(1).svg',
                                                                                      width: 74.0,
                                                                                      height: 54.3,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                  Text(
                                                                                    'Custom Code \nSupported designs',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Roboto Condensed',
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          fontSize: 24.0,
                                                                                          lineHeight: 1.25,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            287.0,
                                                                        height:
                                                                            240.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF0D0D0D),
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              32.0,
                                                                              0.0,
                                                                              0.0,
                                                                              49.75),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                                                                                    child: SvgPicture.asset(
                                                                                      'assets/images/Icon_(2).svg',
                                                                                      width: 74.0,
                                                                                      height: 46.3,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                  Text(
                                                                                    'Video Supported\nThemes',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Roboto Condensed',
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          fontSize: 24.0,
                                                                                          lineHeight: 1.25,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            287.0,
                                                                        height:
                                                                            240.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF0D0D0D),
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              32.0,
                                                                              0.0,
                                                                              0.0,
                                                                              49.75),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                                                                                    child: SvgPicture.asset(
                                                                                      'assets/images/Layer_3.svg',
                                                                                      width: 62.9,
                                                                                      height: 63.2,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                  Text(
                                                                                    'Editable Technically \nWritten Contents',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Roboto Condensed',
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          fontSize: 24.0,
                                                                                          lineHeight: 1.25,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            287.0,
                                                                        height:
                                                                            240.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF0D0D0D),
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              32.0,
                                                                              0.0,
                                                                              0.0,
                                                                              51.23),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                                                                                    child: SvgPicture.asset(
                                                                                      'assets/images/Icon_(3).svg',
                                                                                      width: 64.8,
                                                                                      height: 64.8,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                  Text(
                                                                                    'Apps with Social \nMedia Integration',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Roboto Condensed',
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          fontSize: 24.0,
                                                                                          lineHeight: 1.25,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width:
                                                                          287.0,
                                                                      height:
                                                                          240.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0xFF0D0D0D),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            32.0,
                                                                            0.0,
                                                                            0.0,
                                                                            51.38),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                                                                                  child: SvgPicture.asset(
                                                                                    'assets/images/Icon_(4).svg',
                                                                                    width: 40.2,
                                                                                    height: 59.6,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  'One click clone\nand edit Templates',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Roboto Condensed',
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        fontSize: 24.0,
                                                                                        lineHeight: 1.25,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ]
                                                                      .divide(SizedBox(
                                                                          width:
                                                                              3.0))
                                                                      .around(SizedBox(
                                                                          width:
                                                                              3.0)),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            if (FFAppState().NotNeedNow)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 60.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      flex: 2,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .stretch,
                                                        children: [
                                                          Text(
                                                            'Lots of Project Categories to Choose From',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'millik',
                                                                  fontSize:
                                                                      32.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                  lineHeight:
                                                                      1.2,
                                                                ),
                                                          ),
                                                          Container(
                                                            width:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          48.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            48.0),
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          1096.0,
                                                                      constraints:
                                                                          BoxConstraints(
                                                                        maxHeight:
                                                                            850.0,
                                                                      ),
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          GridView(
                                                                        padding:
                                                                            EdgeInsets.zero,
                                                                        gridDelegate:
                                                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                                          crossAxisCount:
                                                                              3,
                                                                          crossAxisSpacing:
                                                                              28.0,
                                                                          mainAxisSpacing:
                                                                              24.0,
                                                                          childAspectRatio:
                                                                              1.0,
                                                                        ),
                                                                        primary:
                                                                            false,
                                                                        shrinkWrap:
                                                                            true,
                                                                        scrollDirection:
                                                                            Axis.vertical,
                                                                        children: [
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(14.4),
                                                                            child:
                                                                                Container(
                                                                              width: 400.0,
                                                                              height: 524.0,
                                                                              decoration: BoxDecoration(
                                                                                color: Color(0xFF242424),
                                                                                borderRadius: BorderRadius.circular(14.4),
                                                                              ),
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(7.2),
                                                                                child: Container(
                                                                                  width: 400.0,
                                                                                  height: 524.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0x11FFFDFD),
                                                                                    borderRadius: BorderRadius.circular(7.2),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 32.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(7.2),
                                                                                            child: Image.network(
                                                                                              'https://buildfire.com/wp-content/uploads/2019/12/Ecommerce-mobile-app-scaled-1200x900.png',
                                                                                              height: 201.6,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                                                                                          child: Container(
                                                                                            width: 100.0,
                                                                                            decoration: BoxDecoration(),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                                                                                                  child: Text(
                                                                                                    'E-Commerce Apps & Widgets',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'millik',
                                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                                          fontSize: 21.6,
                                                                                                          useGoogleFonts: false,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 14.4, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    ' Build fully functional apps with Firebase integration, API support, animations, and more.',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Roboto Condensed',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 18.0,
                                                                                                          lineHeight: 1.4,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 7.0, 0.0, 0.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.8, 0.0),
                                                                                                child: Container(
                                                                                                  height: 30.8,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Color(0xFF3F3F3F),
                                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.77, 5.39, 10.77, 5.39),
                                                                                                        child: Text(
                                                                                                          '#web',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.8, 0.0),
                                                                                                child: Container(
                                                                                                  height: 30.8,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Color(0xFF3F3F3F),
                                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.77, 5.39, 10.77, 5.39),
                                                                                                        child: Text(
                                                                                                          '#mobile',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.8, 0.0),
                                                                                                child: Container(
                                                                                                  height: 30.8,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Color(0xFF3F3F3F),
                                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.77, 5.39, 10.77, 5.39),
                                                                                                        child: Text(
                                                                                                          '#app',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium,
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
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(14.4),
                                                                            child:
                                                                                Container(
                                                                              width: 400.0,
                                                                              height: 524.0,
                                                                              decoration: BoxDecoration(
                                                                                color: Color(0xFF242424),
                                                                                borderRadius: BorderRadius.circular(14.4),
                                                                              ),
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(7.2),
                                                                                child: Container(
                                                                                  width: 400.0,
                                                                                  height: 524.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0x11FFFDFD),
                                                                                    borderRadius: BorderRadius.circular(7.2),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 32.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(7.2),
                                                                                            child: Image.network(
                                                                                              'https://cdn.dribbble.com/users/4532032/screenshots/17409666/media/db78d107a92117cd578c1b971b42b9be.jpg?compress=1&resize=400x300',
                                                                                              height: 201.6,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                                                                                          child: Container(
                                                                                            width: 100.0,
                                                                                            decoration: BoxDecoration(),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                                                                                                  child: Text(
                                                                                                    'Finance Apps & Widgets',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'millik',
                                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                                          fontSize: 21.6,
                                                                                                          useGoogleFonts: false,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 14.4, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    ' Build fully functional apps with Firebase integration, API support, animations, and more.',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Roboto Condensed',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 18.0,
                                                                                                          lineHeight: 1.4,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 7.0, 0.0, 0.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.8, 0.0),
                                                                                                child: Container(
                                                                                                  height: 30.8,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Color(0xFF3F3F3F),
                                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.77, 5.39, 10.77, 5.39),
                                                                                                        child: Text(
                                                                                                          '#web',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.8, 0.0),
                                                                                                child: Container(
                                                                                                  height: 30.8,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Color(0xFF3F3F3F),
                                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.77, 5.39, 10.77, 5.39),
                                                                                                        child: Text(
                                                                                                          '#mobile',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.8, 0.0),
                                                                                                child: Container(
                                                                                                  height: 30.8,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Color(0xFF3F3F3F),
                                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.77, 5.39, 10.77, 5.39),
                                                                                                        child: Text(
                                                                                                          '#app',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium,
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
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(14.4),
                                                                            child:
                                                                                Container(
                                                                              width: 400.0,
                                                                              height: 524.0,
                                                                              decoration: BoxDecoration(
                                                                                color: Color(0xFF242424),
                                                                                borderRadius: BorderRadius.circular(14.4),
                                                                              ),
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(7.2),
                                                                                child: Container(
                                                                                  width: 400.0,
                                                                                  height: 524.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0x11FFFDFD),
                                                                                    borderRadius: BorderRadius.circular(7.2),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 32.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(7.2),
                                                                                            child: Image.network(
                                                                                              'https://blog.contus.com/wp-content/uploads/2023/01/secure-video-chat-app.webp',
                                                                                              height: 202.0,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                                                                                          child: Container(
                                                                                            width: 100.0,
                                                                                            decoration: BoxDecoration(),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                                                                                                  child: Text(
                                                                                                    'Social Apps & Widgets',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'millik',
                                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                                          fontSize: 21.6,
                                                                                                          useGoogleFonts: false,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 14.4, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    ' Build fully functional apps with Firebase integration, API support, animations, and more.',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Roboto Condensed',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 18.0,
                                                                                                          lineHeight: 1.4,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 7.0, 0.0, 0.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.8, 0.0),
                                                                                                child: Container(
                                                                                                  height: 30.8,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Color(0xFF3F3F3F),
                                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.77, 5.39, 10.77, 5.39),
                                                                                                        child: Text(
                                                                                                          '#web',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.8, 0.0),
                                                                                                child: Container(
                                                                                                  height: 30.8,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Color(0xFF3F3F3F),
                                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.77, 5.39, 10.77, 5.39),
                                                                                                        child: Text(
                                                                                                          '#mobile',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.8, 0.0),
                                                                                                child: Container(
                                                                                                  height: 30.8,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Color(0xFF3F3F3F),
                                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.77, 5.39, 10.77, 5.39),
                                                                                                        child: Text(
                                                                                                          '#app',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium,
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
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(14.4),
                                                                            child:
                                                                                Container(
                                                                              width: 400.0,
                                                                              height: 524.0,
                                                                              decoration: BoxDecoration(
                                                                                color: Color(0xFF242424),
                                                                                borderRadius: BorderRadius.circular(14.4),
                                                                              ),
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(7.2),
                                                                                child: Container(
                                                                                  width: 400.0,
                                                                                  height: 524.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0x11FFFDFD),
                                                                                    borderRadius: BorderRadius.circular(7.2),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 32.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(7.2),
                                                                                            child: Image.network(
                                                                                              'https://media1.popsugar-assets.com/files/thumbor/OlZAxCnEPXdm1yChGZDFd9ZOpTU/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2022/12/27/768/n/3019466/dd61539163ab2abdc21327.53088258_Press_Date_M/i/Best-Dating-Apps-Bumble.png',
                                                                                              height: 201.6,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                                                                                          child: Container(
                                                                                            width: 100.0,
                                                                                            decoration: BoxDecoration(),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                                                                                                  child: Text(
                                                                                                    'Dating Apps & Widgets',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'millik',
                                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                                          fontSize: 21.6,
                                                                                                          useGoogleFonts: false,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 14.4, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    ' Build fully functional apps with Firebase integration, API support, animations, and more.',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Roboto Condensed',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 18.0,
                                                                                                          lineHeight: 1.4,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 7.0, 0.0, 0.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.8, 0.0),
                                                                                                child: Container(
                                                                                                  height: 30.8,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Color(0xFF3F3F3F),
                                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.77, 5.39, 10.77, 5.39),
                                                                                                        child: Text(
                                                                                                          '#web',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.8, 0.0),
                                                                                                child: Container(
                                                                                                  height: 30.8,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Color(0xFF3F3F3F),
                                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.77, 5.39, 10.77, 5.39),
                                                                                                        child: Text(
                                                                                                          '#mobile',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.8, 0.0),
                                                                                                child: Container(
                                                                                                  height: 30.8,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Color(0xFF3F3F3F),
                                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.77, 5.39, 10.77, 5.39),
                                                                                                        child: Text(
                                                                                                          '#app',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium,
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
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(14.4),
                                                                            child:
                                                                                Container(
                                                                              width: 400.0,
                                                                              height: 524.0,
                                                                              decoration: BoxDecoration(
                                                                                color: Color(0xFF242424),
                                                                                borderRadius: BorderRadius.circular(14.4),
                                                                              ),
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(7.2),
                                                                                child: Container(
                                                                                  width: 400.0,
                                                                                  height: 524.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0x11FFFDFD),
                                                                                    borderRadius: BorderRadius.circular(7.2),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 32.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(7.2),
                                                                                            child: Image.network(
                                                                                              'https://airmore.com/wp-content/uploads/2018/11/best-education-app-181112.jpg',
                                                                                              height: 201.6,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                                                                                          child: Container(
                                                                                            width: 100.0,
                                                                                            decoration: BoxDecoration(),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                                                                                                  child: Text(
                                                                                                    'Education Apps & Widgets',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'millik',
                                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                                          fontSize: 21.6,
                                                                                                          useGoogleFonts: false,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 14.4, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    ' Build fully functional apps with Firebase integration, API support, animations, and more.',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Roboto Condensed',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 18.0,
                                                                                                          lineHeight: 1.4,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 7.0, 0.0, 0.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.8, 0.0),
                                                                                                child: Container(
                                                                                                  height: 30.8,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Color(0xFF3F3F3F),
                                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.77, 5.39, 10.77, 5.39),
                                                                                                        child: Text(
                                                                                                          '#web',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.8, 0.0),
                                                                                                child: Container(
                                                                                                  height: 30.8,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Color(0xFF3F3F3F),
                                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.77, 5.39, 10.77, 5.39),
                                                                                                        child: Text(
                                                                                                          '#mobile',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.8, 0.0),
                                                                                                child: Container(
                                                                                                  height: 30.8,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Color(0xFF3F3F3F),
                                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.77, 5.39, 10.77, 5.39),
                                                                                                        child: Text(
                                                                                                          '#app',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium,
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
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(14.4),
                                                                            child:
                                                                                Container(
                                                                              width: 400.0,
                                                                              height: 524.0,
                                                                              decoration: BoxDecoration(
                                                                                color: Color(0xFF242424),
                                                                                borderRadius: BorderRadius.circular(14.4),
                                                                              ),
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(7.2),
                                                                                child: Container(
                                                                                  width: 400.0,
                                                                                  height: 524.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0x11FFFDFD),
                                                                                    borderRadius: BorderRadius.circular(7.2),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 32.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(7.2),
                                                                                            child: Image.network(
                                                                                              'https://www.mobindustry.net/wp-content/uploads/real_estate_app_-_summary_4x.jpg',
                                                                                              height: 201.6,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                                                                                          child: Container(
                                                                                            width: 100.0,
                                                                                            decoration: BoxDecoration(),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                                                                                                  child: Text(
                                                                                                    'Real Estate Apps & Widgets',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'millik',
                                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                                          fontSize: 21.6,
                                                                                                          useGoogleFonts: false,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 14.4, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    ' Build fully functional apps with Firebase integration, API support, animations, and more.',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Roboto Condensed',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 18.0,
                                                                                                          lineHeight: 1.4,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 7.0, 0.0, 0.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.8, 0.0),
                                                                                                child: Container(
                                                                                                  height: 30.8,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Color(0xFF3F3F3F),
                                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.77, 5.39, 10.77, 5.39),
                                                                                                        child: Text(
                                                                                                          '#web',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.8, 0.0),
                                                                                                child: Container(
                                                                                                  height: 30.8,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Color(0xFF3F3F3F),
                                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.77, 5.39, 10.77, 5.39),
                                                                                                        child: Text(
                                                                                                          '#mobile',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.8, 0.0),
                                                                                                child: Container(
                                                                                                  height: 30.8,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Color(0xFF3F3F3F),
                                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.77, 5.39, 10.77, 5.39),
                                                                                                        child: Text(
                                                                                                          '#app',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium,
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
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (FFAppState()
                                                                      .NotNeedNow)
                                                                    FFButtonWidget(
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'Button pressed ...');
                                                                      },
                                                                      text:
                                                                          'See all categories ',
                                                                      options:
                                                                          FFButtonOptions(
                                                                        width:
                                                                            399.0,
                                                                        height:
                                                                            48.0,
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: 'Roboto Condensed',
                                                                              color: Colors.white,
                                                                            ),
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.transparent,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(4.0),
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
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 10.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: Container(
                                                      height: 180.0,
                                                      decoration: BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                          colors: [
                                                            Color(0x48FFFFFF),
                                                            Color(0x13FFFFFF),
                                                            Color(0x19FFFFFF)
                                                          ],
                                                          stops: [
                                                            0.0,
                                                            1.0,
                                                            1.0
                                                          ],
                                                          begin:
                                                              AlignmentDirectional(
                                                                  1.0, 0.0),
                                                          end:
                                                              AlignmentDirectional(
                                                                  -1.0, 0),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    20.0,
                                                                    0.0,
                                                                    20.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                              child: Text(
                                                                'Take Your Projects to the Next Level',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'millik',
                                                                      fontSize:
                                                                          36.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                      lineHeight:
                                                                          1.2,
                                                                    ),
                                                              ),
                                                            ),
                                                            Text(
                                                              'Find a template that works for you and get to work',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        28.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    lineHeight:
                                                                        1.2,
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
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 10.0),
                                                  child: ClipRRect(
                                                    child: Container(
                                                      width: 1000.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    8.0,
                                                                    0.0,
                                                                    8.0),
                                                        child:
                                                            FlutterFlowChoiceChips(
                                                          options: [
                                                            ChipData(
                                                                'All Categories'),
                                                            ChipData(
                                                                'E-Commerce'),
                                                            ChipData(
                                                                'Fintech App'),
                                                            ChipData(
                                                                'Rental & Real Estate'),
                                                            ChipData(
                                                                'Travel & Tourism'),
                                                            ChipData(
                                                                'Health & Fitness'),
                                                            ChipData(
                                                                'Sport & Gaming'),
                                                            ChipData(
                                                                'News & Blogs'),
                                                            ChipData(
                                                                'Education & Training'),
                                                            ChipData(
                                                                'Entertainment '),
                                                            ChipData(
                                                                'Portfolio'),
                                                            ChipData(
                                                                'Dating App'),
                                                            ChipData(
                                                                'Events App'),
                                                            ChipData(
                                                                'Social Media '),
                                                            ChipData(
                                                                'Food and Beverage'),
                                                            ChipData(
                                                                'Job & Recruitment'),
                                                            ChipData(
                                                                'Non-profit or charitable'),
                                                            ChipData(
                                                                'Online Gallery')
                                                          ],
                                                          onChanged: (val) =>
                                                              setState(() => _model
                                                                      .choiceChipsValue =
                                                                  val?.first),
                                                          selectedChipStyle:
                                                              ChipStyle(
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto Condensed',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          12.0,
                                                                      lineHeight:
                                                                          1.5,
                                                                    ),
                                                            iconColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            iconSize: 16.0,
                                                            labelPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        4.0,
                                                                        4.0,
                                                                        4.0,
                                                                        4.0),
                                                            elevation: 4.0,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.0),
                                                          ),
                                                          unselectedChipStyle:
                                                              ChipStyle(
                                                            backgroundColor:
                                                                Color(
                                                                    0xFF141313),
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto Condensed',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          12.0,
                                                                      lineHeight:
                                                                          1.5,
                                                                    ),
                                                            iconColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            iconSize: 16.0,
                                                            labelPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        4.0,
                                                                        4.0,
                                                                        4.0,
                                                                        4.0),
                                                            elevation: 4.0,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.0),
                                                          ),
                                                          chipSpacing: 0.0,
                                                          multiselect: false,
                                                          initialized: _model
                                                                  .choiceChipsValue !=
                                                              null,
                                                          alignment:
                                                              WrapAlignment
                                                                  .center,
                                                          controller: _model
                                                                  .choiceChipsValueController ??=
                                                              FormFieldController<
                                                                  List<String>>(
                                                            ['All Categories'],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                StreamBuilder<
                                                    List<ProductsRecord>>(
                                                  stream: queryProductsRecord(),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child: SpinKitPulse(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 50.0,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<ProductsRecord>
                                                        containerProductsRecordList =
                                                        snapshot.data!;
                                                    return Container(
                                                      width: double.infinity,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          if (containerProductsRecordList
                                                                  .length >
                                                              0)
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    final productinfo = containerProductsRecordList
                                                                        .map((e) =>
                                                                            e)
                                                                        .toList()
                                                                        .where((e) => functions.filterProductByName(
                                                                            _model.choiceChipsValue,
                                                                            e.category)!)
                                                                        .toList();
                                                                    return GridView
                                                                        .builder(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      gridDelegate:
                                                                          SliverGridDelegateWithFixedCrossAxisCount(
                                                                        crossAxisCount:
                                                                            4,
                                                                        crossAxisSpacing:
                                                                            30.0,
                                                                        mainAxisSpacing:
                                                                            48.0,
                                                                        childAspectRatio:
                                                                            1.0,
                                                                      ),
                                                                      shrinkWrap:
                                                                          true,
                                                                      scrollDirection:
                                                                          Axis.vertical,
                                                                      itemCount:
                                                                          productinfo
                                                                              .length,
                                                                      itemBuilder:
                                                                          (context,
                                                                              productinfoIndex) {
                                                                        final productinfoItem =
                                                                            productinfo[productinfoIndex];
                                                                        return Container(
                                                                          width:
                                                                              290.0,
                                                                          height:
                                                                              365.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                          ),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Expanded(
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    context.pushNamed(
                                                                                      'productDetailScreen',
                                                                                      queryParameters: {
                                                                                        'productRef': serializeParam(
                                                                                          productinfoItem.reference,
                                                                                          ParamType.DocumentReference,
                                                                                        ),
                                                                                        'userInfo': serializeParam(
                                                                                          currentUserReference,
                                                                                          ParamType.DocumentReference,
                                                                                        ),
                                                                                        'sellerInfo': serializeParam(
                                                                                          productinfoItem.sellerInfo,
                                                                                          ParamType.DocumentReference,
                                                                                        ),
                                                                                      }.withoutNulls,
                                                                                    );
                                                                                  },
                                                                                  child: Container(
                                                                                    width: double.infinity,
                                                                                    height: 100.0,
                                                                                    decoration: BoxDecoration(
                                                                                      gradient: LinearGradient(
                                                                                        colors: [
                                                                                          Color(0x47FFFFFF),
                                                                                          Color(0x13FFFFFF),
                                                                                          FlutterFlowTheme.of(context).primaryText
                                                                                        ],
                                                                                        stops: [
                                                                                          1.0,
                                                                                          1.0,
                                                                                          1.0
                                                                                        ],
                                                                                        begin: AlignmentDirectional(1.0, 0.0),
                                                                                        end: AlignmentDirectional(-1.0, 0),
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(16.0),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Stack(
                                                                                            alignment: AlignmentDirectional(1.0, 1.0),
                                                                                            children: [
                                                                                              Container(
                                                                                                width: double.infinity,
                                                                                                height: 161.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: Color(0x44242424),
                                                                                                  borderRadius: BorderRadius.circular(16.0),
                                                                                                ),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(16.0),
                                                                                                  child: Image.network(
                                                                                                    productinfoItem.image,
                                                                                                    height: 161.0,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Align(
                                                                                                alignment: AlignmentDirectional(1.0, 1.0),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                  child: ClipRRect(
                                                                                                    borderRadius: BorderRadius.circular(7.0),
                                                                                                    child: Container(
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: Color(0x200D0D0D),
                                                                                                        borderRadius: BorderRadius.circular(7.0),
                                                                                                      ),
                                                                                                      child: Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                                                                                                        child: Text(
                                                                                                          formatNumber(
                                                                                                            productinfoItem.price,
                                                                                                            formatType: FormatType.custom,
                                                                                                            currency: '\$',
                                                                                                            format: '',
                                                                                                            locale: '',
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'PT Serif',
                                                                                                                fontSize: 18.0,
                                                                                                                fontWeight: FontWeight.w300,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 4.0),
                                                                                            child: ClipRRect(
                                                                                              child: Container(
                                                                                                width: 258.0,
                                                                                                height: 28.0,
                                                                                                decoration: BoxDecoration(),
                                                                                                child: Text(
                                                                                                  productinfoItem.name,
                                                                                                  textAlign: TextAlign.start,
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'millik',
                                                                                                        fontSize: 20.0,
                                                                                                        useGoogleFonts: false,
                                                                                                        lineHeight: 1.4,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          ClipRRect(
                                                                                            child: Container(
                                                                                              decoration: BoxDecoration(),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    'by',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Roboto Condensed',
                                                                                                          color: FlutterFlowTheme.of(context).accent3,
                                                                                                          fontSize: 16.0,
                                                                                                          lineHeight: 1.5,
                                                                                                        ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                                                                                                    child: Text(
                                                                                                      productinfoItem.sellerName,
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Roboto Condensed',
                                                                                                            color: Color(0xFFD64C63),
                                                                                                            fontSize: 16.0,
                                                                                                            fontWeight: FontWeight.bold,
                                                                                                            lineHeight: 1.5,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Text(
                                                                                                    'in ',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Roboto Condensed',
                                                                                                          color: FlutterFlowTheme.of(context).accent3,
                                                                                                          fontSize: 16.0,
                                                                                                          lineHeight: 1.5,
                                                                                                        ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                                                                                                    child: Text(
                                                                                                      productinfoItem.category,
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Roboto Condensed',
                                                                                                            color: FlutterFlowTheme.of(context).accent3,
                                                                                                            fontWeight: FontWeight.bold,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          ClipRRect(
                                                                                            child: Container(
                                                                                              decoration: BoxDecoration(),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                                      child: ClipRRect(
                                                                                                        child: Container(
                                                                                                          constraints: BoxConstraints(
                                                                                                            maxWidth: 150.0,
                                                                                                          ),
                                                                                                          decoration: BoxDecoration(),
                                                                                                          child: Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
                                                                                                            child: AutoSizeText(
                                                                                                              '\$${productinfoItem.price.toString()}',
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'millik',
                                                                                                                    fontSize: 20.0,
                                                                                                                    useGoogleFonts: false,
                                                                                                                    lineHeight: 1.4,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                                      children: [
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 6.67, 0.0),
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              RatingBarIndicator(
                                                                                                                itemBuilder: (context, index) => Icon(
                                                                                                                  Icons.star_rounded,
                                                                                                                  color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                ),
                                                                                                                direction: Axis.horizontal,
                                                                                                                rating: productinfoItem.rating,
                                                                                                                unratedColor: FlutterFlowTheme.of(context).accent3,
                                                                                                                itemCount: 5,
                                                                                                                itemSize: 14.0,
                                                                                                              ),
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                                child: Text(
                                                                                                                  ' (${valueOrDefault<String>(
                                                                                                                    formatNumber(
                                                                                                                      productinfoItem.numOfReviews,
                                                                                                                      formatType: FormatType.compact,
                                                                                                                    ),
                                                                                                                    '0',
                                                                                                                  )})',
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: 'Roboto Condensed',
                                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                        fontSize: 12.0,
                                                                                                                        lineHeight: 1.25,
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
                                                                                            ),
                                                                                          ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            children: [
                                                                                              if (FFAppState().NotNeedNow)
                                                                                                Expanded(
                                                                                                  flex: 3,
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Icon(
                                                                                                              Icons.remove_red_eye_outlined,
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                              size: 16.0,
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(2.67, 0.0, 0.0, 0.0),
                                                                                                              child: Text(
                                                                                                                productinfoItem.numOfClicks.toString(),
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                      fontSize: 12.0,
                                                                                                                      lineHeight: 1.25,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                      Text(
                                                                                                        valueOrDefault<String>(
                                                                                                          '${productinfoItem.numOfSales.toString()} sales',
                                                                                                          '0 sales',
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Roboto Condensed',
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                              fontSize: 12.0,
                                                                                                              lineHeight: 1.25,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              Expanded(
                                                                                                flex: 5,
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                  children: [
                                                                                                    if (FFAppState().NotNeedNow)
                                                                                                      Expanded(
                                                                                                        flex: 2,
                                                                                                        child: Container(
                                                                                                          width: 43.0,
                                                                                                          height: 40.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            borderRadius: BorderRadius.circular(4.0),
                                                                                                            border: Border.all(
                                                                                                              color: Color(0x47FFFFFF),
                                                                                                              width: 1.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                          alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                          child: ToggleIcon(
                                                                                                            onPressed: () async {
                                                                                                              setState(
                                                                                                                () => FFAppState().userCart.contains(productinfoItem.reference) ? FFAppState().removeFromUserCart(productinfoItem.reference) : FFAppState().addToUserCart(productinfoItem.reference),
                                                                                                              );
                                                                                                              setState(() {
                                                                                                                FFAppState().addToUserCart(productinfoItem.reference);
                                                                                                              });
                                                                                                            },
                                                                                                            value: FFAppState().userCart.contains(productinfoItem.reference),
                                                                                                            onIcon: Icon(
                                                                                                              Icons.shopping_cart,
                                                                                                              color: Color(0xFF1FFF35),
                                                                                                              size: 24.0,
                                                                                                            ),
                                                                                                            offIcon: Icon(
                                                                                                              Icons.shopping_cart_outlined,
                                                                                                              color: FlutterFlowTheme.of(context).accent2,
                                                                                                              size: 24.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    Expanded(
                                                                                                      flex: 2,
                                                                                                      child: Container(
                                                                                                        width: 43.0,
                                                                                                        height: 40.0,
                                                                                                        decoration: BoxDecoration(
                                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                                          border: Border.all(
                                                                                                            color: Color(0x47FFFFFF),
                                                                                                            width: 1.0,
                                                                                                          ),
                                                                                                        ),
                                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                        child: Icon(
                                                                                                          Icons.shopping_cart_checkout_rounded,
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          size: 24.0,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    Expanded(
                                                                                                      flex: 6,
                                                                                                      child: Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                        child: InkWell(
                                                                                                          splashColor: Colors.transparent,
                                                                                                          focusColor: Colors.transparent,
                                                                                                          hoverColor: Colors.transparent,
                                                                                                          highlightColor: Colors.transparent,
                                                                                                          onTap: () async {
                                                                                                            await launchURL(productinfoItem.liveLink);
                                                                                                          },
                                                                                                          child: Container(
                                                                                                            width: 150.0,
                                                                                                            height: 40.0,
                                                                                                            decoration: BoxDecoration(
                                                                                                              border: Border.all(
                                                                                                                color: FlutterFlowTheme.of(context).accent3,
                                                                                                                width: 1.0,
                                                                                                              ),
                                                                                                            ),
                                                                                                            alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                            child: Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 20.0, 8.0),
                                                                                                              child: Text(
                                                                                                                'Live Preview',
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
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
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  },
                                                                ),
                                                                if (containerProductsRecordList
                                                                        .length >
                                                                    8)
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            48.0,
                                                                            0.0,
                                                                            86.0),
                                                                    child:
                                                                        FFButtonWidget(
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'Button pressed ...');
                                                                      },
                                                                      text:
                                                                          'Explore More Templates',
                                                                      options:
                                                                          FFButtonOptions(
                                                                        width:
                                                                            399.0,
                                                                        height:
                                                                            48.0,
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: 'Roboto Condensed',
                                                                              color: Colors.white,
                                                                              lineHeight: 1.5,
                                                                            ),
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.transparent,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            40.0,
                                                                            40.0,
                                                                            40.0,
                                                                            40.0),
                                                                    child:
                                                                        AutoSizeText(
                                                                      'No Template Currently Available',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            fontSize:
                                                                                36.0,
                                                                            fontStyle:
                                                                                FontStyle.italic,
                                                                            lineHeight:
                                                                                1.5,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          40.0),
                                                                  child:
                                                                      FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      if (loggedIn) {
                                                                        context
                                                                            .pushNamed(
                                                                          'landingPageSellers',
                                                                          extra: <String,
                                                                              dynamic>{
                                                                            kTransitionInfoKey:
                                                                                TransitionInfo(
                                                                              hasTransition: true,
                                                                              transitionType: PageTransitionType.topToBottom,
                                                                            ),
                                                                          },
                                                                        );
                                                                      } else {
                                                                        showModalBottomSheet(
                                                                          isScrollControlled:
                                                                              true,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          enableDrag:
                                                                              false,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
                                                                            return GestureDetector(
                                                                              onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: SigninModalWidget(),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            setState(() {}));
                                                                      }
                                                                    },
                                                                    text:
                                                                        'Click to Add a Template',
                                                                    options:
                                                                        FFButtonOptions(
                                                                      height:
                                                                          40.0,
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto Condensed',
                                                                            color:
                                                                                Colors.white,
                                                                            fontSize:
                                                                                16.0,
                                                                          ),
                                                                      elevation:
                                                                          3.0,
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Colors
                                                                            .transparent,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            wrapWithModel(
                              model: _model.footerComponentModel,
                              updateCallback: () => setState(() {}),
                              child: FooterComponentWidget(),
                            ),
                          ],
                        ),
                        if (FFAppState().showAccountPanel && loggedIn)
                          Align(
                            alignment: AlignmentDirectional(1.0, 1.0),
                            child: wrapWithModel(
                              model: _model.accountPanelModel,
                              updateCallback: () => setState(() {}),
                              child: AccountPanelWidget(),
                            ),
                          ),
                        if (FFAppState().showNotification && loggedIn)
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
                            height: MediaQuery.sizeOf(context).height * 0.98,
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
