import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:reminder_fe/pages/choose.dart';
import 'package:reminder_fe/pages/home_pages.dart';
import 'package:reminder_fe/pages/login_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePages(),

      debugShowCheckedModeBanner: false,
    );
  }
}
