import 'package:m2_app_tarjeta_presentacion/models/profile.model.dart';
import 'package:m2_app_tarjeta_presentacion/services/service.dart';

class ProfileService {
  static Future<ProfileModel> getProfile() async {
    String url = 'https://run.mocky.io/v3/65b7f7a2-6c8e-4843-a2ac-8daa4b853f98';
    dynamic res = await Service.get<ProfileModel>(url);
    return ProfileModel.fromJson(res);
  }
}
