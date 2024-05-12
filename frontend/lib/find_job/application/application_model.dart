import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'application_widget.dart' show ApplicationWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ApplicationModel extends FlutterFlowModel<ApplicationWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode1;
  TextEditingController? yourNameTextController1;
  String? Function(BuildContext, String?)? yourNameTextController1Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode2;
  TextEditingController? yourNameTextController2;
  String? Function(BuildContext, String?)? yourNameTextController2Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode3;
  TextEditingController? yourNameTextController3;
  String? Function(BuildContext, String?)? yourNameTextController3Validator;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode1;
  TextEditingController? myBioTextController1;
  String? Function(BuildContext, String?)? myBioTextController1Validator;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode2;
  TextEditingController? myBioTextController2;
  String? Function(BuildContext, String?)? myBioTextController2Validator;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode3;
  TextEditingController? myBioTextController3;
  String? Function(BuildContext, String?)? myBioTextController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode1?.dispose();
    yourNameTextController1?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    yourNameFocusNode2?.dispose();
    yourNameTextController2?.dispose();

    yourNameFocusNode3?.dispose();
    yourNameTextController3?.dispose();

    myBioFocusNode1?.dispose();
    myBioTextController1?.dispose();

    myBioFocusNode2?.dispose();
    myBioTextController2?.dispose();

    myBioFocusNode3?.dispose();
    myBioTextController3?.dispose();
  }
}
