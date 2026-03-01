import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:get_storage/get_storage.dart';

class ReminderController extends GetxController {

  var reminders = [].obs;
  var isLoading = true.obs;

  final box = GetStorage();

  String baseUrl = "http://192.168.1.5:8000/api";

  @override
  void onInit() {
    fetchReminders();
    super.onInit();
  }

  Future<void> fetchReminders() async {

    final token = box.read("token");

    final response = await http.get(
      Uri.parse("$baseUrl/reminders"),
      headers: {
        "Authorization": "Bearer $token",
        "Accept": "application/json"
      },
    );

    if (response.statusCode == 200) {
      reminders.value = jsonDecode(response.body);
    }

    isLoading.value = false;
  }
}