import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/promo/web_promo_success/web_promo_success_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WebFormPromoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NameTextField widget.
  TextEditingController? nameTextFieldController;
  String? Function(BuildContext, String?)? nameTextFieldControllerValidator;
  String? _nameTextFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for phone widget.
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  String? _phoneControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for industryDropDown widget.
  String? industryDropDownValue;
  FormFieldController<String>? industryDropDownValueController;
  // State field(s) for emailTextField widget.
  TextEditingController? emailTextFieldController;
  String? Function(BuildContext, String?)? emailTextFieldControllerValidator;
  String? _emailTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Pls enter a valid Email Address';
    }
    return null;
  }

  // State field(s) for compTextField widget.
  TextEditingController? compTextFieldController;
  String? Function(BuildContext, String?)? compTextFieldControllerValidator;
  String? _compTextFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for offerDropDown widget.
  String? offerDropDownValue;
  FormFieldController<String>? offerDropDownValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    nameTextFieldControllerValidator = _nameTextFieldControllerValidator;
    phoneControllerValidator = _phoneControllerValidator;
    emailTextFieldControllerValidator = _emailTextFieldControllerValidator;
    compTextFieldControllerValidator = _compTextFieldControllerValidator;
  }

  void dispose() {
    nameTextFieldController?.dispose();
    phoneController?.dispose();
    emailTextFieldController?.dispose();
    compTextFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
