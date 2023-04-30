import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main_components/create_account_modal/create_account_modal_widget.dart';
import '/main_components/sidebar_buyer/sidebar_buyer_widget.dart';
import '/main_components/signin_modal/signin_modal_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardBuyerLogoutModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar_buyer component.
  late SidebarBuyerModel sidebarBuyerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sidebarBuyerModel = createModel(context, () => SidebarBuyerModel());
  }

  void dispose() {
    sidebarBuyerModel.dispose();
  }

  /// Additional helper methods are added here.

}
