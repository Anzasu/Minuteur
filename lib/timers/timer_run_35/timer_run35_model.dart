import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'timer_run35_widget.dart' show TimerRun35Widget;
import 'package:flutter/material.dart';

class TimerRun35Model extends FlutterFlowModel<TimerRun35Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 2100000;
  int timerMilliseconds = 2100000;
  String timerValue =
      StopWatchTimer.getDisplayTime(2100000, milliSecond: false);
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
  }
}
