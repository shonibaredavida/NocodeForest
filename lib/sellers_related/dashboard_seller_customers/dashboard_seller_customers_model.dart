import '/auth/base_auth_user_provider.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/main_components/account_panel/account_panel_widget.dart';
import '/main_components/header/header_widget.dart';
import '/main_components/notification_panel/notification_panel_widget.dart';
import '/sellers_related/componnents/sidebar_seller/sidebar_seller_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardSellerCustomersModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for header component.
  late HeaderModel headerModel;
  // Model for sidebar_seller component.
  late SidebarSellerModel sidebarSellerModel;
  // Model for notificationPanel component.
  late NotificationPanelModel notificationPanelModel;
  // Model for accountPanel component.
  late AccountPanelModel accountPanelModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    sidebarSellerModel = createModel(context, () => SidebarSellerModel());
    notificationPanelModel =
        createModel(context, () => NotificationPanelModel());
    accountPanelModel = createModel(context, () => AccountPanelModel());
  }

  void dispose() {
    unfocusNode.dispose();
    headerModel.dispose();
    sidebarSellerModel.dispose();
    notificationPanelModel.dispose();
    accountPanelModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
