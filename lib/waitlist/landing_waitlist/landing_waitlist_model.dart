import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/promo/mob_promo_form/mob_promo_form_widget.dart';
import '/promo/web_form_promo/web_form_promo_widget.dart';
import '/waitlist/components/signin_modal_waitlist/signin_modal_waitlist_widget.dart';
import '/waitlist/components/wait_list_form_business_owner_modal/wait_list_form_business_owner_modal_widget.dart';
import '/waitlist/components/wait_list_form_talent_modal/wait_list_form_talent_modal_widget.dart';
import '/waitlist/components/waitlist_menu/waitlist_menu_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LandingWaitlistModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for WebFormPromo component.
  late WebFormPromoModel webFormPromoModel;
  // Model for mobPromoForm component.
  late MobPromoFormModel mobPromoFormModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    webFormPromoModel = createModel(context, () => WebFormPromoModel());
    mobPromoFormModel = createModel(context, () => MobPromoFormModel());
  }

  void dispose() {
    webFormPromoModel.dispose();
    mobPromoFormModel.dispose();
  }

  /// Additional helper methods are added here.

}
