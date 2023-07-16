import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChangePasswordModalNUModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for oldPassword widget.
  TextEditingController? oldPasswordController;
  late bool oldPasswordVisibility;
  String? Function(BuildContext, String?)? oldPasswordControllerValidator;
  // State field(s) for newPassword widget.
  TextEditingController? newPasswordController;
  late bool newPasswordVisibility;
  String? Function(BuildContext, String?)? newPasswordControllerValidator;
  // State field(s) for cNewPassword widget.
  TextEditingController? cNewPasswordController;
  late bool cNewPasswordVisibility;
  String? Function(BuildContext, String?)? cNewPasswordControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    oldPasswordVisibility = false;
    newPasswordVisibility = false;
    cNewPasswordVisibility = false;
  }

  void dispose() {
    oldPasswordController?.dispose();
    newPasswordController?.dispose();
    cNewPasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
