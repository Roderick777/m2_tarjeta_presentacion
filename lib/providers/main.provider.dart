import 'package:flutter/material.dart';
import 'package:m2_app_tarjeta_presentacion/models/profile.model.dart';
import 'package:m2_app_tarjeta_presentacion/models/technology.model.dart';
import 'package:m2_app_tarjeta_presentacion/services/profile.service.dart';

class MainProvider with ChangeNotifier {
  bool _loading = true;
  ProfileModel _profileData = ProfileModel.empty();
  int _currentSlide = 0;
  String _qrData = '';
  List<TechnologyModel> _techs = [];

  bool get loading => _loading;
  ProfileModel get profileData => _profileData;
  int get currentSlide => _currentSlide;
  String get qrData => _qrData;
  List<TechnologyModel> get techs => _techs;

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

  void setQrData(String newState) {
    _qrData = newState;
    notifyListeners();
  }

  void setTechs(List<TechnologyModel> newState) {
    _techs = newState;
    notifyListeners();
  }

  Future<void> initTechs() async {
    List<TechnologyModel> res = await ProfileService.getTechnologies();
    setTechs(res);
  }
}
