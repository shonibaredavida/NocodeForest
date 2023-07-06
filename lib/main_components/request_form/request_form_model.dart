import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/main_components/dialog_component/dialog_component_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class RequestFormModel extends FlutterFlowModel {
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

  // State field(s) for periodDropDown widget.
  String? periodDropDownValue;
  FormFieldController<String>? periodDropDownValueController;
  // State field(s) for emailTextField widget.
  TextEditingController? emailTextFieldController;
  String? Function(BuildContext, String?)? emailTextFieldControllerValidator;
  String? _emailTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'invalid mail';
    }
    return null;
  }

  // State field(s) for natureDropDown widget.
  String? natureDropDownValue;
  FormFieldController<String>? natureDropDownValueController;
  // State field(s) for budget widget.
  TextEditingController? budgetController;
  final budgetMask = MaskTextInputFormatter(mask: '\$');
  String? Function(BuildContext, String?)? budgetControllerValidator;
  String? _budgetControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for descField widget.
  TextEditingController? descFieldController;
  String? Function(BuildContext, String?)? descFieldControllerValidator;
  String? _descFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 20) {
      return 'description must be more than 20 characters';
    }
    if (val.length > 700) {
      return 'maximum character ';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TemplateRequestsRecord? requestSent;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    nameTextFieldControllerValidator = _nameTextFieldControllerValidator;
    phoneControllerValidator = _phoneControllerValidator;
    emailTextFieldControllerValidator = _emailTextFieldControllerValidator;
    budgetControllerValidator = _budgetControllerValidator;
    descFieldControllerValidator = _descFieldControllerValidator;
  }

  void dispose() {
    nameTextFieldController?.dispose();
    phoneController?.dispose();
    emailTextFieldController?.dispose();
    budgetController?.dispose();
    descFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
