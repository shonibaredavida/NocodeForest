import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'testing2_model.dart';
export 'testing2_model.dart';

class Testing2Widget extends StatefulWidget {
  const Testing2Widget({Key? key}) : super(key: key);

  @override
  _Testing2WidgetState createState() => _Testing2WidgetState();
}

class _Testing2WidgetState extends State<Testing2Widget> {
  late Testing2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Testing2Model());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
    _model.textController3 ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.textController2?.text = 'flutterflow';
          _model.textController3?.text = 'bubble';
        }));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                      child: Container(
                        width: 1256.0,
                        height: 619.0,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 45.0, 0.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 608.0,
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 543.0,
                                              height: 215.0,
                                              decoration: BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  RichText(
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: 'Buy/Sell ',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            fontSize: 48.0,
                                                            height: 1.5,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: 'Ready-to-use',
                                                          style: TextStyle(),
                                                        ),
                                                        TextSpan(
                                                          text: '\nNocode',
                                                          style: TextStyle(),
                                                        ),
                                                        TextSpan(
                                                          text: ' Theme ',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            fontSize: 48.0,
                                                            height: 1.5,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text:
                                                              '\nFor Your Next Project',
                                                          style: TextStyle(),
                                                        )
                                                      ],
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'millik',
                                                                fontSize: 48.0,
                                                                useGoogleFonts:
                                                                    false,
                                                                lineHeight: 1.5,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 22.0, 0.0, 60.0),
                                              child: Container(
                                                width: 543.0,
                                                height: 86.0,
                                                decoration: BoxDecoration(),
                                                child: SelectionArea(
                                                    child: Text(
                                                  'Explore thousands of easy to customize nocode templates for web and mobile app projects, made by world-class nocode developers and designers.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            Color(0xFFC9C9C9),
                                                        fontSize: 24.0,
                                                        lineHeight: 1.24,
                                                      ),
                                                )),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 44.0),
                                              child: Container(
                                                width: 495.0,
                                                height: 48.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent4,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  11.0,
                                                                  0.0,
                                                                  4.0,
                                                                  0.0),
                                                      child: Icon(
                                                        Icons.search_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    4.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: TextFormField(
                                                          controller: _model
                                                              .textController1,
                                                          onChanged: (_) =>
                                                              EasyDebounce
                                                                  .debounce(
                                                            '_model.textController1',
                                                            Duration(
                                                                milliseconds:
                                                                    2000),
                                                            () =>
                                                                setState(() {}),
                                                          ),
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            hintText:
                                                                ' Seach for anything here ',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto Condensed',
                                                                      color: Color(
                                                                          0xFF95A1AC),
                                                                      fontSize:
                                                                          16.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      lineHeight:
                                                                          1.5,
                                                                    ),
                                                            enabledBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        4.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        4.0),
                                                              ),
                                                            ),
                                                            focusedBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        4.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        4.0),
                                                              ),
                                                            ),
                                                            errorBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        4.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        4.0),
                                                              ),
                                                            ),
                                                            focusedErrorBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        4.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        4.0),
                                                              ),
                                                            ),
                                                            contentPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        9.0,
                                                                        0.0),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Clash Display',
                                                                color: Color(
                                                                    0xFF95A1AC),
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                          validator: _model
                                                              .textController1Validator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  9.0,
                                                                  0.0),
                                                      child: Icon(
                                                        Icons
                                                            .chevron_right_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          13.0, 0.0, 10.0, 0.0),
                                                  child: Container(
                                                    width: 100.0,
                                                    height: 45.7,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Stack(
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  1.94, 0.0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        46.0),
                                                            child:
                                                                Image.network(
                                                              'data:image/jpeg;base64,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',
                                                              width: 46.0,
                                                              height: 46.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  1.0, 0.0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        46.0),
                                                            child:
                                                                Image.network(
                                                              'https://media.istockphoto.com/id/1437889338/photo/african-american-woman-using-smartphone-with-serious-expression-at-street.jpg?b=1&s=170667a&w=0&k=20&c=c-GDdXGMTFEHJ5O8fj17uKD9fBtcs39ylMymGCNzLqY=',
                                                              width: 46.0,
                                                              height: 46.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.1, 0.0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        46.0),
                                                            child:
                                                                Image.network(
                                                              'data:image/jpeg;base64,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',
                                                              width: 46.0,
                                                              height: 46.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -0.8, 0.0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        46.0),
                                                            child:
                                                                Image.network(
                                                              'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAHoAtwMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAABAgAEBQMGB//EADsQAAEEAQMCAwUECAYDAAAAAAEAAgMRBAUSITFRBhNBImFxgZEUMqHBFSNCUrHR4fAlQ1NUcpIHFiT/xAAaAQACAwEBAAAAAAAAAAAAAAAAAQIDBAUG/8QAJREAAgIBBAEEAwEAAAAAAAAAAAECEQMEEiExQRMyUWEFInEU/9oADAMBAAIRAxEAPwDYjFBdVzCcFdQ80MmCVEIGMjaUIpAOCmCQFM0oGMmCUIue1gt7g0e9BJDqSSxxN3SPawXVuPqvIeI/FzsaZ2PpxidtHMoO7ntXTv3Xl9S8Qalntc+R4c2qIHTgj0+SzT1EYujbi0WSaTfCPrD5Y468x7W2aFn1T0vkWneJJ3M++4ktLHdjff0Xt/C2vMmhjwZSXzNNA+73ojnjJ0GXRzhG1yelQTFKVoRjIogogAqIWogCKFS0EAK8WioUUxGWE4XMJwmVjprSgooAZEJbRQAwThc7RDkDs6grx3/kLVX4kcEEErtzr8xgPFcdV6tzuCF8h8S5k8mozQTTySiJ3AlFlvcWOqozuoUbNFHdkv4KrpnFnI2gm94JVWPLfHIA3aW9AQO/ouvlzzZ23G53AHcOKHal9B0Hwrp82ExuYyJ+RLZ7H4D+i5M8igejx4ZT+kfORPMXCVrA2Srdx96it3TdQeHsmb7DhXtXVr0uteA5IoHSYsxa5lllj8F8/Bkgmc3d+uDgHB3QKUcil0RyYXBc8pn1vw54k/Skn2WdrGytb13dar8V6K14fwNjCZ0kkksrZAQ8tFAH04P99F7bml1MLk48nndSoxyNRJaCClq4zhUtC0LQAyiVS0AQlRBRAGaEwSdE4UiqxwURwkTApBY6NpLUQFjWkc/hK5yryyUnQrDPM4MdsNOo0evK+L64DNqbnSucXOf7ZfwbPXjqvq2RkAXyvHeJYzm5LXsY6Ty6Lg403aDZ+JKp1GNuPBs0OZQyU/Jf8N6ezE1DyshgJ4HyXvsjRp2YIDckOx/MEhErQ4ba+6OnN0bXzbRMluTK57S+/Mdy483d/LrVe5e2bJ/9H2TMnjhLw12LkPyQxz7HRocNvfi/yXBnF72j2OKUXBPwaGsZeacfdH5hjijaXNjaC6Q1yBYK+Sa01sniDLNuAdPVNHNcDp0tfUodUydPyZWZT3TOADJDsbQsezy0kE/NZ2F4YhlyZM+ebdNNKZmuY0t22bHx9Fo0mGUmzF+R1EMMV9l7wdjxY+nbopRI2Si22U8Ds75rfJVfGjMMexxaa6ECuF1tdlKlR5eUtzshUQtRMgFRBBABUUQtAWS1EFEBZmBM0pAU4pSKhgU1pUbQAwKBKlpXFACPNKlkPNK28qjOHPIa1pJJoAeqaIsxs+Y2VjZMhexzbqxV0vW/+s5uUblcyAe/2j9B/NWsXwbjQDzHzGWcctMkfsA+9oPP1Q6fA4Qlds8cMOTFw8XIxW09rRujPHmC+oPevT1XqtL1rA1PDbGM1mNlMbUkMzA9rmju139hWtT/AFERjycVlu9lrmttj/x447rV0THxMPTnz40Qgid1fdWfe7qfhyuPr4Y4yW33HqfxOXNKD3e1GSzDMfluIDYRZjDGBreerqHS1pxPJAJVjAyY8qQ7ZS537p6Dv9OnflWooYJGFxDTzQI4W7TbPSTijk65ZHnak7KjTYTWrGRiBkZfG48DkFVFeYmq7GUJpC0LTIjWpaUKHqkA1oEoWhaAsNopSVEwMwFOCuQThOis6IhICmBQAyBQLkrnJgLIeFzwJhHqEY9SDSWWRUfOEeZA8+j6+qH0OD/ZHsPO2yMdu9lztrh2vgH68fNPM7YC4HkKlltdJgSFnL2MLme5w5H4hJqWa12IySM35zRt+aijQzIzpzqOogvBGLjna53d3r9On1VbWn5Odl48Gnksgg5IHRzv6D+K25MVn6Oc9sQDmt3EN4s/JWdPxImwsewABZMenl6zyzf8Ohk1kFp1gxqvk6aPD5Ue57WiVwt7gK3FcsOQtaGv6AvA/wC5/otBnskrH1J5x5cUjo+ZzT8xf5LYjntt9m3E7e3n1WYeOFbw3ktVOXiV496iuxT6RLUtKFLUioa0LQtS0gDaiW1NyADaiUqICzOBThcgnBUiA6NoAqWgCErk99JnO4VaVyZFnHIlq1j5M9O+BBVrMkPKxMmQ8p+CPLZ9N0yUPx2E9CFkYrH/AGw4ZZuixiWg9geW/h+ataLL/hkcl8bAV3wom+a6f9qTmiqkbmaUTBsDfRVmO+y5Jj/ynn2fcey7yTNhbG53QupVtULmN8xjd0bhfwUkRl8l8URws/WGt8uImrEzCPjyPzXHBzxOwhp9odR6qtrGWHR4gB+9ktH5/kiqYmzaxWgAWq+oM2T36OFrpC+gEM87o2O7GlHySlzApgo2ktTcpGex7QtLaKAsZS0toIGNaiS0UgM0JwuINLo0qRAcFElLaBKAFeVUndwrLyqeQeEyLZm5b+qxcp3VauV6rKljdI8MY0uLjQASm6VhiW6VI9v4ezWnRsKO/acDu+XC2YpOfT5L53pec/TshuFksI9omJ3vPUL3GJIHsbXJI4VUZqSuJ0p4p43U1Ro5TfPhEYPN3SrYmY7Hd9nyxcTuh7LgyaR2aDtdsYPYcOQ7ur7oBMKdE49jSuUeDLKX7GdquLJpszNRxPbiBuRo7d1T8Slnk4eTjkeU+VsjaXpIMd8UZZI64yPuO5K4wYeLhxiOIWwPLwH87Se3ZG5A4tkw3mWMGn3XJIHHy6j5hPlH9Q3/AJJgIwQRW4dlwzX8NHp1UH2WO1F2cFEtqWmZhlEoKiADaiCloGSlFLUSAymmxwmBK4QdF3UyA4KDnIJXJAB5VOc8Ky7oqk/RMizNyVmueYpWyAAlpuj0K0sjqVl5CU1caZLBJwkpI3MafRs5jsfUJA0yAbXMj27Xfl9Vu6Jo88E7XfpdmTjNFgGGnn4m6/BfPI+cll/vj+K29Cmlbl5bWyPA2HgOPdc6Gn9GacWd/Lrf9GNxnFXXZ9GvFhiLWNbG0OstjFevUV6+qLs+Lh2/d2LRwf5fBfM25WQJrE8vX98rhk5mV/uZun+oVt3HPUOT6VLqsbeor48LHzfE2DCSDMwvH7LTZ+gXisVzsh1TkyA+jzf8V6DCx4A3iGMfBgT7CkjSw9Wlz3ObAfLa31c2yVosLttPdvPeqVLHa1rjtaB8ArjFKjLkk26HUQKI6JlYbUtIikAbUtBKUDC51KLlJ0QTA//Z',
                                                              width: 46.0,
                                                              height: 46.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.7, 0.0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        46.0),
                                                            child:
                                                                Image.network(
                                                              'data:image/jpeg;base64,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',
                                                              width: 46.0,
                                                              height: 46.0,
                                                              fit: BoxFit.cover,
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
                                                          20.0, 0.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: 216.0,
                                                    height: 48.0,
                                                    decoration: BoxDecoration(),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          '200+ Professional Creators',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto Condensed',
                                                                fontSize: 16.0,
                                                                lineHeight: 1.5,
                                                              ),
                                                        ),
                                                        Text(
                                                          'with contents updated everyday ',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto Condensed',
                                                                color: Color(
                                                                    0x98FFFFFF),
                                                                fontSize: 16.0,
                                                                lineHeight: 1.5,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
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
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                              ))
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 608.0,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.fitHeight,
                                              image: Image.asset(
                                                'assets/images/Pattern-fill-189f3959b02b08c8fe30026dfcdf3e1e.png',
                                              ).image,
                                            ),
                                          ),
                                          child: Visibility(
                                            visible: responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.02, -0.49),
                                                  child: SvgPicture.asset(
                                                    'assets/images/Flutterflow_icon.svg',
                                                    width: 56.0,
                                                    height: 56.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.79, -0.9),
                                                  child: SvgPicture.asset(
                                                    'assets/images/figma-icone-svg-150px.svg',
                                                    width: 36.0,
                                                    height: 36.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.56, 0.86),
                                                  child: SvgPicture.asset(
                                                    'assets/images/airtable-icone-svg-150px.svg',
                                                    width: 36.0,
                                                    height: 36.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.1, -1.06),
                                                  child: SvgPicture.asset(
                                                    'assets/images/wix-icone-svg-150px.svg',
                                                    width: 36.0,
                                                    height: 36.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.63, -0.87),
                                                  child: SvgPicture.asset(
                                                    'assets/images/wordpress-icone-svg-150px.svg',
                                                    width: 48.0,
                                                    height: 48.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.03, 0.51),
                                                  child: SvgPicture.asset(
                                                    'assets/images/webflow-icone-svg-150px.svg',
                                                    width: 48.0,
                                                    height: 48.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.38, 0.88),
                                                  child: SvgPicture.asset(
                                                    'assets/images/notion-icon-svg-150px.svg',
                                                    width: 48.0,
                                                    height: 48.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.88, 0.03),
                                                  child: SvgPicture.asset(
                                                    'assets/images/sketch-icone-svg-150px.svg',
                                                    width: 36.0,
                                                    height: 36.0,
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
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              StreamBuilder<List<NocodeToolsInfoRecord>>(
                stream: queryNocodeToolsInfoRecord(),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: SpinKitFoldingCube(
                          color: FlutterFlowTheme.of(context).primary,
                          size: 50.0,
                        ),
                      ),
                    );
                  }
                  List<NocodeToolsInfoRecord>
                      containerNocodeToolsInfoRecordList = snapshot.data!;
                  return Container(
                    width: 500.0,
                    height: 700.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        setState(() {
                                          _model.simpleSearchResults1 =
                                              TextSearch(
                                            containerNocodeToolsInfoRecordList
                                                .map(
                                                  (record) => TextSearchItem(
                                                      record, [
                                                    record.title!,
                                                    record.desc!
                                                  ]),
                                                )
                                                .toList(),
                                          )
                                                  .search(_model
                                                      .textController2.text)
                                                  .map((r) => r.object)
                                                  .toList();
                                        });
                                        setState(() {
                                          FFAppState().searchactive = true;
                                        });
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
                                        child: FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .lineColor,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          buttonSize: 40.0,
                                          icon: Icon(
                                            Icons.close_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 26.0,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        setState(() {
                                          _model.simpleSearchResults2 =
                                              TextSearch(
                                            containerNocodeToolsInfoRecordList
                                                .map(
                                                  (record) => TextSearchItem(
                                                      record, [
                                                    record.title!,
                                                    record.desc!
                                                  ]),
                                                )
                                                .toList(),
                                          )
                                                  .search(_model
                                                      .textController3.text)
                                                  .map((r) => r.object)
                                                  .toList();
                                        });
                                        setState(() {
                                          FFAppState().searchactive2 = true;
                                          FFAppState().searchactive = false;
                                        });
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
                                        child: FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .lineColor,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          buttonSize: 40.0,
                                          icon: Icon(
                                            Icons.close_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 26.0,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 10.0, 5.0, 5.0),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFAppState().searchactive
                                                ? 'Search Results for${'${_model.textController2.text}'}'
                                                : 'All Categories',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Roboto Condensed',
                                                  fontSize: 14.0,
                                                ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                          child: Visibility(
                                            visible: !FFAppState().searchactive,
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final nosearch = _model
                                                      .simpleSearchResults1
                                                      .toList();
                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount: nosearch.length,
                                                    itemBuilder: (context,
                                                        nosearchIndex) {
                                                      final nosearchItem =
                                                          nosearch[
                                                              nosearchIndex];
                                                      return Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    10.0,
                                                                    10.0,
                                                                    10.0),
                                                        child: Container(
                                                          width: 100.0,
                                                          height: 100.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 4.0,
                                                                color: Color(
                                                                    0x33000000),
                                                                offset: Offset(
                                                                    0.0, 2.0),
                                                              )
                                                            ],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            5.0,
                                                                            5.0,
                                                                            5.0),
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              20.0),
                                                                      child: Image
                                                                          .network(
                                                                        nosearchItem
                                                                            .image!,
                                                                        width:
                                                                            80.0,
                                                                        height:
                                                                            80.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              5.0),
                                                                          child:
                                                                              Text(
                                                                            nosearchItem.title!,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Roboto Condensed',
                                                                                  fontSize: 18.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          nosearchItem
                                                                              .desc!
                                                                              .maybeHandleOverflow(maxChars: 30),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Roboto Condensed',
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.w300,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            20.0,
                                                                            0.0),
                                                                child: Text(
                                                                  nosearchItem
                                                                      .tags!
                                                                      .toList()
                                                                      .contains(
                                                                          nosearchIndex
                                                                              .toString())
                                                                      .toString()
                                                                      .maybeHandleOverflow(
                                                                          maxChars:
                                                                              5),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Roboto Condensed',
                                                                        color: Color(
                                                                            0xFF317205),
                                                                        fontSize:
                                                                            16.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                          child: Visibility(
                                            visible: FFAppState().searchactive,
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final nosearch = _model
                                                      .simpleSearchResults1
                                                      .toList();
                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount: nosearch.length,
                                                    itemBuilder: (context,
                                                        nosearchIndex) {
                                                      final nosearchItem =
                                                          nosearch[
                                                              nosearchIndex];
                                                      return Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    10.0,
                                                                    10.0,
                                                                    10.0),
                                                        child: Container(
                                                          width: 100.0,
                                                          height: 100.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 4.0,
                                                                color: Color(
                                                                    0x33000000),
                                                                offset: Offset(
                                                                    0.0, 2.0),
                                                              )
                                                            ],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            5.0,
                                                                            5.0,
                                                                            5.0),
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              20.0),
                                                                      child: Image
                                                                          .network(
                                                                        nosearchItem
                                                                            .image!,
                                                                        width:
                                                                            80.0,
                                                                        height:
                                                                            80.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              5.0),
                                                                          child:
                                                                              Text(
                                                                            nosearchItem.title!,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Roboto Condensed',
                                                                                  fontSize: 18.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          nosearchItem
                                                                              .desc!
                                                                              .maybeHandleOverflow(maxChars: 30),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Roboto Condensed',
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.w300,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            20.0,
                                                                            0.0),
                                                                child: Text(
                                                                  nosearchItem
                                                                      .tags!
                                                                      .toList()
                                                                      .contains(
                                                                          nosearchIndex
                                                                              .toString())
                                                                      .toString()
                                                                      .maybeHandleOverflow(
                                                                          maxChars:
                                                                              5),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Roboto Condensed',
                                                                        color: Color(
                                                                            0xFF317205),
                                                                        fontSize:
                                                                            16.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                TextFormField(
                                  controller: _model.textController2,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintStyle:
                                        FlutterFlowTheme.of(context).bodySmall,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  validator: _model.textController2Validator
                                      .asValidator(context),
                                ),
                                TextFormField(
                                  controller: _model.textController3,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintStyle:
                                        FlutterFlowTheme.of(context).bodySmall,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  validator: _model.textController3Validator
                                      .asValidator(context),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
