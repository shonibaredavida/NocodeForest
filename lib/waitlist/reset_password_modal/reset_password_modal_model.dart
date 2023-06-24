import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ResetPasswordModalModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for username widget.
  TextEditingController? usernameController;
  late bool usernameVisibility;
  String? Function(BuildContext, String?)? usernameControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    usernameVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    passwordController?.dispose();
    usernameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
