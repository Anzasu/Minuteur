import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'timer_run15_widget.dart' show TimerRun15Widget;
import 'package:flutter/material.dart';

class TimerRun15Model extends FlutterFlowModel<TimerRun15Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 900000;
  int timerMilliseconds = 900000;
  String timerValue = StopWatchTimer.getDisplayTime(900000, milliSecond: false);
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
  }
}
