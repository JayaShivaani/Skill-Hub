import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'fl_profile_widget.dart' show FlProfileWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FlProfileModel extends FlutterFlowModel<FlProfileWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode1;
  TextEditingController? cityTextController1;
  String? Function(BuildContext, String?)? cityTextController1Validator;
  // State field(s) for state widget.
  String? stateValue1;
  FormFieldController<String>? stateValueController1;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode1;
  TextEditingController? myBioTextController1;
  String? Function(BuildContext, String?)? myBioTextController1Validator;
  // State field(s) for state widget.
  String? stateValue2;
  FormFieldController<String>? stateValueController2;
  // State field(s) for state widget.
  String? stateValue3;
  FormFieldController<String>? stateValueController3;
  // State field(s) for state widget.
  String? stateValue4;
  FormFieldController<String>? stateValueController4;
  // State field(s) for city widget.
  FocusNode? cityFocusNode2;
  TextEditingController? cityTextController2;
  String? Function(BuildContext, String?)? cityTextController2Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode3;
  TextEditingController? cityTextController3;
  String? Function(BuildContext, String?)? cityTextController3Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode4;
  TextEditingController? cityTextController4;
  String? Function(BuildContext, String?)? cityTextController4Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode5;
  TextEditingController? cityTextController5;
  String? Function(BuildContext, String?)? cityTextController5Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode6;
  TextEditingController? cityTextController6;
  String? Function(BuildContext, String?)? cityTextController6Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode7;
  TextEditingController? cityTextController7;
  String? Function(BuildContext, String?)? cityTextController7Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode8;
  TextEditingController? cityTextController8;
  String? Function(BuildContext, String?)? cityTextController8Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode9;
  TextEditingController? cityTextController9;
  String? Function(BuildContext, String?)? cityTextController9Validator;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode2;
  TextEditingController? myBioTextController2;
  String? Function(BuildContext, String?)? myBioTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    cityFocusNode1?.dispose();
    cityTextController1?.dispose();

    myBioFocusNode1?.dispose();
    myBioTextController1?.dispose();

    cityFocusNode2?.dispose();
    cityTextController2?.dispose();

    cityFocusNode3?.dispose();
    cityTextController3?.dispose();

    cityFocusNode4?.dispose();
    cityTextController4?.dispose();

    cityFocusNode5?.dispose();
    cityTextController5?.dispose();

    cityFocusNode6?.dispose();
    cityTextController6?.dispose();

    cityFocusNode7?.dispose();
    cityTextController7?.dispose();

    cityFocusNode8?.dispose();
    cityTextController8?.dispose();

    cityFocusNode9?.dispose();
    cityTextController9?.dispose();

    myBioFocusNode2?.dispose();
    myBioTextController2?.dispose();
  }
}
