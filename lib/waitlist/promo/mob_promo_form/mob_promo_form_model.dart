import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/waitlist/promo/mobilepromo_success2/mobilepromo_success2_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MobPromoFormModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nameTextField widget.
  TextEditingController? nameTextFieldController;
  String? Function(BuildContext, String?)? nameTextFieldControllerValidator;
  String? _nameTextFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for emailTextField widget.
  TextEditingController? emailTextFieldController;
  String? Function(BuildContext, String?)? emailTextFieldControllerValidator;
  String? _emailTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for phoneTextField widget.
  TextEditingController? phoneTextFieldController;
  String? Function(BuildContext, String?)? phoneTextFieldControllerValidator;
  String? _phoneTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for companyNameTextField widget.
  TextEditingController? companyNameTextFieldController;
  String? Function(BuildContext, String?)?
      companyNameTextFieldControllerValidator;
  String? _companyNameTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for industryDropDown widget.
  String? industryDropDownValue;
  FormFieldController<String>? industryDropDownValueController;
  // State field(s) for offerDropDown widget.
  String? offerDropDownValue;
  FormFieldController<String>? offerDropDownValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    nameTextFieldControllerValidator = _nameTextFieldControllerValidator;
    emailTextFieldControllerValidator = _emailTextFieldControllerValidator;
    phoneTextFieldControllerValidator = _phoneTextFieldControllerValidator;
    companyNameTextFieldControllerValidator =
        _companyNameTextFieldControllerValidator;
  }

  void dispose() {
    nameTextFieldController?.dispose();
    emailTextFieldController?.dispose();
    phoneTextFieldController?.dispose();
    companyNameTextFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
