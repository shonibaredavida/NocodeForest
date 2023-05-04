import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/main_components/header/header_widget.dart';
import '/sellers_related/componnents/sidebar_seller/sidebar_seller_widget.dart';
import '/sellers_related/empty/empty_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/request_manager.dart';

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardSellerProductScreenModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // Model for sidebar_seller component.
  late SidebarSellerModel sidebarSellerModel;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

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
    sidebarSellerModel = createModel(context, () => SidebarSellerModel());
  }

  void dispose() {
    headerModel.dispose();
    sidebarSellerModel.dispose();
    textController?.dispose();

    /// Dispose query cache managers for this widget.

    clearProductUploadedCache();
  }

  /// Additional helper methods are added here.

}
