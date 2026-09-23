import 'package:flutter_project1/kalkulator_page.dart';
import 'package:flutter_project1/landing_page.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'Pages/login_Instagram.dart';


import 'login_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: LoginInstagram());
  }
}