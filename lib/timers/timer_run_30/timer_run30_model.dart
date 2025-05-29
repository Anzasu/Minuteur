import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'timer_run30_widget.dart' show TimerRun30Widget;
import 'package:flutter/material.dart';

class TimerRun30Model extends FlutterFlowModel<TimerRun30Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 1800000;
  int timerMilliseconds = 1800000;
  String timerValue =
      StopWatchTimer.getDisplayTime(1800000, milliSecond: false);
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
  }
}
