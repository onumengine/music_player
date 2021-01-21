import 'package:flutter/material.dart';

enum DropdownItem {
  custom,
  normal,
  classical,
  dance,
  flat,
  folk,
  heavyMetal,
  hipHop,
  jazz,
  pop,
  rock,
}

class EqualizerScreenBloc extends ChangeNotifier {
  bool _isSelected = false;
  bool get isSelected => _isSelected;
  set isSelected(bool value) {
    _isSelected = value;
    notifyListeners();
  }

  double _slider1Value = 1.0;
  double get slider1Value => _slider1Value;
  set slider1Value(double value) {
    _slider1Value = value;
    notifyListeners();
  }

  double _slider2Value = 2.0;
  double get slider2Value => _slider2Value;
  set slider2Value(double value) {
    _slider2Value = value;
    notifyListeners();
  }

  double _slider3Value = 3.0;
  double get slider3Value => _slider3Value;
  set slider3Value(double value) {
    _slider3Value = value;
    notifyListeners();
  }

  double _slider4Value = 4.0;
  double get slider4Value => _slider4Value;
  set slider4Value(double value) {
    _slider4Value = value;
    notifyListeners();
  }

  double _slider5Value = 5.0;
  double get slider5Value => _slider5Value;
  set slider5Value(double value) {
    _slider5Value = value;
    notifyListeners();
  }

  DropdownItem _dropdownValue = DropdownItem.normal;
  DropdownItem get dropdownValue => _dropdownValue;
  set dropdownValue(DropdownItem item) {
    _dropdownValue = item;
    notifyListeners();
  }
}
