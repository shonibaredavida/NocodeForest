import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/waitlist/components/footer_mobilewaitlist/footer_mobilewaitlist_widget.dart';
import '/waitlist/components/waitlist_menu/waitlist_menu_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BizMobileformWaitlistModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nameTextField widget.
  TextEditingController? nameTextFieldController;
  String? Function(BuildContext, String?)? nameTextFieldControllerValidator;
  // State field(s) for emailTextField widget.
  TextEditingController? emailTextFieldController;
  String? Function(BuildContext, String?)? emailTextFieldControllerValidator;
  // State field(s) for phoneTextField widget.
  TextEditingController? phoneTextFieldController;
  String? Function(BuildContext, String?)? phoneTextFieldControllerValidator;
  // State field(s) for LocationnDropDown widget.
  String? locationnDropDownValue;
  FormFieldController<String>? locationnDropDownValueController;
  // State field(s) for industryDropDown widget.
  String? industryDropDownValue;
  FormFieldController<String>? industryDropDownValueController;
  // State field(s) for websiteTypeDropDown widget.
  String? websiteTypeDropDownValue;
  FormFieldController<String>? websiteTypeDropDownValueController;
  // State field(s) for budgetDropDown widget.
  String? budgetDropDownValue;
  FormFieldController<String>? budgetDropDownValueController;
  // State field(s) for maintenanceDropDown widget.
  String? maintenanceDropDownValue;
  FormFieldController<String>? maintenanceDropDownValueController;
  // Model for footerMobilewaitlist component.
  late FooterMobilewaitlistModel footerMobilewaitlistModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    footerMobilewaitlistModel =
        createModel(context, () => FooterMobilewaitlistModel());
  }

  void dispose() {
    nameTextFieldController?.dispose();
    emailTextFieldController?.dispose();
    phoneTextFieldController?.dispose();
    footerMobilewaitlistModel.dispose();
  }

  /// Additional helper methods are added here.

}
