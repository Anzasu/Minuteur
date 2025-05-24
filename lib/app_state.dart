import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _hoursInms = prefs.getInt('ff_hoursInms') ?? _hoursInms;
    });
    _safeInit(() {
      _miuntesInms = prefs.getInt('ff_miuntesInms') ?? _miuntesInms;
    });
    _safeInit(() {
      _secondsInms = prefs.getInt('ff_secondsInms') ?? _secondsInms;
    });
    _safeInit(() {
      _timerTotal = prefs.getInt('ff_timerTotal') ?? _timerTotal;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _hoursInms = 0;
  int get hoursInms => _hoursInms;
  set hoursInms(int value) {
    _hoursInms = value;
    prefs.setInt('ff_hoursInms', value);
  }

  int _miuntesInms = 0;
  int get miuntesInms => _miuntesInms;
  set miuntesInms(int value) {
    _miuntesInms = value;
    prefs.setInt('ff_miuntesInms', value);
  }

  int _secondsInms = 0;
  int get secondsInms => _secondsInms;
  set secondsInms(int value) {
    _secondsInms = value;
    prefs.setInt('ff_secondsInms', value);
  }

  int _timerTotal = 0;
  int get timerTotal => _timerTotal;
  set timerTotal(int value) {
    _timerTotal = value;
    prefs.setInt('ff_timerTotal', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
