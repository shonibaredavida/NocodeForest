import '/admin/component/product_card/product_card_widget.dart';
import '/admin/component/sidebar_admin/sidebar_admin_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main_components/create_account_modal/create_account_modal_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminProductsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sidebar_admin component.
  late SidebarAdminModel sidebarAdminModel;
  // State field(s) for AllProdTextField widget.
  TextEditingController? allProdTextFieldController;
  String? Function(BuildContext, String?)? allProdTextFieldControllerValidator;
  // State field(s) for ApprovedTextField widget.
  TextEditingController? approvedTextFieldController;
  String? Function(BuildContext, String?)? approvedTextFieldControllerValidator;
  // State field(s) for pendingTextField widget.
  TextEditingController? pendingTextFieldController;
  String? Function(BuildContext, String?)? pendingTextFieldControllerValidator;
  // State field(s) for disapprovedTextField widget.
  TextEditingController? disapprovedTextFieldController;
  String? Function(BuildContext, String?)?
      disapprovedTextFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sidebarAdminModel = createModel(context, () => SidebarAdminModel());
  }

  void dispose() {
    unfocusNode.dispose();
    sidebarAdminModel.dispose();
    allProdTextFieldController?.dispose();
    approvedTextFieldController?.dispose();
    pendingTextFieldController?.dispose();
    disapprovedTextFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
