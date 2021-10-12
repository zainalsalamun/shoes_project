class UserModel {
  int id;
  String name;
  String email;
  String username;
  String profilePhotoUrl;
  String token;

  UserModel({this.id, this.name, this.email, this.profilePhotoUrl, this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    email = json['email'];
    profilePhotoUrl = json['profile_photo_url'];
    token = json['token'];

    // ignore: unused_element
    Map<String, dynamic> toJson() {
      return {
        'id': id,
        'name': name,
        'username': username,
        'email': email,
        'profile_photo_url': profilePhotoUrl,
        'token': token,
      };
    }
  }
}
