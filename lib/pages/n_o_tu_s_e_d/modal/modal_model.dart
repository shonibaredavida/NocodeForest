import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/main_components/forgot_password_modal/forgot_password_modal_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for forgot_password_modal component.
  late ForgotPasswordModalModel forgotPasswordModalModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    forgotPasswordModalModel =
        createModel(context, () => ForgotPasswordModalModel());
  }

  void dispose() {
    forgotPasswordModalModel.dispose();
  }

  /// Additional helper methods are added here.

}
