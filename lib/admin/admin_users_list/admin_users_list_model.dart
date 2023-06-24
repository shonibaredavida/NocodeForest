import '/admin/component/sidebar_admin/sidebar_admin_widget.dart';
import '/admin/component/user_profile_card/user_profile_card_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/main_components/create_account_modal/create_account_modal_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminUsersListModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sidebar_admin component.
  late SidebarAdminModel sidebarAdminModel;
  // State field(s) for AllUsersTextField widget.
  TextEditingController? allUsersTextFieldController;
  String? Function(BuildContext, String?)? allUsersTextFieldControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for buyerTextField widget.
  TextEditingController? buyerTextFieldController;
  String? Function(BuildContext, String?)? buyerTextFieldControllerValidator;
  // State field(s) for sellerTextField widget.
  TextEditingController? sellerTextFieldController;
  String? Function(BuildContext, String?)? sellerTextFieldControllerValidator;
  // State field(s) for deactivatedTextField widget.
  TextEditingController? deactivatedTextFieldController;
  String? Function(BuildContext, String?)?
      deactivatedTextFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sidebarAdminModel = createModel(context, () => SidebarAdminModel());
  }

  void dispose() {
    unfocusNode.dispose();
    sidebarAdminModel.dispose();
    allUsersTextFieldController?.dispose();
    buyerTextFieldController?.dispose();
    sellerTextFieldController?.dispose();
    deactivatedTextFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
