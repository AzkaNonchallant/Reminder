import 'package:flutter/material.dart';
import 'package:reminder_fe/pages/choose.dart';
import 'package:reminder_fe/pages/login_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Welcome(),

      debugShowCheckedModeBanner: false,
    );
  }
}
