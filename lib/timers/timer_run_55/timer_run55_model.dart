import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'timer_run55_widget.dart' show TimerRun55Widget;
import 'package:flutter/material.dart';

class TimerRun55Model extends FlutterFlowModel<TimerRun55Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 3300000;
  int timerMilliseconds = 3300000;
  String timerValue =
      StopWatchTimer.getDisplayTime(3300000, milliSecond: false);
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
  }
}
