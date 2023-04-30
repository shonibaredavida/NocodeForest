import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'notification_panel_model.dart';
export 'notification_panel_model.dart';

class NotificationPanelWidget extends StatefulWidget {
  const NotificationPanelWidget({Key? key}) : super(key: key);

  @override
  _NotificationPanelWidgetState createState() =>
      _NotificationPanelWidgetState();
}

class _NotificationPanelWidgetState extends State<NotificationPanelWidget> {
  late NotificationPanelModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationPanelModel());

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
      width: 342.0,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(30.0, 40.0, 30.0, 40.0),
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
              child: Container(
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 3.0, 0.0, 0.0),
                                    child: SvgPicture.asset(
                                      'assets/images/Oval_3.svg',
                                      width: 9.0,
                                      height: 9.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 3.0, 0.0, 0.0),
                                    child: SvgPicture.asset(
                                      'assets/images/Oval_3_(2).svg',
                                      width: 9.0,
                                      height: 9.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 3.0, 0.0, 0.0),
                                    child: SvgPicture.asset(
                                      'assets/images/Oval_3_(1).svg',
                                      width: 9.0,
                                      height: 9.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                              ClipRRect(
                                child: Container(
                                  width: 165.0,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 9.0),
                                          child: Text(
                                            'Bamifemi',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Roboto Condensed',
                                                  color: Color(0xFF858585),
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold,
                                                  lineHeight: 1.25,
                                                ),
                                          ),
                                        ),
                                        ClipRRect(
                                          child: Container(
                                            width: 160.0,
                                            constraints: BoxConstraints(
                                              maxHeight: 80.0,
                                            ),
                                            decoration: BoxDecoration(),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: SelectionArea(
                                                      child: Text(
                                                    'Please, kindly do take a snap-shot of the card.',
                                                    textAlign: TextAlign.start,
                                                    maxLines: 4,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Roboto Condensed',
                                                          color:
                                                              Color(0xFF858585),
                                                          fontSize: 10.0,
                                                          lineHeight: 1.8,
                                                        ),
                                                  )),
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
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0x19FE5578),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 4.0, 10.0, 4.0),
                              child: Text(
                                '18 mins',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto Condensed',
                                      color: Color(0xFFFE5578),
                                      fontSize: 10.0,
                                      lineHeight: 1.4,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 1.0,
                      decoration: BoxDecoration(
                        color: Color(0x36BABDB9),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
              child: Text(
                'See More',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Roboto Condensed',
                      color: Color(0xFF009946),
                      fontSize: 16.0,
                      lineHeight: 0.5,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
