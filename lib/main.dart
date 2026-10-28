import 'package:flutter_project1/Pages/registration_page.dart';
import 'package:flutter_project1/Pages/confirm_reg_page.dart';
import 'package:flutter_project1/Pages/kalkulator_page.dart';
import 'package:flutter_project1/landing_page.dart';
import 'Pages/menu_drawer_page.dart';
import 'package:flutter_project1/routes.dart';
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
    return GetMaterialApp(
      title: "My Learning App",
      initialRoute: Routes.menuDrawerPage,
      getPages: Routes.myPages,
    );
  }
}