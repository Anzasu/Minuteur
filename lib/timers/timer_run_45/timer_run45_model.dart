import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'timer_run45_widget.dart' show TimerRun45Widget;
import 'package:flutter/material.dart';

class TimerRun45Model extends FlutterFlowModel<TimerRun45Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 2700000;
  int timerMilliseconds = 2700000;
  String timerValue =
      StopWatchTimer.getDisplayTime(2700000, milliSecond: false);
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
  }
}
