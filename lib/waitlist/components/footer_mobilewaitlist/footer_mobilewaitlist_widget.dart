import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'footer_mobilewaitlist_model.dart';
export 'footer_mobilewaitlist_model.dart';

class FooterMobilewaitlistWidget extends StatefulWidget {
  const FooterMobilewaitlistWidget({Key? key}) : super(key: key);

  @override
  _FooterMobilewaitlistWidgetState createState() =>
      _FooterMobilewaitlistWidgetState();
}

class _FooterMobilewaitlistWidgetState
    extends State<FooterMobilewaitlistWidget> {
  late FooterMobilewaitlistModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FooterMobilewaitlistModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 82.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 9.0),
            child: Text(
              '© 2023 Nocode Forest. All rights reserved.',
              style: FlutterFlowTheme.of(context).bodyMedium,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 9.0, 0.0),
                child: SvgPicture.asset(
                  'assets/images/Vector_(1).svg',
                  width: 21.0,
                  height: 21.0,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 9.0, 0.0),
                child: SvgPicture.asset(
                  'assets/images/Vector_(2).svg',
                  width: 21.0,
                  height: 21.0,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 9.0, 0.0),
                child: SvgPicture.asset(
                  'assets/images/Vector_(3).svg',
                  width: 21.0,
                  height: 21.0,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 9.0, 0.0),
                child: SvgPicture.asset(
                  'assets/images/Vector_(4).svg',
                  width: 21.0,
                  height: 21.0,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
