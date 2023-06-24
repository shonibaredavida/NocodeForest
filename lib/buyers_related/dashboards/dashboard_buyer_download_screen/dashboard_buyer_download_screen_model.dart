import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/buyers_related/component/sidebar_buyer/sidebar_buyer_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main_components/header/header_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardBuyerDownloadScreenModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
    unfocusNode.dispose();
    headerModel.dispose();
    sidebarBuyerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
