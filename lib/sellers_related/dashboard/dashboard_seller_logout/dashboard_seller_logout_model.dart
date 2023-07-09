import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main_components/account_panel/account_panel_widget.dart';
import '/main_components/dashboard_sidebar/dashboard_sidebar_widget.dart';
import '/main_components/header/header_widget.dart';
import '/main_components/notification_panel/notification_panel_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardSellerLogoutModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for header component.
  late HeaderModel headerModel;
  // Model for dashboard_sidebar component.
  late DashboardSidebarModel dashboardSidebarModel;
  // Model for accountPanel component.
  late AccountPanelModel accountPanelModel;
  // Model for notificationPanel component.
  late NotificationPanelModel notificationPanelModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    dashboardSidebarModel = createModel(context, () => DashboardSidebarModel());
    accountPanelModel = createModel(context, () => AccountPanelModel());
    notificationPanelModel =
        createModel(context, () => NotificationPanelModel());
  }

  void dispose() {
    unfocusNode.dispose();
    headerModel.dispose();
    dashboardSidebarModel.dispose();
    accountPanelModel.dispose();
    notificationPanelModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}