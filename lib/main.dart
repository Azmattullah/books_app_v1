import 'package:books_app_v1/config/themes.dart';
import 'package:books_app_v1/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-BOOK',
      theme: lightTheme,
      home: MyWelcomePage(),
    );
  }
}
