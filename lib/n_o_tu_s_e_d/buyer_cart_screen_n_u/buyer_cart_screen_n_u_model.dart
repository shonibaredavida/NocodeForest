import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main_components/footer_component/footer_component_widget.dart';
import '/main_components/header/header_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BuyerCartScreenNUModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for header component.
  late HeaderModel headerModel;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  OrdersRecord? orderSent;
  // Model for footerComponent component.
  late FooterComponentModel footerComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    footerComponentModel = createModel(context, () => FooterComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    headerModel.dispose();
    textController?.dispose();
    footerComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
