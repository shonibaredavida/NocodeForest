import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main_components/footer_component/footer_component_widget.dart';
import '/main_components/header/header_widget.dart';
import '/flutter_flow/request_manager.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BuyerCartScreenModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for footerComponent component.
  late FooterComponentModel footerComponentModel;

  /// Query cache managers for this widget.

  final _cartItemsManager = FutureRequestManager<ProductsRecord>();
  Future<ProductsRecord> cartItems({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ProductsRecord> Function() requestFn,
  }) =>
      _cartItemsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCartItemsCache() => _cartItemsManager.clear();
  void clearCartItemsCacheKey(String? uniqueKey) =>
      _cartItemsManager.clearRequest(uniqueKey);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    footerComponentModel = createModel(context, () => FooterComponentModel());
  }

  void dispose() {
    headerModel.dispose();
    textController?.dispose();
    footerComponentModel.dispose();

    /// Dispose query cache managers for this widget.

    clearCartItemsCache();
  }

  /// Additional helper methods are added here.

}
