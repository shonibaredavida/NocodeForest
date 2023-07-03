import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/main_components/dialog_component/dialog_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'waiting_page_model.dart';
export 'waiting_page_model.dart';

class WaitingPageWidget extends StatefulWidget {
  const WaitingPageWidget({Key? key}) : super(key: key);

  @override
  _WaitingPageWidgetState createState() => _WaitingPageWidgetState();
}

class _WaitingPageWidgetState extends State<WaitingPageWidget> {
  late WaitingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WaitingPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (loggedIn) {
        if (valueOrDefault<bool>(currentUserDocument?.admin, false)) {
          context.goNamedAuth('adminOverview', context.mounted);
        } else {
          if (valueOrDefault(currentUserDocument?.status, '') !=
              'deactivated') {
            if (!valueOrDefault<bool>(
                currentUserDocument?.becomeASeller, false)) {
              context.goNamedAuth('landingPageBuyers', context.mounted);
            } else {
              context.goNamedAuth('dashboardSeller', context.mounted);
            }
          } else {
            GoRouter.of(context).prepareAuthEvent();
            await authManager.signOut();
            GoRouter.of(context).clearRedirectLocation();

            await showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              isDismissible: false,
              enableDrag: false,
              context: context,
              builder: (context) {
                return GestureDetector(
                  onTap: () =>
                      FocusScope.of(context).requestFocus(_model.unfocusNode),
                  child: Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: DialogComponentWidget(
                      subtitle:
                          'Your  account is deactivated. Kindly  send a mail to admin@nocode.com.',
                      deleteDialog: true,
                      successDialog: false,
                      requiresYesNo: false,
                      nextRoute: () async {},
                    ),
                  ),
                );
              },
            ).then((value) => setState(() {}));
          }
        }
      } else {
        return;
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Visibility(
            visible: responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 1512.0,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/Landing_Page_BACKGROUND_(1).png',
                      ).image,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
