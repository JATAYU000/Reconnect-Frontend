import 'dart:convert';
import 'package:reconnect/src/shared_pref/shared_prefs.dart' as sp;

import 'package:http/http.dart' as http;
class User {
  final String Username;
  final String Email;
  final String Password;

  User({
    required this.Username,
    required this.Email,
    required this.Password,
  });
  factory User.fromJson(Map<String,dynamic> json) => User(
    Username: json['username'], 
    Email: json['email'], 
    Password: json['password']);
}
List<User> UserData = [];


Future<String> fetchUserPost(name,email,password) async {

  Map<String,dynamic> request = {
    'username': name,
    'email' : email,
    'password': password,
  };
  print(request);

  final url = Uri.parse("http://192.168.181.30:8000/api/login/");
  final response = await http.post(url,body: request);
  print("status code not 200 : ${response.statusCode}");
  print("Exception: ${response}");
  if (response.statusCode == 200){
    sp.addBoolToSF(true);
    // print(json.decode(response.body));
    
    return response.body;
  } else{
    sp.addBoolToSF(false);
    // print("status code not 200 : ${response.statusCode}");
    throw Exception("Failed to load post");
  }
}