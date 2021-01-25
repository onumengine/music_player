import 'package:flutter/material.dart';

class NowPlayingBloc extends ChangeNotifier {
  double _trackProgress = 0.0;
  double get trackProgress => _trackProgress;
  set trackProgress(double value) {
    _trackProgress = value;
    notifyListeners();
  }

  
}
