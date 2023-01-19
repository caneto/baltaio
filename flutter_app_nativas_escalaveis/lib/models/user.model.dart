// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  String id;
  String name;
  String email;
  String image;
  String username;
  String password;
  String role;
  String token;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.image,
    required this.username,
    required this.password,
    required this.role,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'image': image,
      'username': username,
      'password': password,
      'role': role,
      'token': token,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: (map["id"] ?? '') as String,
      name: (map["name"] ?? '') as String,
      email: (map["email"] ?? '') as String,
      image: (map["image"] ?? '') as String,
      username: (map["username"] ?? '') as String,
      password: (map["password"] ?? '') as String,
      role: (map["role"] ?? '') as String,
      token: (map["token"] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, image: $image, username: $username, password: $password, role: $role, token: $token)';
  }
}
