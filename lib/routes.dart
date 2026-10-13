import 'package:flutter_project1/pages/confirm_reg_page.dart';
import 'package:flutter_project1/pages/listmakanan_page.dart';
import 'package:flutter_project1/pages/registration_page.dart';
import 'package:get/get.dart';

import 'pages/detailmakanan_page.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  static const String list_makanan = "/list_makanan";
  static const String detail_makanan = "/detail_makanan";

  //untuk daftar ke main.dart
  static final myPages=[
    GetPage(name: registration, page: ()=> RegistrationPage()),
    GetPage(name: confirm_registration, page: ()=> ConfirmregPage()),
    GetPage(name: list_makanan, page: ()=> ListmakananPage()),
    GetPage(name: detail_makanan, page: ()=> DetailMakananPage()),
    ];
}