import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 87.0, 45.0, 0.0),
      child: Material(
        color: Colors.transparent,
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryText,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              width: 2.0,
            ),
          ),
          child: StreamBuilder<List<NotficationRecord>>(
            stream: queryNotficationRecord(
              queryBuilder: (notficationRecord) => notficationRecord
                  .where('user_id', arrayContains: currentUserUid)
                  .where('status', isEqualTo: 'unread'),
            ),
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
              List<NotficationRecord> containerNotficationRecordList =
                  snapshot.data!;
              return Container(
                width: 342.0,
                height: _model.expanded! ? 600.0 : 245.0,
                constraints: BoxConstraints(
                  maxHeight: 600.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).secondary,
                    width: 2.0,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(1.0, -1.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.updatePage(() {
                                  FFAppState().showNotification = false;
                                });
                              },
                              child: Icon(
                                Icons.cancel,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (containerNotficationRecordList.length > 0)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: Container(
                              width: 320.0,
                              height: valueOrDefault<double>(
                                _model.expanded! ? 500.0 : 150.0,
                                150.0,
                              ),
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 40.0, 20.0, 20.0),
                                child: Builder(
                                  builder: (context) {
                                    final idividualitems =
                                        containerNotficationRecordList
                                            .map((e) => e)
                                            .toList();
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      scrollDirection: Axis.vertical,
                                      itemCount: idividualitems.length,
                                      itemBuilder:
                                          (context, idividualitemsIndex) {
                                        final idividualitemsItem =
                                            idividualitems[idividualitemsIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 30.0),
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      flex: 3,
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            3.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/images/Oval_3.svg',
                                                                  width: 9.0,
                                                                  height: 9.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            3.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/images/Oval_3_(2).svg',
                                                                  width: 9.0,
                                                                  height: 9.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            3.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/images/Oval_3_(1).svg',
                                                                  width: 9.0,
                                                                  height: 9.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          ClipRRect(
                                                            child: Container(
                                                              width: 165.0,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          9.0),
                                                                      child:
                                                                          Text(
                                                                        'Bamifemi',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Roboto Condensed',
                                                                              color: Color(0xFF858585),
                                                                              fontSize: 12.0,
                                                                              fontWeight: FontWeight.bold,
                                                                              lineHeight: 1.25,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    ClipRRect(
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            160.0,
                                                                        constraints:
                                                                            BoxConstraints(
                                                                          maxHeight:
                                                                              80.0,
                                                                        ),
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Expanded(
                                                                              child: SelectionArea(
                                                                                  child: Text(
                                                                                'Please, kindly do take a snap-shot of the card.',
                                                                                textAlign: TextAlign.start,
                                                                                maxLines: 4,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto Condensed',
                                                                                      color: Color(0xFF858585),
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
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x19FE5578),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      4.0,
                                                                      10.0,
                                                                      4.0),
                                                          child: Text(
                                                            '18 mins',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Condensed',
                                                                  color: Color(
                                                                      0xFFFE5578),
                                                                  fontSize:
                                                                      10.0,
                                                                  lineHeight:
                                                                      1.4,
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
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        if (containerNotficationRecordList.length == 0)
                          Container(
                            width: 320.0,
                            height: valueOrDefault<double>(
                              _model.expanded! ? 500.0 : 150.0,
                              150.0,
                            ),
                            decoration: BoxDecoration(),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'You have no Unread Notification',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      fontSize: 20.0,
                                    ),
                              ),
                            ),
                          ),
                      ],
                    ),
                    if (containerNotficationRecordList.length > 1)
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (_model.expanded!) {
                            setState(() {
                              _model.expanded = false;
                            });
                          } else {
                            setState(() {
                              _model.expanded = true;
                            });
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 20.0, 20.0, 20.0),
                            child: Text(
                              _model.expanded! ? 'Show Less' : 'Show More',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto Condensed',
                                    color: Color(0xFF009946),
                                    fontSize: 16.0,
                                    lineHeight: 0.5,
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
        ),
      ),
    );
  }
}
