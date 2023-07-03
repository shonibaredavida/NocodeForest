import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddProductCopyNUModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ProductNameField widget.
  TextEditingController? productNameFieldController;
  String? Function(BuildContext, String?)? productNameFieldControllerValidator;
  // State field(s) for PriceField widget.
  TextEditingController? priceFieldController;
  String? Function(BuildContext, String?)? priceFieldControllerValidator;
  // State field(s) for DescriptionField widget.
  TextEditingController? descriptionFieldController;
  String? Function(BuildContext, String?)? descriptionFieldControllerValidator;
  // State field(s) for NocodeSoftwareField widget.
  TextEditingController? nocodeSoftwareFieldController;
  String? Function(BuildContext, String?)?
      nocodeSoftwareFieldControllerValidator;
  // State field(s) for CatergoryDropDown widget.
  String? catergoryDropDownValue;
  FormFieldController<String>? catergoryDropDownValueController;
  // State field(s) for LivePreviewField widget.
  TextEditingController? livePreviewFieldController;
  String? Function(BuildContext, String?)? livePreviewFieldControllerValidator;
  // State field(s) for CloneLinkField widget.
  TextEditingController? cloneLinkFieldController;
  String? Function(BuildContext, String?)? cloneLinkFieldControllerValidator;
  // State field(s) for HDSwitch widget.
  bool? hDSwitchValue;
  // State field(s) for WellDocSwitch widget.
  bool? wellDocSwitchValue;
  // State field(s) for ResponsiveSwitch widget.
  bool? responsiveSwitchValue;
  // State field(s) for UpdatesSwitch widget.
  bool? updatesSwitchValue;
  // State field(s) for CustomCodeSwitch widget.
  bool? customCodeSwitchValue;
  // State field(s) for OngoingSupportSwitch widget.
  bool? ongoingSupportSwitchValue;
  // State field(s) for TextField widget.
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for TagsField widget.
  TextEditingController? tagsFieldController;
  String? Function(BuildContext, String?)? tagsFieldControllerValidator;
  bool isDataUploading1 = false;
  List<FFUploadedFile> uploadedLocalFiles1 = [];
  List<String> uploadedFileUrls1 = [];

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ProductsRecord? newProductCreated;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    productNameFieldController?.dispose();
    priceFieldController?.dispose();
    descriptionFieldController?.dispose();
    nocodeSoftwareFieldController?.dispose();
    livePreviewFieldController?.dispose();
    cloneLinkFieldController?.dispose();
    textController7?.dispose();
    textController8?.dispose();
    tagsFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
