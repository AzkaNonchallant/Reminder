import '../services/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  Future<bool> login(String email, String password) async {
    final data = await ApiService.login(email,password);

    if (data['token'] != null) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', data['token']);
      return true;
    }

    return false;
  }
}