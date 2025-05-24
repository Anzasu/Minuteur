import '/flutter_flow/flutter_flow_util.dart';
import 'timer_setup_widget.dart' show TimerSetupWidget;
import 'package:flutter/material.dart';

class TimerSetupModel extends FlutterFlowModel<TimerSetupWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Heures widget.
  FocusNode? heuresFocusNode;
  TextEditingController? heuresTextController;
  String? Function(BuildContext, String?)? heuresTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    heuresFocusNode?.dispose();
    heuresTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();
  }
}
