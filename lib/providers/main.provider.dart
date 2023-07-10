import 'package:flutter/material.dart';

class MainProvider with ChangeNotifier {
  bool _loading = true;
  dynamic _profileData;
  int _currentSlide = 0;

  bool get loading => _loading;
  dynamic get profileData => _profileData;
  int get currentSlide => _currentSlide;

  void setLoading(bool newState) {
    _loading = newState;
    notifyListeners();
  }

  void setProfileData(dynamic newState) {
    _profileData = newState;
    notifyListeners();
  }

  void setCurrentSlide(int newState) {
    _currentSlide = newState;
    notifyListeners();
  }
}
