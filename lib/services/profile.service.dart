import 'package:m2_app_tarjeta_presentacion/models/profile.model.dart';
import 'package:m2_app_tarjeta_presentacion/models/technology.model.dart';
import 'package:m2_app_tarjeta_presentacion/services/service.dart';

class ProfileService {
  static String urlBase = 'https://railsexample-production.up.railway.app/';

  static Future<ProfileModel> getProfile() async {
    String url = '${urlBase}profile/1';
    dynamic res = await Service.get<ProfileModel>(url);
    return ProfileModel.fromJson(res);
  }

  static Future<List<TechnologyModel>> getTechnologies() async {
    String url = '${urlBase}profile/technologies';
    dynamic res = await Service.get<TechnologyModel>(url);
    List<TechnologyModel> technologies = [];
    for (int i = 0; i < res['list'].length; i++) {
      technologies.add(TechnologyModel.fromJson(res['list'][i]));
    }
    return technologies;
  }
}
