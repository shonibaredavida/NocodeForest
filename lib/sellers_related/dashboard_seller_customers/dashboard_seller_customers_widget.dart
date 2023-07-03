import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/main_components/header/header_widget.dart';
import '/sellers_related/componnents/sidebar_seller/sidebar_seller_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dashboard_seller_customers_model.dart';
export 'dashboard_seller_customers_model.dart';

class DashboardSellerCustomersWidget extends StatefulWidget {
  const DashboardSellerCustomersWidget({Key? key}) : super(key: key);

  @override
  _DashboardSellerCustomersWidgetState createState() =>
      _DashboardSellerCustomersWidgetState();
}

class _DashboardSellerCustomersWidgetState
    extends State<DashboardSellerCustomersWidget> {
  late DashboardSellerCustomersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardSellerCustomersModel());

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
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 1512.0,
                    height: 123.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF0D0D0D),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
                      child: wrapWithModel(
                        model: _model.headerModel,
                        updateCallback: () => setState(() {}),
                        child: HeaderWidget(
                          dashboard: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 1512.0,
                      height: 900.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF3F3F5),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          wrapWithModel(
                            model: _model.sidebarSellerModel,
                            updateCallback: () => setState(() {}),
                            child: SidebarSellerWidget(
                              iconSixColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              bGColor6: FlutterFlowTheme.of(context).primary,
                              p1State: false,
                              p2State: false,
                              p4State: false,
                              p5State: false,
                              profileState: false,
                              logoutState: false,
                              p6State: true,
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
    );
  }
}
