import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/main_components/header/header_widget.dart';
import '/sellers_related/componnents/sidebar_seller/sidebar_seller_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardSellerAddProductScreenModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading1 = false;
  List<FFUploadedFile> uploadedLocalFiles1 = [];
  List<String> uploadedFileUrls1 = [];

  // Model for header component.
  late HeaderModel headerModel;
  // Model for sidebar_seller component.
  late SidebarSellerModel sidebarSellerModel;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for ProductNameField widget.
  TextEditingController? productNameFieldController;
  String? Function(BuildContext, String?)? productNameFieldControllerValidator;
  String? _productNameFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 25) {
      return 'Maximum 25 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for PriceField widget.
  TextEditingController? priceFieldController;
  String? Function(BuildContext, String?)? priceFieldControllerValidator;
  String? _priceFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DescriptionField widget.
  TextEditingController? descriptionFieldController;
  String? Function(BuildContext, String?)? descriptionFieldControllerValidator;
  String? _descriptionFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for NocodeSoftwareField widget.
  TextEditingController? nocodeSoftwareFieldController;
  String? Function(BuildContext, String?)?
      nocodeSoftwareFieldControllerValidator;
  String? _nocodeSoftwareFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for CatergoryDropDown widget.
  String? catergoryDropDownValue;
  FormFieldController<String>? catergoryDropDownValueController;
  // State field(s) for LivePreviewField widget.
  TextEditingController? livePreviewFieldController;
  String? Function(BuildContext, String?)? livePreviewFieldControllerValidator;
  // State field(s) for CloneLinkField widget.
  TextEditingController? cloneLinkFieldController;
  String? Function(BuildContext, String?)? cloneLinkFieldControllerValidator;
  String? _cloneLinkFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for HDSwitch widget.
  bool? hDSwitchValue;
  // State field(s) for WellDocSwitch widget.
  bool? wellDocSwitchValue;
  // State field(s) for ResponsiveSwitch widget.
  bool? responsiveSwitchValue;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // State field(s) for Switch widget.
  bool? switchValue3;
  // State field(s) for TextField widget.
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for TagsField widget.
  TextEditingController? tagsFieldController;
  String? Function(BuildContext, String?)? tagsFieldControllerValidator;
  bool isDataUploading3 = false;
  List<FFUploadedFile> uploadedLocalFiles3 = [];
  List<String> uploadedFileUrls3 = [];

  bool isDataUploading4 = false;
  FFUploadedFile uploadedLocalFile4 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl4 = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    sidebarSellerModel = createModel(context, () => SidebarSellerModel());
    productNameFieldControllerValidator = _productNameFieldControllerValidator;
    priceFieldControllerValidator = _priceFieldControllerValidator;
    descriptionFieldControllerValidator = _descriptionFieldControllerValidator;
    nocodeSoftwareFieldControllerValidator =
        _nocodeSoftwareFieldControllerValidator;
    cloneLinkFieldControllerValidator = _cloneLinkFieldControllerValidator;
  }

  void dispose() {
    headerModel.dispose();
    sidebarSellerModel.dispose();
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

  /// Additional helper methods are added here.

}
