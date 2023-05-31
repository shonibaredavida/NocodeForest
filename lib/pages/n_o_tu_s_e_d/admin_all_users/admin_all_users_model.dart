import '/admin/component/header_admin/header_admin_widget.dart';
import '/admin/component/sidebar_admin/sidebar_admin_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminAllUsersModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for headerAdmin component.
  late HeaderAdminModel headerAdminModel;
  // Model for sidebar_admin component.
  late SidebarAdminModel sidebarAdminModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerAdminModel = createModel(context, () => HeaderAdminModel());
    sidebarAdminModel = createModel(context, () => SidebarAdminModel());
  }

  void dispose() {
    headerAdminModel.dispose();
    sidebarAdminModel.dispose();
  }

  /// Additional helper methods are added here.

}
