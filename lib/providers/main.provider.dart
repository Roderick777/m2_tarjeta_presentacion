import 'package:flutter/material.dart';
import 'package:m2_app_tarjeta_presentacion/models/profile.model.dart';

class MainProvider with ChangeNotifier {
  bool _loading = true;
  ProfileModel _profileData = ProfileModel.empty();
  int _currentSlide = 0;

  bool get loading => _loading;
  ProfileModel get profileData => _profileData;
  int get currentSlide => _currentSlide;

  void setLoading(bool newState) {
    _loading = newState;
    notifyListeners();
  }

  void setProfileData(ProfileModel newState) {
    _profileData = newState;
    notifyListeners();
  }

  void setCurrentSlide(int newState) {
    _currentSlide = newState;
    notifyListeners();
  }
}
