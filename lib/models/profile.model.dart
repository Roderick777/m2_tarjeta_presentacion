class ProfileModel {
  const ProfileModel({
    required this.avatar,
    required this.name,
    required this.position,
    required this.phone,
    required this.email,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      avatar: json['avatar'],
      name: json['name'],
      position: json['position'],
      phone: json['phone'],
      email: json['email'],
    );
  }

  factory ProfileModel.empty() {
    return const ProfileModel(
      avatar: '',
      name: '',
      position: '',
      phone: '',
      email: '',
    );
  }

  final String avatar;
  final String name;
  final String position;
  final String phone;
  final String email;
}
