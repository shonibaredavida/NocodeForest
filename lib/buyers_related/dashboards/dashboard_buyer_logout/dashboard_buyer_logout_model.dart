import '/auth/firebase_auth/auth_util.dart';
import '/buyers_related/sidebar_buyer/sidebar_buyer_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main_components/header/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardBuyerLogoutModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // Model for sidebar_buyer component.
  late SidebarBuyerModel sidebarBuyerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    sidebarBuyerModel = createModel(context, () => SidebarBuyerModel());
  }

  void dispose() {
    headerModel.dispose();
    sidebarBuyerModel.dispose();
  }

  /// Additional helper methods are added here.

}
