class TechnologyModel {
  TechnologyModel({
    required this.id,
    required this.name,
    required this.icon,
  });
  int id;
  String name;
  String icon;

  factory TechnologyModel.fromJson(Map<String, dynamic> json) {
    return TechnologyModel(
      id: json['id'],
      name: json['name'],
      icon: json['icon'],
    );
  }
}
