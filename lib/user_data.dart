import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  final String name;
  final String message;
  final String imgUrl;

  User({required this.name, required this.message, required this.imgUrl});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name']['first'],
      message: json['login']['username'],
      imgUrl: json['picture']['thumbnail'],
    );
  }
}

class UserService {
  Future<List<User>> fetchData() async {
    final response =
        await http.get(Uri.parse("https://randomuser.me/api/?results=10"));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      final List<User> list = [];

      for (var i = 0; i < data['results'].length; i++) {
        final entry = data['results'][i];
        list.add(User.fromJson(entry));
      }
      return list;
    } else {
      throw Exception("Http failed");
    }
  }
}
