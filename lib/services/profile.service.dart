import 'package:m2_app_tarjeta_presentacion/models/profile.model.dart';
import 'package:m2_app_tarjeta_presentacion/services/service.dart';

class ProfileService {
  static Future<ProfileModel> getProfile() async {
    String url = 'https://railsexample-production.up.railway.app/profile/1';
    dynamic res = await Service.get<ProfileModel>(url);
    return ProfileModel.fromJson(res);
  }
}
