import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const baseUrl = "http://192.168.1.5:8000/api";

  static Future login(String email, String password) async {
    final response = await http.post(
      Uri.parse("$baseUrl/login"),
      headers: {"Accept": "Application/json"},
      body: {
        "email": email,
        "password": password,
      },
    );

    return jsonDecode(response.body);
  }

  static Future register(String name, String username, String email, String Password) async {
    final response = await http.post(
      Uri.parse("$baseUrl/register"),
      headers: {"Accept": "Application/json"},
      body:  {
        "name": name,
        "username": username,
        "email": email,
        "password": Password
      }
    );

    return jsonDecode(response.body);
  }

  static Future getReminders(String token) async {
    final response = await http.get(
      Uri.parse("$baseUrl/reminders"),
      headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      },
    );

    return jsonDecode(response.body);
  }
}