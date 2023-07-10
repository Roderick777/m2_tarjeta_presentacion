import 'package:m2_app_tarjeta_presentacion/services/Service.dart';

class ProfileService {
  static Future<dynamic> getProfile() async {
    try {
      String url =
          'https://run.mocky.io/v3/65b7f7a2-6c8e-4843-a2ac-8daa4b853f98';
      dynamic res = await Service.get(url);
      return res;
    } catch (e) {
      return '';
    }
  }
}
