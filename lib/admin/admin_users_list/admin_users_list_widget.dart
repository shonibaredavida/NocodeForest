import '/admin/component/sidebar_admin/sidebar_admin_widget.dart';
import '/admin/component/user_profile_card/user_profile_card_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/main_components/create_account_modal/create_account_modal_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'admin_users_list_model.dart';
export 'admin_users_list_model.dart';

class AdminUsersListWidget extends StatefulWidget {
  const AdminUsersListWidget({Key? key}) : super(key: key);

  @override
  _AdminUsersListWidgetState createState() => _AdminUsersListWidgetState();
}

class _AdminUsersListWidgetState extends State<AdminUsersListWidget> {
  late AdminUsersListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminUsersListModel());

    _model.allUsersTextFieldController ??= TextEditingController();
    _model.buyerTextFieldController ??= TextEditingController();
    _model.sellerTextFieldController ??= TextEditingController();
    _model.deactivatedTextFieldController ??= TextEditingController();
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

    return StreamBuilder<List<UsersRecord>>(
      stream: queryUsersRecord(
        queryBuilder: (usersRecord) =>
            usersRecord.orderBy('created_time', descending: true),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitCubeGrid(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        List<UsersRecord> adminUsersListUsersRecordList = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFF3F3F5),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 1512.0,
                      height: 123.1,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 36.0, 0.0, 36.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  32.0, 0.0, 0.0, 0.0),
                              child: SvgPicture.asset(
                                'assets/images/NF_Logo.svg',
                                width: 132.0,
                                height: 51.1,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 4.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 32.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return GestureDetector(
                                                  onTap: () => FocusScope.of(
                                                          context)
                                                      .requestFocus(
                                                          _model.unfocusNode),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.of(context)
                                                            .viewInsets,
                                                    child:
                                                        CreateAccountModalWidget(),
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() {}));
                                          },
                                          text: 'Logout',
                                          options: FFButtonOptions(
                                            width: 141.0,
                                            height: 48.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Color(0xFFE94057),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily:
                                                          'Roboto Condensed',
                                                      color: Colors.white,
                                                      fontSize: 16.0,
                                                      lineHeight: 1.5,
                                                    ),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            hoverColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            hoverTextColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ClipRRect(
                        child: Container(
                          width: double.infinity,
                          height: 900.0,
                          constraints: BoxConstraints(
                            maxHeight: double.infinity,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFF3F3F5),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              wrapWithModel(
                                model: _model.sidebarAdminModel,
                                updateCallback: () => setState(() {}),
                                child: SidebarAdminWidget(
                                  iconOneColor: Color(0xFF7C7C7C),
                                  iconFourColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  bGColor4:
                                      FlutterFlowTheme.of(context).primary,
                                  p1State: false,
                                  p2State: false,
                                  p4State: true,
                                  p3State: false,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 16.0, 16.0),
                                  child: Container(
                                    width: 900.0,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: DefaultTabController(
                                            length: 4,
                                            initialIndex: 0,
                                            child: Column(
                                              children: [
                                                Align(
                                                  alignment: Alignment(0.0, 0),
                                                  child: TabBar(
                                                    labelColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto Condensed',
                                                              fontSize: 16.0,
                                                              lineHeight: 1.4,
                                                            ),
                                                    indicatorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    tabs: [
                                                      Tab(
                                                        text: 'All users',
                                                      ),
                                                      Tab(
                                                        text: 'Buyers',
                                                      ),
                                                      Tab(
                                                        text: 'Sellers',
                                                      ),
                                                      Tab(
                                                        text:
                                                            'Deactivated Users',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  child: TabBarView(
                                                    children: [
                                                      KeepAliveWidgetWrapper(
                                                        builder: (context) =>
                                                            Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              width: 1201.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            20.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          20.5,
                                                                          16.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                                241.0,
                                                                            height:
                                                                                48.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0xFFFAFAFA),
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                              children: [
                                                                                Expanded(
                                                                                  flex: 2,
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(11.24, 11.24, 0.0, 11.24),
                                                                                    child: Icon(
                                                                                      Icons.search,
                                                                                      color: Color(0xFFBABDB9),
                                                                                      size: 18.0,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  flex: 9,
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                    child: Container(
                                                                                      width: 300.0,
                                                                                      child: TextFormField(
                                                                                        controller: _model.allUsersTextFieldController,
                                                                                        autofocus: true,
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                          hintText: 'Search Users',
                                                                                          hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                color: Color(0xFF99969E),
                                                                                                fontSize: 14.0,
                                                                                              ),
                                                                                          enabledBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          focusedBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          errorBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          focusedErrorBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                        validator: _model.allUsersTextFieldControllerValidator.asValidator(context),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  flex: 2,
                                                                                  child: Container(
                                                                                    height: 50.0,
                                                                                    decoration: BoxDecoration(),
                                                                                    child: InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        setState(() {
                                                                                          _model.allUsersTextFieldController?.clear();
                                                                                        });
                                                                                      },
                                                                                      child: Icon(
                                                                                        Icons.close,
                                                                                        color: Color(0xFF7C7C7C),
                                                                                        size: 18.0,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          FlutterFlowDropDown<
                                                                              String>(
                                                                            controller: _model.dropDownValueController ??=
                                                                                FormFieldController<String>(null),
                                                                            options: <String>[],
                                                                            onChanged: (val) =>
                                                                                setState(() => _model.dropDownValue = val),
                                                                            width:
                                                                                100.0,
                                                                            height:
                                                                                40.0,
                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Roboto Condensed',
                                                                                  fontSize: 16.0,
                                                                                  lineHeight: 1.5,
                                                                                ),
                                                                            hintText:
                                                                                'Filter',
                                                                            icon:
                                                                                Icon(
                                                                              Icons.keyboard_arrow_down_rounded,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            elevation:
                                                                                2.0,
                                                                            borderColor:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            borderWidth:
                                                                                2.0,
                                                                            borderRadius:
                                                                                8.0,
                                                                            margin: EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                4.0,
                                                                                16.0,
                                                                                4.0),
                                                                            hidesUnderline:
                                                                                true,
                                                                            isSearchable:
                                                                                false,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              16.5,
                                                                              16.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'User Details',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Roboto Condensed',
                                                                                          color: Color(0xFF99969E),
                                                                                          fontSize: 14.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          lineHeight: 1.3,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Country',
                                                                                    textAlign: TextAlign.start,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Roboto Condensed',
                                                                                          color: Color(0xFF99969E),
                                                                                          fontSize: 14.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          lineHeight: 1.3,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Member Since',
                                                                                    textAlign: TextAlign.start,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Roboto Condensed',
                                                                                          color: Color(0xFF99969E),
                                                                                          fontSize: 14.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          lineHeight: 1.3,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                      child: Text(
                                                                                        'Role',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Roboto Condensed',
                                                                                              color: Color(0xFF99969E),
                                                                                              fontSize: 14.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                              lineHeight: 1.3,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 32.0, 0.0),
                                                                                      child: Text(
                                                                                        'Action',
                                                                                        textAlign: TextAlign.center,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Roboto Condensed',
                                                                                              color: Color(0xFF99969E),
                                                                                              fontSize: 14.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                              lineHeight: 1.3,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              24.0,
                                                                              16.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                600.0,
                                                                            constraints:
                                                                                BoxConstraints(
                                                                              minHeight: 600.0,
                                                                              maxHeight: double.infinity,
                                                                            ),
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(16.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                              child: Builder(
                                                                                builder: (context) {
                                                                                  final individualUsers = adminUsersListUsersRecordList.map((e) => e).toList().where((e) => !e.admin).toList();
                                                                                  return ListView.builder(
                                                                                    padding: EdgeInsets.zero,
                                                                                    scrollDirection: Axis.vertical,
                                                                                    itemCount: individualUsers.length,
                                                                                    itemBuilder: (context, individualUsersIndex) {
                                                                                      final individualUsersItem = individualUsers[individualUsersIndex];
                                                                                      return Visibility(
                                                                                        visible: functions.textSearch4items(_model.allUsersTextFieldController.text, individualUsersItem.email, individualUsersItem.displayName, individualUsersItem.phoneNumber, individualUsersItem.bio) ?? true,
                                                                                        child: InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            await showModalBottomSheet(
                                                                                              isScrollControlled: true,
                                                                                              backgroundColor: Colors.transparent,
                                                                                              enableDrag: false,
                                                                                              context: context,
                                                                                              builder: (context) {
                                                                                                return GestureDetector(
                                                                                                  onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
                                                                                                  child: Padding(
                                                                                                    padding: MediaQuery.of(context).viewInsets,
                                                                                                    child: UserProfileCardWidget(
                                                                                                      userRef: individualUsersItem.reference,
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            ).then((value) => setState(() {}));
                                                                                          },
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 6.0),
                                                                                                child: FutureBuilder<UsersRecord>(
                                                                                                  future: UsersRecord.getDocumentOnce(individualUsersItem.reference),
                                                                                                  builder: (context, snapshot) {
                                                                                                    // Customize what your widget looks like when it's loading.
                                                                                                    if (!snapshot.hasData) {
                                                                                                      return Center(
                                                                                                        child: SizedBox(
                                                                                                          width: 50.0,
                                                                                                          height: 50.0,
                                                                                                          child: SpinKitCubeGrid(
                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                            size: 50.0,
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    }
                                                                                                    final rowUsersRecord = snapshot.data!;
                                                                                                    return Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                                      children: [
                                                                                                        Expanded(
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                child: ClipRRect(
                                                                                                                  borderRadius: BorderRadius.circular(100.0),
                                                                                                                  child: Image.network(
                                                                                                                    individualUsersItem.photoUrl,
                                                                                                                    width: 32.0,
                                                                                                                    height: 32.0,
                                                                                                                    fit: BoxFit.cover,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                              Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                children: [
                                                                                                                  Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                    children: [
                                                                                                                      SelectionArea(
                                                                                                                          child: Text(
                                                                                                                        individualUsersItem.displayName,
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Roboto Condensed',
                                                                                                                              color: Color(0xFF0F1C10),
                                                                                                                              fontSize: 12.0,
                                                                                                                              fontWeight: FontWeight.bold,
                                                                                                                              lineHeight: 1.5,
                                                                                                                            ),
                                                                                                                      )),
                                                                                                                      SelectionArea(
                                                                                                                          child: Text(
                                                                                                                        individualUsersItem.email,
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Roboto Condensed',
                                                                                                                              color: Color(0xFF99969E),
                                                                                                                              fontSize: 12.0,
                                                                                                                              fontWeight: FontWeight.normal,
                                                                                                                              lineHeight: 1.3,
                                                                                                                            ),
                                                                                                                      )),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  if (individualUsersItem.status == 'deactivated')
                                                                                                                    Padding(
                                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                                      child: Container(
                                                                                                                        width: 20.0,
                                                                                                                        height: 20.0,
                                                                                                                        decoration: BoxDecoration(
                                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                          shape: BoxShape.circle,
                                                                                                                          border: Border.all(
                                                                                                                            color: Color(0xFFFF0000),
                                                                                                                            width: 1.0,
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        child: Row(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                          children: [
                                                                                                                            Text(
                                                                                                                              'D',
                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                                                                    fontSize: 16.0,
                                                                                                                                    fontWeight: FontWeight.bold,
                                                                                                                                    decoration: TextDecoration.lineThrough,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                        Expanded(
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              SelectionArea(
                                                                                                                  child: Text(
                                                                                                                rowUsersRecord.location,
                                                                                                                textAlign: TextAlign.start,
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                                      color: Color(0xFF0F1C10),
                                                                                                                      fontSize: 14.0,
                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                      lineHeight: 1.5,
                                                                                                                    ),
                                                                                                              )),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                        Expanded(
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              SelectionArea(
                                                                                                                  child: Text(
                                                                                                                '${dateTimeFormat(
                                                                                                                  'yMMMd',
                                                                                                                  individualUsersItem.createdTime,
                                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                                )} ${dateTimeFormat(
                                                                                                                  'jm',
                                                                                                                  individualUsersItem.createdTime,
                                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                                )}',
                                                                                                                textAlign: TextAlign.start,
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                                      color: Color(0xFF0F1C10),
                                                                                                                      fontSize: 16.0,
                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                      lineHeight: 1.5,
                                                                                                                    ),
                                                                                                              )),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                        Expanded(
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                            children: [
                                                                                                              Container(
                                                                                                                decoration: BoxDecoration(
                                                                                                                  color: individualUsersItem.becomeASeller == true ? Color(0xFFC8E6C9) : Color(0xFFFFECB3),
                                                                                                                  borderRadius: BorderRadius.circular(100.0),
                                                                                                                ),
                                                                                                                child: Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                                                  child: SelectionArea(
                                                                                                                      child: Text(
                                                                                                                    individualUsersItem.becomeASeller == true ? 'Seller' : 'Buyer',
                                                                                                                    textAlign: TextAlign.start,
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Roboto Condensed',
                                                                                                                          color: Color(0xFF0F1C10),
                                                                                                                          fontSize: 16.0,
                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                          lineHeight: 1.5,
                                                                                                                        ),
                                                                                                                  )),
                                                                                                                ),
                                                                                                              ),
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 32.0, 0.0),
                                                                                                                child: InkWell(
                                                                                                                  splashColor: Colors.transparent,
                                                                                                                  focusColor: Colors.transparent,
                                                                                                                  hoverColor: Colors.transparent,
                                                                                                                  highlightColor: Colors.transparent,
                                                                                                                  onTap: () async {
                                                                                                                    await showModalBottomSheet(
                                                                                                                      isScrollControlled: true,
                                                                                                                      backgroundColor: Colors.transparent,
                                                                                                                      context: context,
                                                                                                                      builder: (context) {
                                                                                                                        return GestureDetector(
                                                                                                                          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
                                                                                                                          child: Padding(
                                                                                                                            padding: MediaQuery.of(context).viewInsets,
                                                                                                                            child: UserProfileCardWidget(
                                                                                                                              userRef: individualUsersItem.reference,
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        );
                                                                                                                      },
                                                                                                                    ).then((value) => setState(() {}));
                                                                                                                  },
                                                                                                                  child: Text(
                                                                                                                    'View',
                                                                                                                    textAlign: TextAlign.center,
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Roboto Condensed',
                                                                                                                          color: Color(0xFF009946),
                                                                                                                          fontSize: 12.0,
                                                                                                                          fontWeight: FontWeight.bold,
                                                                                                                          lineHeight: 1.5,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    );
                                                                                                  },
                                                                                                ),
                                                                                              ),
                                                                                              Divider(
                                                                                                thickness: 1.0,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          30.0,
                                                                          0.0,
                                                                          32.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width:
                                                                        200.0,
                                                                    height:
                                                                        44.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0xFFFAFAFA),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFF009946),
                                                                      ),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceAround,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .chevron_left_sharp,
                                                                          color:
                                                                              Color(0xFF009946),
                                                                          size:
                                                                              18.0,
                                                                        ),
                                                                        Text(
                                                                          '1 of 50',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Roboto Condensed',
                                                                                color: Colors.black,
                                                                                fontSize: 20.0,
                                                                              ),
                                                                        ),
                                                                        Icon(
                                                                          Icons
                                                                              .chevron_right,
                                                                          color:
                                                                              Color(0xFF009946),
                                                                          size:
                                                                              18.0,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      KeepAliveWidgetWrapper(
                                                        builder: (context) =>
                                                            Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              width: 1201.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            20.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          20.5,
                                                                          16.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                                241.0,
                                                                            height:
                                                                                48.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0xFFFAFAFA),
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                              children: [
                                                                                Expanded(
                                                                                  flex: 2,
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(11.24, 11.24, 0.0, 11.24),
                                                                                    child: Icon(
                                                                                      Icons.search,
                                                                                      color: Color(0xFFBABDB9),
                                                                                      size: 18.0,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  flex: 9,
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                    child: Container(
                                                                                      width: 300.0,
                                                                                      child: TextFormField(
                                                                                        controller: _model.buyerTextFieldController,
                                                                                        autofocus: true,
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                          hintText: 'Search Buyers\n',
                                                                                          hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                color: Color(0xFF99969E),
                                                                                                fontSize: 14.0,
                                                                                              ),
                                                                                          enabledBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          focusedBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          errorBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          focusedErrorBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                        validator: _model.buyerTextFieldControllerValidator.asValidator(context),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  flex: 2,
                                                                                  child: Container(
                                                                                    height: 50.0,
                                                                                    decoration: BoxDecoration(),
                                                                                    child: InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        setState(() {
                                                                                          _model.buyerTextFieldController?.clear();
                                                                                        });
                                                                                      },
                                                                                      child: Icon(
                                                                                        Icons.close,
                                                                                        color: Color(0xFF7C7C7C),
                                                                                        size: 18.0,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                77.0,
                                                                            height:
                                                                                32.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(12.0, 9.0, 12.0, 9.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text(
                                                                                    'Filter',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Roboto Condensed',
                                                                                          fontSize: 12.0,
                                                                                        ),
                                                                                  ),
                                                                                  Icon(
                                                                                    Icons.filter_list_rounded,
                                                                                    color: Color(0xFFFAFAFA),
                                                                                    size: 18.0,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              16.5,
                                                                              16.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'User Details',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Roboto Condensed',
                                                                                          color: Color(0xFF99969E),
                                                                                          fontSize: 14.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          lineHeight: 1.3,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Country',
                                                                                    textAlign: TextAlign.start,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Roboto Condensed',
                                                                                          color: Color(0xFF99969E),
                                                                                          fontSize: 14.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          lineHeight: 1.3,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Member Since',
                                                                                    textAlign: TextAlign.start,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Roboto Condensed',
                                                                                          color: Color(0xFF99969E),
                                                                                          fontSize: 14.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          lineHeight: 1.3,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                      child: Text(
                                                                                        'Role',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Roboto Condensed',
                                                                                              color: Color(0xFF99969E),
                                                                                              fontSize: 14.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                              lineHeight: 1.3,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 32.0, 0.0),
                                                                                      child: Text(
                                                                                        'Action',
                                                                                        textAlign: TextAlign.center,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Roboto Condensed',
                                                                                              color: Color(0xFF99969E),
                                                                                              fontSize: 14.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                              lineHeight: 1.3,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              24.0,
                                                                              16.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                600.0,
                                                                            constraints:
                                                                                BoxConstraints(
                                                                              minHeight: 600.0,
                                                                              maxHeight: double.infinity,
                                                                            ),
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(16.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                              child: Builder(
                                                                                builder: (context) {
                                                                                  final individualUsers = adminUsersListUsersRecordList.map((e) => e).toList().where((e) => (e.becomeASeller == true) && (e.admin == false)).toList();
                                                                                  return ListView.builder(
                                                                                    padding: EdgeInsets.zero,
                                                                                    scrollDirection: Axis.vertical,
                                                                                    itemCount: individualUsers.length,
                                                                                    itemBuilder: (context, individualUsersIndex) {
                                                                                      final individualUsersItem = individualUsers[individualUsersIndex];
                                                                                      return Visibility(
                                                                                        visible: functions.textSearch4items(_model.buyerTextFieldController.text, individualUsersItem.email, individualUsersItem.displayName, individualUsersItem.phoneNumber, individualUsersItem.bio) ?? true,
                                                                                        child: InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            await showModalBottomSheet(
                                                                                              isScrollControlled: true,
                                                                                              backgroundColor: Colors.transparent,
                                                                                              enableDrag: false,
                                                                                              context: context,
                                                                                              builder: (context) {
                                                                                                return GestureDetector(
                                                                                                  onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
                                                                                                  child: Padding(
                                                                                                    padding: MediaQuery.of(context).viewInsets,
                                                                                                    child: UserProfileCardWidget(
                                                                                                      userRef: individualUsersItem.reference,
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            ).then((value) => setState(() {}));
                                                                                          },
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 6.0),
                                                                                                child: FutureBuilder<UsersRecord>(
                                                                                                  future: UsersRecord.getDocumentOnce(individualUsersItem.reference),
                                                                                                  builder: (context, snapshot) {
                                                                                                    // Customize what your widget looks like when it's loading.
                                                                                                    if (!snapshot.hasData) {
                                                                                                      return Center(
                                                                                                        child: SizedBox(
                                                                                                          width: 50.0,
                                                                                                          height: 50.0,
                                                                                                          child: SpinKitCubeGrid(
                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                            size: 50.0,
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    }
                                                                                                    final rowUsersRecord = snapshot.data!;
                                                                                                    return Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                                      children: [
                                                                                                        Expanded(
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                child: ClipRRect(
                                                                                                                  borderRadius: BorderRadius.circular(100.0),
                                                                                                                  child: Image.network(
                                                                                                                    individualUsersItem.photoUrl,
                                                                                                                    width: 32.0,
                                                                                                                    height: 32.0,
                                                                                                                    fit: BoxFit.cover,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                              Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                children: [
                                                                                                                  Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                    children: [
                                                                                                                      SelectionArea(
                                                                                                                          child: Text(
                                                                                                                        individualUsersItem.displayName,
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Roboto Condensed',
                                                                                                                              color: Color(0xFF0F1C10),
                                                                                                                              fontSize: 12.0,
                                                                                                                              fontWeight: FontWeight.bold,
                                                                                                                              lineHeight: 1.5,
                                                                                                                            ),
                                                                                                                      )),
                                                                                                                      SelectionArea(
                                                                                                                          child: Text(
                                                                                                                        individualUsersItem.email,
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Roboto Condensed',
                                                                                                                              color: Color(0xFF99969E),
                                                                                                                              fontSize: 12.0,
                                                                                                                              fontWeight: FontWeight.normal,
                                                                                                                              lineHeight: 1.3,
                                                                                                                            ),
                                                                                                                      )),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  if (individualUsersItem.status == 'deactivated')
                                                                                                                    Padding(
                                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                                      child: Container(
                                                                                                                        width: 20.0,
                                                                                                                        height: 20.0,
                                                                                                                        decoration: BoxDecoration(
                                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                          shape: BoxShape.circle,
                                                                                                                          border: Border.all(
                                                                                                                            color: Color(0xFFFF0000),
                                                                                                                            width: 1.0,
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        child: Row(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                          children: [
                                                                                                                            Text(
                                                                                                                              'D',
                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                                                                    fontSize: 16.0,
                                                                                                                                    fontWeight: FontWeight.bold,
                                                                                                                                    decoration: TextDecoration.lineThrough,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                        Expanded(
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              SelectionArea(
                                                                                                                  child: Text(
                                                                                                                rowUsersRecord.location,
                                                                                                                textAlign: TextAlign.start,
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                                      color: Color(0xFF0F1C10),
                                                                                                                      fontSize: 14.0,
                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                      lineHeight: 1.5,
                                                                                                                    ),
                                                                                                              )),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                        Expanded(
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              SelectionArea(
                                                                                                                  child: Text(
                                                                                                                '${dateTimeFormat(
                                                                                                                  'yMMMd',
                                                                                                                  individualUsersItem.createdTime,
                                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                                )} ${dateTimeFormat(
                                                                                                                  'jm',
                                                                                                                  individualUsersItem.createdTime,
                                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                                )}',
                                                                                                                textAlign: TextAlign.start,
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                                      color: Color(0xFF0F1C10),
                                                                                                                      fontSize: 16.0,
                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                      lineHeight: 1.5,
                                                                                                                    ),
                                                                                                              )),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                        Expanded(
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                            children: [
                                                                                                              Container(
                                                                                                                decoration: BoxDecoration(
                                                                                                                  color: individualUsersItem.becomeASeller == true ? Color(0xFFC8E6C9) : Color(0xFFFFECB3),
                                                                                                                  borderRadius: BorderRadius.circular(100.0),
                                                                                                                ),
                                                                                                                child: Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                                                  child: SelectionArea(
                                                                                                                      child: Text(
                                                                                                                    individualUsersItem.becomeASeller == true ? 'Seller' : 'Buyer',
                                                                                                                    textAlign: TextAlign.start,
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Roboto Condensed',
                                                                                                                          color: Color(0xFF0F1C10),
                                                                                                                          fontSize: 16.0,
                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                          lineHeight: 1.5,
                                                                                                                        ),
                                                                                                                  )),
                                                                                                                ),
                                                                                                              ),
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 32.0, 0.0),
                                                                                                                child: InkWell(
                                                                                                                  splashColor: Colors.transparent,
                                                                                                                  focusColor: Colors.transparent,
                                                                                                                  hoverColor: Colors.transparent,
                                                                                                                  highlightColor: Colors.transparent,
                                                                                                                  onTap: () async {
                                                                                                                    await showModalBottomSheet(
                                                                                                                      isScrollControlled: true,
                                                                                                                      backgroundColor: Colors.transparent,
                                                                                                                      context: context,
                                                                                                                      builder: (context) {
                                                                                                                        return GestureDetector(
                                                                                                                          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
                                                                                                                          child: Padding(
                                                                                                                            padding: MediaQuery.of(context).viewInsets,
                                                                                                                            child: UserProfileCardWidget(
                                                                                                                              userRef: individualUsersItem.reference,
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        );
                                                                                                                      },
                                                                                                                    ).then((value) => setState(() {}));
                                                                                                                  },
                                                                                                                  child: Text(
                                                                                                                    'View',
                                                                                                                    textAlign: TextAlign.center,
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Roboto Condensed',
                                                                                                                          color: Color(0xFF009946),
                                                                                                                          fontSize: 12.0,
                                                                                                                          fontWeight: FontWeight.bold,
                                                                                                                          lineHeight: 1.5,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    );
                                                                                                  },
                                                                                                ),
                                                                                              ),
                                                                                              Divider(
                                                                                                thickness: 1.0,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          30.0,
                                                                          0.0,
                                                                          32.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width:
                                                                        200.0,
                                                                    height:
                                                                        44.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0xFFFAFAFA),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFF009946),
                                                                      ),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceAround,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .chevron_left_sharp,
                                                                          color:
                                                                              Color(0xFF009946),
                                                                          size:
                                                                              18.0,
                                                                        ),
                                                                        Text(
                                                                          '1 of 50',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Roboto Condensed',
                                                                                color: Colors.black,
                                                                                fontSize: 20.0,
                                                                              ),
                                                                        ),
                                                                        Icon(
                                                                          Icons
                                                                              .chevron_right,
                                                                          color:
                                                                              Color(0xFF009946),
                                                                          size:
                                                                              18.0,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      KeepAliveWidgetWrapper(
                                                        builder: (context) =>
                                                            Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          20.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            20.5,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              241.0,
                                                                          height:
                                                                              48.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Color(0xFFFAFAFA),
                                                                          ),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceAround,
                                                                            children: [
                                                                              Expanded(
                                                                                flex: 2,
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(11.24, 11.24, 0.0, 11.24),
                                                                                  child: Icon(
                                                                                    Icons.search,
                                                                                    color: Color(0xFFBABDB9),
                                                                                    size: 18.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                flex: 9,
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                  child: Container(
                                                                                    width: 300.0,
                                                                                    child: TextFormField(
                                                                                      controller: _model.sellerTextFieldController,
                                                                                      autofocus: true,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        hintText: 'Search Sellers\n',
                                                                                        hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                              fontFamily: 'Roboto Condensed',
                                                                                              color: Color(0xFF99969E),
                                                                                              fontSize: 14.0,
                                                                                            ),
                                                                                        enabledBorder: UnderlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: Color(0x00000000),
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: const BorderRadius.only(
                                                                                            topLeft: Radius.circular(4.0),
                                                                                            topRight: Radius.circular(4.0),
                                                                                          ),
                                                                                        ),
                                                                                        focusedBorder: UnderlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: Color(0x00000000),
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: const BorderRadius.only(
                                                                                            topLeft: Radius.circular(4.0),
                                                                                            topRight: Radius.circular(4.0),
                                                                                          ),
                                                                                        ),
                                                                                        errorBorder: UnderlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: Color(0x00000000),
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: const BorderRadius.only(
                                                                                            topLeft: Radius.circular(4.0),
                                                                                            topRight: Radius.circular(4.0),
                                                                                          ),
                                                                                        ),
                                                                                        focusedErrorBorder: UnderlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: Color(0x00000000),
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: const BorderRadius.only(
                                                                                            topLeft: Radius.circular(4.0),
                                                                                            topRight: Radius.circular(4.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      validator: _model.sellerTextFieldControllerValidator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                flex: 2,
                                                                                child: Container(
                                                                                  height: 50.0,
                                                                                  decoration: BoxDecoration(),
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      setState(() {
                                                                                        _model.sellerTextFieldController?.clear();
                                                                                      });
                                                                                    },
                                                                                    child: Icon(
                                                                                      Icons.close,
                                                                                      color: Color(0xFF7C7C7C),
                                                                                      size: 18.0,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              77.0,
                                                                          height:
                                                                              32.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                9.0,
                                                                                12.0,
                                                                                9.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Text(
                                                                                  'Filter',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Roboto Condensed',
                                                                                        fontSize: 12.0,
                                                                                      ),
                                                                                ),
                                                                                Icon(
                                                                                  Icons.filter_list_rounded,
                                                                                  color: Color(0xFFFAFAFA),
                                                                                  size: 18.0,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            16.5,
                                                                            16.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'User Details',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Roboto Condensed',
                                                                                        color: Color(0xFF99969E),
                                                                                        fontSize: 14.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        lineHeight: 1.3,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Country',
                                                                                  textAlign: TextAlign.start,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Roboto Condensed',
                                                                                        color: Color(0xFF99969E),
                                                                                        fontSize: 14.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        lineHeight: 1.3,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Member Since',
                                                                                  textAlign: TextAlign.start,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Roboto Condensed',
                                                                                        color: Color(0xFF99969E),
                                                                                        fontSize: 14.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        lineHeight: 1.3,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'Role',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Roboto Condensed',
                                                                                            color: Color(0xFF99969E),
                                                                                            fontSize: 14.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            lineHeight: 1.3,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 32.0, 0.0),
                                                                                    child: Text(
                                                                                      'Action',
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Roboto Condensed',
                                                                                            color: Color(0xFF99969E),
                                                                                            fontSize: 14.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            lineHeight: 1.3,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            24.0,
                                                                            16.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              600.0,
                                                                          constraints:
                                                                              BoxConstraints(
                                                                            minHeight:
                                                                                600.0,
                                                                            maxHeight:
                                                                                double.infinity,
                                                                          ),
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                Builder(
                                                                              builder: (context) {
                                                                                final individualUsers = adminUsersListUsersRecordList.map((e) => e).toList().where((e) => (e.becomeASeller == false) && (e.admin == false)).toList();
                                                                                return ListView.builder(
                                                                                  padding: EdgeInsets.zero,
                                                                                  scrollDirection: Axis.vertical,
                                                                                  itemCount: individualUsers.length,
                                                                                  itemBuilder: (context, individualUsersIndex) {
                                                                                    final individualUsersItem = individualUsers[individualUsersIndex];
                                                                                    return Visibility(
                                                                                      visible: functions.textSearch4items(_model.sellerTextFieldController.text, individualUsersItem.email, individualUsersItem.displayName, individualUsersItem.phoneNumber, individualUsersItem.bio) ?? true,
                                                                                      child: InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          await showModalBottomSheet(
                                                                                            isScrollControlled: true,
                                                                                            backgroundColor: Colors.transparent,
                                                                                            enableDrag: false,
                                                                                            context: context,
                                                                                            builder: (context) {
                                                                                              return GestureDetector(
                                                                                                onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
                                                                                                child: Padding(
                                                                                                  padding: MediaQuery.of(context).viewInsets,
                                                                                                  child: UserProfileCardWidget(
                                                                                                    userRef: individualUsersItem.reference,
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          ).then((value) => setState(() {}));
                                                                                        },
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 6.0),
                                                                                              child: FutureBuilder<UsersRecord>(
                                                                                                future: UsersRecord.getDocumentOnce(individualUsersItem.reference),
                                                                                                builder: (context, snapshot) {
                                                                                                  // Customize what your widget looks like when it's loading.
                                                                                                  if (!snapshot.hasData) {
                                                                                                    return Center(
                                                                                                      child: SizedBox(
                                                                                                        width: 50.0,
                                                                                                        height: 50.0,
                                                                                                        child: SpinKitCubeGrid(
                                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                                          size: 50.0,
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  }
                                                                                                  final rowUsersRecord = snapshot.data!;
                                                                                                  return Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Expanded(
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                              child: ClipRRect(
                                                                                                                borderRadius: BorderRadius.circular(100.0),
                                                                                                                child: Image.network(
                                                                                                                  individualUsersItem.photoUrl,
                                                                                                                  width: 32.0,
                                                                                                                  height: 32.0,
                                                                                                                  fit: BoxFit.cover,
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                            Row(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                  children: [
                                                                                                                    SelectionArea(
                                                                                                                        child: Text(
                                                                                                                      individualUsersItem.displayName,
                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                            fontFamily: 'Roboto Condensed',
                                                                                                                            color: Color(0xFF0F1C10),
                                                                                                                            fontSize: 12.0,
                                                                                                                            fontWeight: FontWeight.bold,
                                                                                                                            lineHeight: 1.5,
                                                                                                                          ),
                                                                                                                    )),
                                                                                                                    SelectionArea(
                                                                                                                        child: Text(
                                                                                                                      individualUsersItem.email,
                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                            fontFamily: 'Roboto Condensed',
                                                                                                                            color: Color(0xFF99969E),
                                                                                                                            fontSize: 12.0,
                                                                                                                            fontWeight: FontWeight.normal,
                                                                                                                            lineHeight: 1.3,
                                                                                                                          ),
                                                                                                                    )),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                if (individualUsersItem.status == 'deactivated')
                                                                                                                  Padding(
                                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                                    child: Container(
                                                                                                                      width: 20.0,
                                                                                                                      height: 20.0,
                                                                                                                      decoration: BoxDecoration(
                                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                        shape: BoxShape.circle,
                                                                                                                        border: Border.all(
                                                                                                                          color: Color(0xFFFF0000),
                                                                                                                          width: 1.0,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                      child: Row(
                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                        children: [
                                                                                                                          Text(
                                                                                                                            'D',
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                                                                  fontSize: 16.0,
                                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                                  decoration: TextDecoration.lineThrough,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                      Expanded(
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            SelectionArea(
                                                                                                                child: Text(
                                                                                                              rowUsersRecord.location,
                                                                                                              textAlign: TextAlign.start,
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: Color(0xFF0F1C10),
                                                                                                                    fontSize: 14.0,
                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                    lineHeight: 1.5,
                                                                                                                  ),
                                                                                                            )),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                      Expanded(
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            SelectionArea(
                                                                                                                child: Text(
                                                                                                              '${dateTimeFormat(
                                                                                                                'yMMMd',
                                                                                                                individualUsersItem.createdTime,
                                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                                              )} ${dateTimeFormat(
                                                                                                                'jm',
                                                                                                                individualUsersItem.createdTime,
                                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                                              )}',
                                                                                                              textAlign: TextAlign.start,
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: Color(0xFF0F1C10),
                                                                                                                    fontSize: 16.0,
                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                    lineHeight: 1.5,
                                                                                                                  ),
                                                                                                            )),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                      Expanded(
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                          children: [
                                                                                                            Container(
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: individualUsersItem.becomeASeller == true ? Color(0xFFC8E6C9) : Color(0xFFFFECB3),
                                                                                                                borderRadius: BorderRadius.circular(100.0),
                                                                                                              ),
                                                                                                              child: Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                                                child: SelectionArea(
                                                                                                                    child: Text(
                                                                                                                  individualUsersItem.becomeASeller == true ? 'Seller' : 'Buyer',
                                                                                                                  textAlign: TextAlign.start,
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: 'Roboto Condensed',
                                                                                                                        color: Color(0xFF0F1C10),
                                                                                                                        fontSize: 16.0,
                                                                                                                        fontWeight: FontWeight.w600,
                                                                                                                        lineHeight: 1.5,
                                                                                                                      ),
                                                                                                                )),
                                                                                                              ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 32.0, 0.0),
                                                                                                              child: InkWell(
                                                                                                                splashColor: Colors.transparent,
                                                                                                                focusColor: Colors.transparent,
                                                                                                                hoverColor: Colors.transparent,
                                                                                                                highlightColor: Colors.transparent,
                                                                                                                onTap: () async {
                                                                                                                  await showModalBottomSheet(
                                                                                                                    isScrollControlled: true,
                                                                                                                    backgroundColor: Colors.transparent,
                                                                                                                    context: context,
                                                                                                                    builder: (context) {
                                                                                                                      return GestureDetector(
                                                                                                                        onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
                                                                                                                        child: Padding(
                                                                                                                          padding: MediaQuery.of(context).viewInsets,
                                                                                                                          child: UserProfileCardWidget(
                                                                                                                            userRef: individualUsersItem.reference,
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      );
                                                                                                                    },
                                                                                                                  ).then((value) => setState(() {}));
                                                                                                                },
                                                                                                                child: Text(
                                                                                                                  'View',
                                                                                                                  textAlign: TextAlign.center,
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: 'Roboto Condensed',
                                                                                                                        color: Color(0xFF009946),
                                                                                                                        fontSize: 12.0,
                                                                                                                        fontWeight: FontWeight.bold,
                                                                                                                        lineHeight: 1.5,
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  );
                                                                                                },
                                                                                              ),
                                                                                            ),
                                                                                            Divider(
                                                                                              thickness: 1.0,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                );
                                                                              },
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          30.0,
                                                                          0.0,
                                                                          32.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width:
                                                                        200.0,
                                                                    height:
                                                                        44.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0xFFFAFAFA),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFF009946),
                                                                      ),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceAround,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .chevron_left_sharp,
                                                                          color:
                                                                              Color(0xFF009946),
                                                                          size:
                                                                              18.0,
                                                                        ),
                                                                        Text(
                                                                          '1 of 50',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Roboto Condensed',
                                                                                color: Colors.black,
                                                                                fontSize: 20.0,
                                                                              ),
                                                                        ),
                                                                        Icon(
                                                                          Icons
                                                                              .chevron_right,
                                                                          color:
                                                                              Color(0xFF009946),
                                                                          size:
                                                                              18.0,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      KeepAliveWidgetWrapper(
                                                        builder: (context) =>
                                                            Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              width: 1201.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            20.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          20.5,
                                                                          16.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                                241.0,
                                                                            height:
                                                                                48.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0xFFFAFAFA),
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                              children: [
                                                                                Expanded(
                                                                                  flex: 2,
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(11.24, 11.24, 0.0, 11.24),
                                                                                    child: Icon(
                                                                                      Icons.search,
                                                                                      color: Color(0xFFBABDB9),
                                                                                      size: 18.0,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  flex: 9,
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                    child: Container(
                                                                                      width: 300.0,
                                                                                      child: TextFormField(
                                                                                        controller: _model.deactivatedTextFieldController,
                                                                                        autofocus: true,
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                          hintText: 'Search Deactivated Users\n',
                                                                                          hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                color: Color(0xFF99969E),
                                                                                                fontSize: 14.0,
                                                                                              ),
                                                                                          enabledBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          focusedBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          errorBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          focusedErrorBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                        validator: _model.deactivatedTextFieldControllerValidator.asValidator(context),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  flex: 2,
                                                                                  child: Container(
                                                                                    height: 50.0,
                                                                                    decoration: BoxDecoration(),
                                                                                    child: InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        setState(() {
                                                                                          _model.sellerTextFieldController?.clear();
                                                                                        });
                                                                                      },
                                                                                      child: Icon(
                                                                                        Icons.close,
                                                                                        color: Color(0xFF7C7C7C),
                                                                                        size: 18.0,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                77.0,
                                                                            height:
                                                                                32.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(12.0, 9.0, 12.0, 9.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text(
                                                                                    'Filter',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Roboto Condensed',
                                                                                          fontSize: 12.0,
                                                                                        ),
                                                                                  ),
                                                                                  Icon(
                                                                                    Icons.filter_list_rounded,
                                                                                    color: Color(0xFFFAFAFA),
                                                                                    size: 18.0,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              16.5,
                                                                              16.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'User Details',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Roboto Condensed',
                                                                                          color: Color(0xFF99969E),
                                                                                          fontSize: 14.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          lineHeight: 1.3,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Country',
                                                                                    textAlign: TextAlign.start,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Roboto Condensed',
                                                                                          color: Color(0xFF99969E),
                                                                                          fontSize: 14.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          lineHeight: 1.3,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Member Since',
                                                                                    textAlign: TextAlign.start,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Roboto Condensed',
                                                                                          color: Color(0xFF99969E),
                                                                                          fontSize: 14.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          lineHeight: 1.3,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                      child: Text(
                                                                                        'Role',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Roboto Condensed',
                                                                                              color: Color(0xFF99969E),
                                                                                              fontSize: 14.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 32.0, 0.0),
                                                                                      child: Text(
                                                                                        'Action',
                                                                                        textAlign: TextAlign.center,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Roboto Condensed',
                                                                                              color: Color(0xFF99969E),
                                                                                              fontSize: 14.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                              lineHeight: 1.3,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              24.0,
                                                                              16.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                600.0,
                                                                            constraints:
                                                                                BoxConstraints(
                                                                              minHeight: 600.0,
                                                                              maxHeight: double.infinity,
                                                                            ),
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(16.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                              child: Builder(
                                                                                builder: (context) {
                                                                                  final individualUsers = adminUsersListUsersRecordList.map((e) => e).toList().where((e) => (e.status == 'deactivated') && (e.admin == false)).toList();
                                                                                  return ListView.builder(
                                                                                    padding: EdgeInsets.zero,
                                                                                    scrollDirection: Axis.vertical,
                                                                                    itemCount: individualUsers.length,
                                                                                    itemBuilder: (context, individualUsersIndex) {
                                                                                      final individualUsersItem = individualUsers[individualUsersIndex];
                                                                                      return Visibility(
                                                                                        visible: functions.textSearch4items(_model.deactivatedTextFieldController.text, individualUsersItem.email, individualUsersItem.displayName, individualUsersItem.phoneNumber, individualUsersItem.bio) ?? true,
                                                                                        child: InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            await showModalBottomSheet(
                                                                                              isScrollControlled: true,
                                                                                              backgroundColor: Colors.transparent,
                                                                                              enableDrag: false,
                                                                                              context: context,
                                                                                              builder: (context) {
                                                                                                return GestureDetector(
                                                                                                  onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
                                                                                                  child: Padding(
                                                                                                    padding: MediaQuery.of(context).viewInsets,
                                                                                                    child: UserProfileCardWidget(
                                                                                                      userRef: individualUsersItem.reference,
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            ).then((value) => setState(() {}));
                                                                                          },
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 6.0),
                                                                                                child: FutureBuilder<UsersRecord>(
                                                                                                  future: UsersRecord.getDocumentOnce(individualUsersItem.reference),
                                                                                                  builder: (context, snapshot) {
                                                                                                    // Customize what your widget looks like when it's loading.
                                                                                                    if (!snapshot.hasData) {
                                                                                                      return Center(
                                                                                                        child: SizedBox(
                                                                                                          width: 50.0,
                                                                                                          height: 50.0,
                                                                                                          child: SpinKitCubeGrid(
                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                            size: 50.0,
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    }
                                                                                                    final rowUsersRecord = snapshot.data!;
                                                                                                    return Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                                      children: [
                                                                                                        Expanded(
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                child: ClipRRect(
                                                                                                                  borderRadius: BorderRadius.circular(100.0),
                                                                                                                  child: Image.network(
                                                                                                                    individualUsersItem.photoUrl,
                                                                                                                    width: 32.0,
                                                                                                                    height: 32.0,
                                                                                                                    fit: BoxFit.cover,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                              Column(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                children: [
                                                                                                                  SelectionArea(
                                                                                                                      child: Text(
                                                                                                                    individualUsersItem.displayName,
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Roboto Condensed',
                                                                                                                          color: Color(0xFF0F1C10),
                                                                                                                          fontSize: 12.0,
                                                                                                                          fontWeight: FontWeight.bold,
                                                                                                                          lineHeight: 1.5,
                                                                                                                        ),
                                                                                                                  )),
                                                                                                                  SelectionArea(
                                                                                                                      child: Text(
                                                                                                                    individualUsersItem.email,
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Roboto Condensed',
                                                                                                                          color: Color(0xFF99969E),
                                                                                                                          fontSize: 12.0,
                                                                                                                          fontWeight: FontWeight.normal,
                                                                                                                          lineHeight: 1.3,
                                                                                                                        ),
                                                                                                                  )),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                        Expanded(
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              SelectionArea(
                                                                                                                  child: Text(
                                                                                                                rowUsersRecord.location,
                                                                                                                textAlign: TextAlign.start,
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                                      color: Color(0xFF0F1C10),
                                                                                                                      fontSize: 14.0,
                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                      lineHeight: 1.5,
                                                                                                                    ),
                                                                                                              )),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                        Expanded(
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              SelectionArea(
                                                                                                                  child: Text(
                                                                                                                '${dateTimeFormat(
                                                                                                                  'yMMMd',
                                                                                                                  individualUsersItem.createdTime,
                                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                                )} ${dateTimeFormat(
                                                                                                                  'jm',
                                                                                                                  individualUsersItem.createdTime,
                                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                                )}',
                                                                                                                textAlign: TextAlign.start,
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                                      color: Color(0xFF0F1C10),
                                                                                                                      fontSize: 16.0,
                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                      lineHeight: 1.5,
                                                                                                                    ),
                                                                                                              )),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                        Expanded(
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                            children: [
                                                                                                              Container(
                                                                                                                decoration: BoxDecoration(
                                                                                                                  color: individualUsersItem.becomeASeller == true ? Color(0xFFC8E6C9) : Color(0xFFFFECB3),
                                                                                                                  borderRadius: BorderRadius.circular(100.0),
                                                                                                                ),
                                                                                                                child: Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                                                  child: SelectionArea(
                                                                                                                      child: Text(
                                                                                                                    individualUsersItem.becomeASeller == true ? 'Seller' : 'Buyer',
                                                                                                                    textAlign: TextAlign.start,
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Roboto Condensed',
                                                                                                                          color: Color(0xFF0F1C10),
                                                                                                                          fontSize: 16.0,
                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                          lineHeight: 1.5,
                                                                                                                        ),
                                                                                                                  )),
                                                                                                                ),
                                                                                                              ),
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 32.0, 0.0),
                                                                                                                child: InkWell(
                                                                                                                  splashColor: Colors.transparent,
                                                                                                                  focusColor: Colors.transparent,
                                                                                                                  hoverColor: Colors.transparent,
                                                                                                                  highlightColor: Colors.transparent,
                                                                                                                  onTap: () async {
                                                                                                                    await showModalBottomSheet(
                                                                                                                      isScrollControlled: true,
                                                                                                                      backgroundColor: Colors.transparent,
                                                                                                                      context: context,
                                                                                                                      builder: (context) {
                                                                                                                        return GestureDetector(
                                                                                                                          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
                                                                                                                          child: Padding(
                                                                                                                            padding: MediaQuery.of(context).viewInsets,
                                                                                                                            child: UserProfileCardWidget(
                                                                                                                              userRef: individualUsersItem.reference,
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        );
                                                                                                                      },
                                                                                                                    ).then((value) => setState(() {}));
                                                                                                                  },
                                                                                                                  child: Text(
                                                                                                                    'View',
                                                                                                                    textAlign: TextAlign.center,
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Roboto Condensed',
                                                                                                                          color: Color(0xFF009946),
                                                                                                                          fontSize: 12.0,
                                                                                                                          fontWeight: FontWeight.bold,
                                                                                                                          lineHeight: 1.5,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    );
                                                                                                  },
                                                                                                ),
                                                                                              ),
                                                                                              Divider(
                                                                                                thickness: 1.0,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          30.0,
                                                                          0.0,
                                                                          32.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width:
                                                                        200.0,
                                                                    height:
                                                                        44.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0xFFFAFAFA),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFF009946),
                                                                      ),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceAround,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .chevron_left_sharp,
                                                                          color:
                                                                              Color(0xFF009946),
                                                                          size:
                                                                              18.0,
                                                                        ),
                                                                        Text(
                                                                          '1 of 50',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Roboto Condensed',
                                                                                color: Colors.black,
                                                                                fontSize: 20.0,
                                                                              ),
                                                                        ),
                                                                        Icon(
                                                                          Icons
                                                                              .chevron_right,
                                                                          color:
                                                                              Color(0xFF009946),
                                                                          size:
                                                                              18.0,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
