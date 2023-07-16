import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/main_components/account_panel/account_panel_widget.dart';
import '/main_components/dashboard_sidebar/dashboard_sidebar_widget.dart';
import '/main_components/header/header_widget.dart';
import '/main_components/notification_panel/notification_panel_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/request_manager.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardSellerProductScreenModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for header component.
  late HeaderModel headerModel;
  // Model for dashboard_sidebar component.
  late DashboardSidebarModel dashboardSidebarModel;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for accountPanel component.
  late AccountPanelModel accountPanelModel;
  // Model for notificationPanel component.
  late NotificationPanelModel notificationPanelModel;

  /// Query cache managers for this widget.

  final _productUploadedManager = StreamRequestManager<List<ProductsRecord>>();
  Stream<List<ProductsRecord>> productUploaded({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<ProductsRecord>> Function() requestFn,
  }) =>
      _productUploadedManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearProductUploadedCache() => _productUploadedManager.clear();
  void clearProductUploadedCacheKey(String? uniqueKey) =>
      _productUploadedManager.clearRequest(uniqueKey);

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
    textController?.dispose();
    accountPanelModel.dispose();
    notificationPanelModel.dispose();

    /// Dispose query cache managers for this widget.

    clearProductUploadedCache();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
