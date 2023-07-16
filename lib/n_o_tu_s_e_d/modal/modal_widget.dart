import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/sellers_related/components/upload_more_pix/upload_more_pix_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'modal_model.dart';
export 'modal_model.dart';

class ModalWidget extends StatefulWidget {
  const ModalWidget({Key? key}) : super(key: key);

  @override
  _ModalWidgetState createState() => _ModalWidgetState();
}

class _ModalWidgetState extends State<ModalWidget> {
  late ModalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalModel());

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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (_model.uploadedFileUrl == null ||
                    _model.uploadedFileUrl == '')
                  FFButtonWidget(
                    onPressed: () async {
                      if (_model.uploadedFileUrl == null ||
                          _model.uploadedFileUrl == '') {
                        if (!_model.isDataUploading) {
                          final selectedMedia = await selectMedia(
                            mediaSource: MediaSource.photoGallery,
                            multiImage: false,
                          );
                          if (selectedMedia != null &&
                              selectedMedia.every((m) =>
                                  validateFileFormat(m.storagePath, context))) {
                            setState(() => _model.isDataUploading = true);
                            var selectedUploadedFiles = <FFUploadedFile>[];

                            var downloadUrls = <String>[];
                            try {
                              selectedUploadedFiles = selectedMedia
                                  .map((m) => FFUploadedFile(
                                        name: m.storagePath.split('/').last,
                                        bytes: m.bytes,
                                        height: m.dimensions?.height,
                                        width: m.dimensions?.width,
                                        blurHash: m.blurHash,
                                      ))
                                  .toList();

                              downloadUrls = (await Future.wait(
                                selectedMedia.map(
                                  (m) async =>
                                      await uploadData(m.storagePath, m.bytes),
                                ),
                              ))
                                  .where((u) => u != null)
                                  .map((u) => u!)
                                  .toList();
                            } finally {
                              _model.isDataUploading = false;
                            }
                            if (selectedUploadedFiles.length ==
                                    selectedMedia.length &&
                                downloadUrls.length == selectedMedia.length) {
                              setState(() {
                                _model.uploadedLocalFile =
                                    selectedUploadedFiles.first;
                                _model.uploadedFileUrl = downloadUrls.first;
                              });
                            } else {
                              setState(() {});
                              return;
                            }
                          }
                        }
                      }
                    },
                    text: 'Click to Browse',
                    options: FFButtonOptions(
                      width: 450.0,
                      height: 80.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.white,
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily: 'Roboto Condensed',
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            fontSize: 16.0,
                            lineHeight: 1.5,
                          ),
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                if (FFAppState().NotNeedNow)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 17.0, 0.0, 52.0),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '* ',
                            style: TextStyle(
                              color: Color(0xFFFF0000),
                              fontSize: 14.0,
                              height: 1.4,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Recommended thumbnail size is 1080px by 674px',
                            style: TextStyle(
                              color: Color(0xFF858585),
                            ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ),
                if (_model.uploadedFileUrl != null &&
                    _model.uploadedFileUrl != '')
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (_model.uploadedFileUrl != null &&
                            _model.uploadedFileUrl != '')
                          Container(
                            height: 200.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.network(
                                _model.uploadedFileUrl,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                if (_model.uploadedFileUrl != null &&
                    _model.uploadedFileUrl != '')
                  Container(
                    width: double.infinity,
                    height: 80.0,
                    decoration: BoxDecoration(),
                    child: Visibility(
                      visible: _model.uploadedFileUrl != null &&
                          _model.uploadedFileUrl != '',
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    isDismissible: false,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return GestureDetector(
                                        onTap: () => FocusScope.of(context)
                                            .requestFocus(_model.unfocusNode),
                                        child: Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: UploadMorePixWidget(),
                                        ),
                                      );
                                    },
                                  ).then((value) =>
                                      setState(() => _model.morePix = value));

                                  setState(() {});
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.library_add,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 28.0,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Click to add more Images',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto Condensed',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 18.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (_model.uploadedFileUrl != null &&
                          _model.uploadedFileUrl != '')
                        Container(
                          height: 200.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: Visibility(
                            visible: _model.morePix!.length > 0,
                            child: Builder(
                              builder: (context) {
                                final individualNewPix = _model.morePix
                                        ?.map((e) => e)
                                        .toList()
                                        ?.toList() ??
                                    [];
                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children:
                                        List.generate(individualNewPix.length,
                                            (individualNewPixIndex) {
                                      final individualNewPixItem =
                                          individualNewPix[
                                              individualNewPixIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 4.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          child: Image.network(
                                            individualNewPixItem,
                                            fit: BoxFit.scaleDown,
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                    ],
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
