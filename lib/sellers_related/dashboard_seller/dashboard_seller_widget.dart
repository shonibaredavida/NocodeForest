import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/main_components/header/header_widget.dart';
import '/sellers_related/componnents/sidebar_seller/sidebar_seller_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dashboard_seller_model.dart';
export 'dashboard_seller_model.dart';

class DashboardSellerWidget extends StatefulWidget {
  const DashboardSellerWidget({Key? key}) : super(key: key);

  @override
  _DashboardSellerWidgetState createState() => _DashboardSellerWidgetState();
}

class _DashboardSellerWidgetState extends State<DashboardSellerWidget> {
  late DashboardSellerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardSellerModel());

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
    final chartPieChartColorsList1 = [Color(0xFFF2B827)];
    final chartPieChartColorsList2 = [Color(0xFF009946)];
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 1512.0,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFF3F3F5),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 123.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            32.0, 0.0, 32.0, 0.0),
                        child: wrapWithModel(
                          model: _model.headerModel,
                          updateCallback: () => setState(() {}),
                          child: HeaderWidget(),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 900.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFF3F3F5),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.sidebarSellerModel,
                              updateCallback: () => setState(() {}),
                              child: SidebarSellerWidget(
                                iconOneColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                bGColor1: FlutterFlowTheme.of(context).primary,
                                p1State: true,
                                p2State: false,
                                p4State: false,
                                p5State: false,
                                profileState: false,
                                logoutState: false,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 100.0,
                                height: double.infinity,
                                decoration: BoxDecoration(),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 1194.0,
                                            decoration: BoxDecoration(),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 20.0, 8.0, 8.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  StreamBuilder<
                                                      List<EarningsRecord>>(
                                                    stream: queryEarningsRecord(
                                                      queryBuilder: (earningsRecord) =>
                                                          earningsRecord.where(
                                                              'seller_id',
                                                              isEqualTo:
                                                                  currentUserUid),
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                SpinKitCubeGrid(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 50.0,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<EarningsRecord>
                                                          containerEarningsRecordList =
                                                          snapshot.data!;
                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final containerEarningsRecord =
                                                          containerEarningsRecordList
                                                                  .isNotEmpty
                                                              ? containerEarningsRecordList
                                                                  .first
                                                              : null;
                                                      return Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      16.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                flex: 2,
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          18.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        184.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              16.0),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          32.0,
                                                                          20.0,
                                                                          32.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                child: Text(
                                                                                  'Total Earnings',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Roboto Condensed',
                                                                                        color: Colors.black,
                                                                                        fontWeight: FontWeight.bold,
                                                                                        lineHeight: 1.15,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Text(
                                                                                valueOrDefault<String>(
                                                                                  containerEarningsRecord!.totalEarnings.toString(),
                                                                                  '0.0',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto Condensed',
                                                                                      color: Colors.black,
                                                                                      fontSize: 24.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                      lineHeight: 1.15,
                                                                                    ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 8.0, 8.0),
                                                                                child: Text(
                                                                                  'Holding Balance',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Roboto Condensed',
                                                                                        color: Color(0xFF676767),
                                                                                        fontWeight: FontWeight.w500,
                                                                                        lineHeight: 1.15,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                245.0,
                                                                            height:
                                                                                300.0,
                                                                            child:
                                                                                FlutterFlowPieChart(
                                                                              data: FFPieChartData(
                                                                                values: containerEarningsRecord!.specificArnings,
                                                                                colors: chartPieChartColorsList1,
                                                                                radius: [
                                                                                  30.0
                                                                                ],
                                                                                borderWidth: [
                                                                                  1.0
                                                                                ],
                                                                                borderColor: [
                                                                                  Color(0xFFE4E8EF)
                                                                                ],
                                                                              ),
                                                                              donutHoleRadius: 30.0,
                                                                              donutHoleColor: Colors.white,
                                                                              sectionLabelStyle: FlutterFlowTheme.of(context).headlineSmall,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                flex: 2,
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        184.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              16.0),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          32.0,
                                                                          20.0,
                                                                          32.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                child: Text(
                                                                                  'Total Number of Sales',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Roboto Condensed',
                                                                                        color: Colors.black,
                                                                                        fontWeight: FontWeight.bold,
                                                                                        lineHeight: 1.15,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Text(
                                                                                valueOrDefault<String>(
                                                                                  containerEarningsRecord!.specificArnings.length.toString(),
                                                                                  '0',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto Condensed',
                                                                                      color: Colors.black,
                                                                                      fontSize: 24.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                      lineHeight: 1.15,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                245.0,
                                                                            height:
                                                                                300.0,
                                                                            child:
                                                                                FlutterFlowPieChart(
                                                                              data: FFPieChartData(
                                                                                values: containerEarningsRecord!.specificArnings,
                                                                                colors: chartPieChartColorsList2,
                                                                                radius: [
                                                                                  30.0
                                                                                ],
                                                                              ),
                                                                              donutHoleRadius: 30.0,
                                                                              donutHoleColor: Colors.white,
                                                                              sectionLabelStyle: FlutterFlowTheme.of(context).headlineSmall,
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
                                                      );
                                                    },
                                                  ),
                                                  StreamBuilder<
                                                      List<OrdersRecord>>(
                                                    stream: queryOrdersRecord(),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                SpinKitCubeGrid(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 50.0,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<OrdersRecord>
                                                          containerOrdersRecordList =
                                                          snapshot.data!;
                                                      return Container(
                                                        width: double.infinity,
                                                        height: 265.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      16.0,
                                                                      16.0,
                                                                      16.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            16.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      'Sales Chart',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto Condensed',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            fontSize:
                                                                                23.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              12.0,
                                                                          height:
                                                                              12.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Sales',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Roboto Condensed',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  lineHeight: 1.5,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            370.0,
                                                                        height:
                                                                            230.0,
                                                                        child:
                                                                            FlutterFlowLineChart(
                                                                          data: [
                                                                            FFLineChartData(
                                                                              xData: functions.getLabelLineChart(),
                                                                              yData: functions.getAYearAgoDataForLineGraph(containerOrdersRecordList.where((e) => e.sellerIds.contains(currentUserUid)).toList())!,
                                                                              settings: LineChartBarData(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                barWidth: 2.0,
                                                                              ),
                                                                            )
                                                                          ],
                                                                          chartStylingInfo:
                                                                              ChartStylingInfo(
                                                                            enableTooltip:
                                                                                true,
                                                                            tooltipBackgroundColor:
                                                                                Colors.transparent,
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            showGrid:
                                                                                true,
                                                                            borderColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            borderWidth:
                                                                                1.0,
                                                                          ),
                                                                          axisBounds:
                                                                              AxisBounds(),
                                                                          xAxisLabelInfo:
                                                                              AxisLabelInfo(),
                                                                          yAxisLabelInfo:
                                                                              AxisLabelInfo(
                                                                            title:
                                                                                'Quantity',
                                                                            titleTextStyle:
                                                                                GoogleFonts.getFont(
                                                                              'Roboto Condensed',
                                                                              fontSize: 16.0,
                                                                            ),
                                                                            showLabels:
                                                                                true,
                                                                            labelTextStyle:
                                                                                GoogleFonts.getFont(
                                                                              'Roboto',
                                                                            ),
                                                                            labelInterval:
                                                                                10.0,
                                                                            labelFormatter:
                                                                                LabelFormatter(
                                                                              numberFormat: (val) => val.toString(),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Text(
                                                                    functions
                                                                        .getCurrentMonthInWord()!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto Condensed',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 15.0,
                                                                0.0, 0.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: double.infinity,
                                                        constraints:
                                                            BoxConstraints(
                                                          maxHeight: 400.0,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      20.0,
                                                                      16.0,
                                                                      20.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                width: 315.0,
                                                                height: 48.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFFFAFAFA),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0),
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.textController,
                                                                        onChanged:
                                                                            (_) =>
                                                                                EasyDebounce.debounce(
                                                                          '_model.textController',
                                                                          Duration(
                                                                              milliseconds: 400),
                                                                          () =>
                                                                              setState(() {}),
                                                                        ),
                                                                        autofocus:
                                                                            true,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          hintText:
                                                                              'Search Order or Author',
                                                                          hintStyle: FlutterFlowTheme.of(context)
                                                                              .bodySmall
                                                                              .override(
                                                                                fontFamily: 'Roboto Condensed',
                                                                                color: Color(0xFF99969E),
                                                                                fontSize: 16.0,
                                                                                lineHeight: 1.5,
                                                                              ),
                                                                          enabledBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          focusedBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          errorBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          prefixIcon:
                                                                              Icon(
                                                                            Icons.search_rounded,
                                                                            color:
                                                                                Color(0xFF99969E),
                                                                          ),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Roboto Condensed',
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                              fontSize: 16.0,
                                                                              lineHeight: 1.5,
                                                                            ),
                                                                        validator: _model
                                                                            .textControllerValidator
                                                                            .asValidator(context),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.35,
                                                                          0.0,
                                                                          14.35,
                                                                          0.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          setState(
                                                                              () {
                                                                            _model.textController?.clear();
                                                                          });
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .close_outlined,
                                                                          color:
                                                                              Color(0xFF99969E),
                                                                          size:
                                                                              19.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            22.5,
                                                                            0.0,
                                                                            22.5),
                                                                    child: Text(
                                                                      'Recent Orders',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto Condensed',
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize:
                                                                                16.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 77.0,
                                                                    height:
                                                                        32.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .black,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Colors
                                                                            .black,
                                                                      ),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceEvenly,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Filter',
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                        SvgPicture
                                                                            .asset(
                                                                          'assets/images/sort.svg',
                                                                          width:
                                                                              20.0,
                                                                          height:
                                                                              20.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Container(
                                                                width: 1169.0,
                                                                height: 32.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Expanded(
                                                                          flex:
                                                                              4,
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
                                                                                child: Text(
                                                                                  'No',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Roboto Condensed',
                                                                                        color: Color(0xFF99969E),
                                                                                        lineHeight: 1.15,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Text(
                                                                                'Order Id',
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Roboto Condensed',
                                                                                      color: Color(0xFF99969E),
                                                                                      lineHeight: 1.15,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          flex:
                                                                              3,
                                                                          child:
                                                                              Text(
                                                                            'Customer Name',
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Roboto Condensed',
                                                                                  color: Color(0xFF99969E),
                                                                                  lineHeight: 1.15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          flex:
                                                                              3,
                                                                          child:
                                                                              Text(
                                                                            'Country',
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Roboto Condensed',
                                                                                  color: Color(0xFF99969E),
                                                                                  lineHeight: 1.15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          flex:
                                                                              4,
                                                                          child:
                                                                              Text(
                                                                            'Order Date',
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Roboto Condensed',
                                                                                  color: Color(0xFF99969E),
                                                                                  lineHeight: 1.15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          flex:
                                                                              2,
                                                                          child:
                                                                              Text(
                                                                            'Status',
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Roboto Condensed',
                                                                                  color: Color(0xFF99969E),
                                                                                  lineHeight: 1.15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          flex:
                                                                              3,
                                                                          child:
                                                                              Text(
                                                                            'Amount',
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Roboto Condensed',
                                                                                  color: Color(0xFF99969E),
                                                                                  lineHeight: 1.15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          7.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            1.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF99969E),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 1000.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: StreamBuilder<
                                                                    List<
                                                                        OrdersRecord>>(
                                                                  stream:
                                                                      queryOrdersRecord(
                                                                    queryBuilder: (ordersRecord) => ordersRecord.where(
                                                                        'seller_id',
                                                                        isEqualTo:
                                                                            currentUserUid),
                                                                  ),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              SpinKitCubeGrid(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                50.0,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    List<OrdersRecord>
                                                                        listViewOrdersRecordList =
                                                                        snapshot
                                                                            .data!;
                                                                    return ListView
                                                                        .builder(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      scrollDirection:
                                                                          Axis.vertical,
                                                                      itemCount:
                                                                          listViewOrdersRecordList
                                                                              .length,
                                                                      itemBuilder:
                                                                          (context,
                                                                              listViewIndex) {
                                                                        final listViewOrdersRecord =
                                                                            listViewOrdersRecordList[listViewIndex];
                                                                        return StreamBuilder<
                                                                            List<ProductsRecord>>(
                                                                          stream:
                                                                              queryProductsRecord(
                                                                            queryBuilder: (productsRecord) =>
                                                                                productsRecord.where('product_id', isEqualTo: listViewOrdersRecord.productId),
                                                                            singleRecord:
                                                                                true,
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            List<ProductsRecord>
                                                                                containerProductsRecordList =
                                                                                snapshot.data!;
                                                                            // Return an empty Container when the item does not exist.
                                                                            if (snapshot.data!.isEmpty) {
                                                                              return Container();
                                                                            }
                                                                            final containerProductsRecord = containerProductsRecordList.isNotEmpty
                                                                                ? containerProductsRecordList.first
                                                                                : null;
                                                                            return Container(
                                                                              decoration: BoxDecoration(),
                                                                              child: Visibility(
                                                                                visible: functions.filterProductByName(_model.textController.text, containerProductsRecord!.name) ?? true,
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                  child: FutureBuilder<UsersRecord>(
                                                                                    future: UsersRecord.getDocumentOnce(listViewOrdersRecord.buyerInfo!),
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
                                                                                      final containerUsersRecord = snapshot.data!;
                                                                                      return Container(
                                                                                        width: 1169.0,
                                                                                        height: 32.0,
                                                                                        decoration: BoxDecoration(),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                              children: [
                                                                                                Expanded(
                                                                                                  flex: 4,
                                                                                                  child: Container(
                                                                                                    decoration: BoxDecoration(),
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                        children: [
                                                                                                          Expanded(
                                                                                                            flex: 2,
                                                                                                            child: Container(
                                                                                                              decoration: BoxDecoration(),
                                                                                                              child: Text(
                                                                                                                '1.',
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                      lineHeight: 1.15,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Expanded(
                                                                                                            flex: 6,
                                                                                                            child: Container(
                                                                                                              decoration: BoxDecoration(),
                                                                                                              child: Text(
                                                                                                                listViewOrdersRecord.orderId,
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                                      color: Colors.black,
                                                                                                                      lineHeight: 1.15,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                Expanded(
                                                                                                  flex: 3,
                                                                                                  child: Container(
                                                                                                    decoration: BoxDecoration(),
                                                                                                    child: Text(
                                                                                                      containerUsersRecord.displayName,
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Roboto Condensed',
                                                                                                            color: Colors.black,
                                                                                                            lineHeight: 1.15,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                Expanded(
                                                                                                  flex: 3,
                                                                                                  child: Container(
                                                                                                    decoration: BoxDecoration(),
                                                                                                    child: Text(
                                                                                                      containerUsersRecord.location,
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Roboto Condensed',
                                                                                                            color: Colors.black,
                                                                                                            lineHeight: 1.15,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                Expanded(
                                                                                                  flex: 4,
                                                                                                  child: Container(
                                                                                                    decoration: BoxDecoration(),
                                                                                                    child: Text(
                                                                                                      dateTimeFormat(
                                                                                                        'yMMMd',
                                                                                                        listViewOrdersRecord.orderDate!,
                                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Roboto Condensed',
                                                                                                            color: Colors.black,
                                                                                                            lineHeight: 1.15,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                Expanded(
                                                                                                  flex: 5,
                                                                                                  child: Container(
                                                                                                    decoration: BoxDecoration(),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Expanded(
                                                                                                          flex: 2,
                                                                                                          child: Container(
                                                                                                            decoration: BoxDecoration(),
                                                                                                            child: Column(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                if (listViewOrdersRecord.paymentStatus == false)
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Padding(
                                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 3.0),
                                                                                                                        child: Icon(
                                                                                                                          Icons.brightness_1_rounded,
                                                                                                                          color: Color(0xFFF0D411),
                                                                                                                          size: 13.0,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                      Text(
                                                                                                                        'Pending',
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Roboto Condensed',
                                                                                                                              color: FlutterFlowTheme.of(context).accent4,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                if (listViewOrdersRecord.paymentStatus == true)
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Padding(
                                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 3.0),
                                                                                                                        child: Icon(
                                                                                                                          Icons.brightness_1_rounded,
                                                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                                                          size: 13.0,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                      Text(
                                                                                                                        'Paid',
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Roboto Condensed',
                                                                                                                              color: FlutterFlowTheme.of(context).accent4,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Expanded(
                                                                                                          flex: 3,
                                                                                                          child: Container(
                                                                                                            decoration: BoxDecoration(),
                                                                                                            child: Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                                                                                                              child: Text(
                                                                                                                '\$${containerProductsRecord!.price.toString()}',
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                                      color: Colors.black,
                                                                                                                    ),
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
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 7.0, 0.0, 0.0),
                                                                                              child: Container(
                                                                                                width: double.infinity,
                                                                                                height: 1.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: Color(0xFF99969E),
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
                                                                          },
                                                                        );
                                                                      },
                                                                    );
                                                                  },
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
                                          ),
                                          if (FFAppState().NotNeedNow)
                                            Expanded(
                                              flex: 3,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 20.0,
                                                                16.0, 0.0),
                                                    child: StreamBuilder<
                                                        List<ProductsRecord>>(
                                                      stream:
                                                          queryProductsRecord(
                                                        queryBuilder:
                                                            (productsRecord) =>
                                                                productsRecord.where(
                                                                    'seller_id',
                                                                    isEqualTo:
                                                                        currentUserUid),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  SpinKitCubeGrid(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
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
                                                          height: 400.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFFAFAFA),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        16.0),
                                                            border: Border.all(
                                                              color: Color(
                                                                  0xFFD1D1D1),
                                                            ),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        20.0,
                                                                        16.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      'Top Products',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto Condensed',
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize:
                                                                                20.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        500.0,
                                                                    child: custom_widgets
                                                                        .PieChartWidget(
                                                                      width: double
                                                                          .infinity,
                                                                      height:
                                                                          500.0,
                                                                      displayLabels:
                                                                          false,
                                                                      products:
                                                                          containerProductsRecordList,
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
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 20.0,
                                                                16.0, 0.0),
                                                    child: Container(
                                                      height: 476.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFFAFAFA),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                        border: Border.all(
                                                          color:
                                                              Color(0xFFD1D1D1),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        20.0,
                                                                        16.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  'Top Products',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Roboto Condensed',
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            20.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: StreamBuilder<
                                                                  List<
                                                                      ProductsRecord>>(
                                                                stream:
                                                                    queryProductsRecord(
                                                                  queryBuilder: (productsRecord) => productsRecord
                                                                      .where(
                                                                          'sellerInfo',
                                                                          isEqualTo:
                                                                              currentUserReference)
                                                                      .orderBy(
                                                                          'num_of_sales',
                                                                          descending:
                                                                              true),
                                                                ),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            SpinKitCubeGrid(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              50.0,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<ProductsRecord>
                                                                      columnProductsRecordList =
                                                                      snapshot
                                                                          .data!;
                                                                  return SingleChildScrollView(
                                                                    primary:
                                                                        false,
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: List.generate(
                                                                          columnProductsRecordList
                                                                              .length,
                                                                          (columnIndex) {
                                                                        final columnProductsRecord =
                                                                            columnProductsRecordList[columnIndex];
                                                                        return Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              20.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(12.0),
                                                                                  child: Image.network(
                                                                                    columnProductsRecord.image,
                                                                                    width: 56.0,
                                                                                    height: 56.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  ClipRRect(
                                                                                    child: Container(
                                                                                      width: 230.0,
                                                                                      decoration: BoxDecoration(),
                                                                                      child: Text(
                                                                                        columnProductsRecord.name,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Roboto Condensed',
                                                                                              color: Colors.black,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Container(
                                                                                    width: 230.0,
                                                                                    decoration: BoxDecoration(),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Text(
                                                                                          columnProductsRecord.category.maybeHandleOverflow(maxChars: 25),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                color: Color(0xFF7C7C7C),
                                                                                                fontSize: 14.0,
                                                                                              ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                            children: [
                                                                                              Container(
                                                                                                width: 1.0,
                                                                                                height: 13.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: Color(0xFF7C7C7C),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                                child: Container(
                                                                                                  width: 56.0,
                                                                                                  height: 24.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Color(0xFFA9FFA7),
                                                                                                    borderRadius: BorderRadius.circular(4.0),
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                        child: FaIcon(
                                                                                                          FontAwesomeIcons.chartLine,
                                                                                                          color: Color(0xFF009946),
                                                                                                          size: 16.0,
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                        child: Text(
                                                                                                          columnProductsRecord.numOfSales.toString(),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                                color: Color(0xFF009946),
                                                                                                                fontSize: 12.0,
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
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        );
                                                                      }),
                                                                    ),
                                                                  );
                                                                },
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
            ],
          ),
        ),
      ),
    );
  }
}
