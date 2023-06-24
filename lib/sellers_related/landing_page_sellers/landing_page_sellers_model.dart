import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main_components/footer_component/footer_component_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LandingPageSellersModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for footerComponent component.
  late FooterComponentModel footerComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    footerComponentModel = createModel(context, () => FooterComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    footerComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
