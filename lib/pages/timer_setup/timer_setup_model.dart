import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'timer_setup_widget.dart' show TimerSetupWidget;
import 'package:flutter/material.dart';

class TimerSetupModel extends FlutterFlowModel<TimerSetupWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Heures widget.
  FocusNode? heuresFocusNode;
  TextEditingController? heuresTextController;
  String? Function(BuildContext, String?)? heuresTextControllerValidator;
  // State field(s) for Minutes widget.
  FocusNode? minutesFocusNode;
  TextEditingController? minutesTextController;
  String? Function(BuildContext, String?)? minutesTextControllerValidator;
  // State field(s) for Seconds widget.
  FocusNode? secondsFocusNode;
  TextEditingController? secondsTextController;
  String? Function(BuildContext, String?)? secondsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    heuresFocusNode?.dispose();
    heuresTextController?.dispose();

    minutesFocusNode?.dispose();
    minutesTextController?.dispose();

    secondsFocusNode?.dispose();
    secondsTextController?.dispose();
  }
}
