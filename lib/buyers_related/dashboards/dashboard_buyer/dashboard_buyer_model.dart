import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/buyers_related/sidebar_buyer/sidebar_buyer_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/main_components/header/header_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardBuyerModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // Model for sidebar_buyer component.
  late SidebarBuyerModel sidebarBuyerModel;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    sidebarBuyerModel = createModel(context, () => SidebarBuyerModel());
  }

  void dispose() {
    headerModel.dispose();
    sidebarBuyerModel.dispose();
    textController?.dispose();
  }

  /// Additional helper methods are added here.

}
