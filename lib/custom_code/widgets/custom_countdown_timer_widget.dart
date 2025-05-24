// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// DO NOT REMOVE OR MODIFY THE CODE ABOVE

import 'dart:async';

class CustomCountdownTimerWidget extends StatefulWidget {
  const CustomCountdownTimerWidget({
    super.key,
    this.width,
    this.height,
    this.hours = 0,
    this.minutes = 0,
    this.seconds = 0,
    this.fontSize = 24,
    this.textColor = Colors.black,
    this.fontWeight = FontWeight.bold,
    this.onFinished,
    this.showHours = true,
    this.showLabels = true,
    this.backgroundColor = Colors.transparent,
    this.digitBackgroundColor = Colors.grey,
  });

  final double? width;
  final double? height;
  final int hours;
  final int minutes;
  final int seconds;
  final double fontSize;
  final Color textColor;
  final FontWeight fontWeight;
  final Function? onFinished;
  final bool showHours;
  final bool showLabels;
  final Color backgroundColor;
  final Color digitBackgroundColor;

  @override
  State<CustomCountdownTimerWidget> createState() =>
      _CustomCountdownTimerWidgetState();
}

class _CustomCountdownTimerWidgetState
    extends State<CustomCountdownTimerWidget> {
  late Timer _timer;
  late int _totalSeconds;
  bool _isRunning = false;

  @override
  void initState() {
    super.initState();
    _totalSeconds = widget.hours * 3600 + widget.minutes * 60 + widget.seconds;
    _startTimer();
  }

  void _startTimer() {
    _isRunning = true;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_totalSeconds > 0) {
          _totalSeconds--;
        } else {
          _timer.cancel();
          _isRunning = false;
          if (widget.onFinished != null) {
            widget.onFinished!();
          }
        }
      });
    });
  }

  void _pauseTimer() {
    _timer.cancel();
    setState(() {
      _isRunning = false;
    });
  }

  void _resetTimer() {
    _timer.cancel();
    setState(() {
      _totalSeconds =
          widget.hours * 3600 + widget.minutes * 60 + widget.seconds;
      _isRunning = false;
    });
  }

  String _formatNumber(int number) {
    return number.toString().padLeft(2, '0');
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int hours = _totalSeconds ~/ 3600;
    int minutes = (_totalSeconds % 3600) ~/ 60;
    int seconds = _totalSeconds % 60;

    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.showHours)
                _buildTimeSegment(_formatNumber(hours), 'Hours'),
              if (widget.showHours) SizedBox(width: 10),
              _buildTimeSegment(_formatNumber(minutes), 'Minutes'),
              SizedBox(width: 10),
              _buildTimeSegment(_formatNumber(seconds), 'Seconds'),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildControlButton(_isRunning ? Icons.pause : Icons.play_arrow,
                  _isRunning ? _pauseTimer : _startTimer),
              SizedBox(width: 20),
              _buildControlButton(Icons.replay, _resetTimer),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTimeSegment(String value, String label) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: widget.digitBackgroundColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(value,
                style: TextStyle(
                  fontSize: widget.fontSize,
                  fontWeight: widget.fontWeight,
                  color: widget.textColor,
                ),
                textAlign: TextAlign.center),
          ),
        ),
        if (widget.showLabels)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              label,
              style: TextStyle(
                fontSize: widget.fontSize * 0.65,
                color: widget.textColor,
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildControlButton(IconData icon, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        padding: EdgeInsets.all(18),
      ),
      child: Icon(icon, size: 20),
    );
  }
}
