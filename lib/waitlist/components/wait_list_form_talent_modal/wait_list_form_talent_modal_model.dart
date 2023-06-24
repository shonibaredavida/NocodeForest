import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/main_components/success_page/success_page_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WaitListFormTalentModalModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NameTextField widget.
  TextEditingController? nameTextFieldController;
  String? Function(BuildContext, String?)? nameTextFieldControllerValidator;
  // State field(s) for phone widget.
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  // State field(s) for nocoderDropDown widget.
  String? nocoderDropDownValue;
  FormFieldController<String>? nocoderDropDownValueController;
  // State field(s) for bestWebLinkTextField widget.
  TextEditingController? bestWebLinkTextFieldController;
  String? Function(BuildContext, String?)?
      bestWebLinkTextFieldControllerValidator;
  // State field(s) for emailTextField widget.
  TextEditingController? emailTextFieldController;
  String? Function(BuildContext, String?)? emailTextFieldControllerValidator;
  // State field(s) for LocationDropDown widget.
  String? locationDropDownValue;
  FormFieldController<String>? locationDropDownValueController;
  // State field(s) for nocodertoolsDropDown widget.
  String? nocodertoolsDropDownValue;
  FormFieldController<String>? nocodertoolsDropDownValueController;
  // State field(s) for bestMobileLinkTextField widget.
  TextEditingController? bestMobileLinkTextFieldController;
  String? Function(BuildContext, String?)?
      bestMobileLinkTextFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nameTextFieldController?.dispose();
    phoneController?.dispose();
    bestWebLinkTextFieldController?.dispose();
    emailTextFieldController?.dispose();
    bestMobileLinkTextFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
