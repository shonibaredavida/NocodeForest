import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/main_components/account_panel/account_panel_widget.dart';
import '/main_components/dashboard_sidebar/dashboard_sidebar_widget.dart';
import '/main_components/dialog_component/dialog_component_widget.dart';
import '/main_components/header/header_widget.dart';
import '/main_components/notification_panel/notification_panel_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardBuyerProfileScreenModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for header component.
  late HeaderModel headerModel;
  // Model for dashboard_sidebar component.
  late DashboardSidebarModel dashboardSidebarModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for FNameTextField widget.
  TextEditingController? fNameTextFieldController;
  String? Function(BuildContext, String?)? fNameTextFieldControllerValidator;
  // State field(s) for EmailTextField widget.
  TextEditingController? emailTextFieldController;
  String? Function(BuildContext, String?)? emailTextFieldControllerValidator;
  // State field(s) for ProffessionTextField widget.
  TextEditingController? proffessionTextFieldController;
  String? Function(BuildContext, String?)?
      proffessionTextFieldControllerValidator;
  // State field(s) for LNameTextField widget.
  TextEditingController? lNameTextFieldController;
  String? Function(BuildContext, String?)? lNameTextFieldControllerValidator;
  // State field(s) for PhoneTextField widget.
  TextEditingController? phoneTextFieldController;
  String? Function(BuildContext, String?)? phoneTextFieldControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
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
    fNameTextFieldController?.dispose();
    emailTextFieldController?.dispose();
    proffessionTextFieldController?.dispose();
    lNameTextFieldController?.dispose();
    phoneTextFieldController?.dispose();
    accountPanelModel.dispose();
    notificationPanelModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
