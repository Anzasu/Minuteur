import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'timer_run20_widget.dart' show TimerRun20Widget;
import 'package:flutter/material.dart';

class TimerRun20Model extends FlutterFlowModel<TimerRun20Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 1200000;
  int timerMilliseconds = 1200000;
  String timerValue =
      StopWatchTimer.getDisplayTime(1200000, milliSecond: false);
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
  }
}
