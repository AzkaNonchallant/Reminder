import '../services/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
   Future<bool> login(String email, String password) async {

    final response = await ApiService.login(email, password);

    if (response['token'] != null) {

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', response['token']);

      return true;
    }

    return false;
  }

  Future<bool> register(String name, String username, String email, String password) async {

    final response = await ApiService.register(name, username, email, password);

  if (response['token'] != null) {

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', response['token']);

    return true;
  }

  return false;
  }
}