import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OnboardingSellersScreen2Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for usernme widget.
  TextEditingController? usernmeController;
  String? Function(BuildContext, String?)? usernmeControllerValidator;
  String? _usernmeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'required';
    }
    return null;
  }

  // State field(s) for FocusDropDown widget.
  String? focusDropDownValue;
  FormFieldController<String>? focusDropDownValueController;
  // State field(s) for NocodeDropDown widget.
  String? nocodeDropDownValue;
  FormFieldController<String>? nocodeDropDownValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    usernmeControllerValidator = _usernmeControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    usernmeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
