import 'package:flutter_project1/Pages/listmakanan_page.dart';
import 'package:flutter_project1/Pages/confirm_reg_page.dart';
import 'package:flutter_project1/Pages/listmakanan_page.dart';
import 'package:flutter_project1/Pages/main_menu_page.dart';
import 'package:flutter_project1/Pages/registration_page.dart';
import 'package:get/get.dart';
import 'package:flutter_project1/Pages/menu_drawer_page.dart';
import 'package:flutter_project1/Pages/detailmakanan_page.dart';
import 'Pages/detailmakanan_page.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  static const String list_makanan = "/list_makanan";
  static const String detail_makanan = "/detail_makanan";
  static const String menuDrawerPage = "/menu_drawer";
  static const String main_menu = "/main_menu";

  //untuk daftar ke main.dart
  static final myPages=[
    GetPage(name: registration, page: ()=> RegistrationPage()),
    GetPage(name: confirm_registration, page: ()=> ConfirmregPage()),
    GetPage(name: list_makanan, page: ()=> ListMakananPage()),
    GetPage(name: detail_makanan, page: ()=> DetailMakananPage()),
    GetPage(name: main_menu, page: ()=> MainMenuPage()),
    GetPage(name: menuDrawerPage, page: ()=> MenuDrawerPage()),
    ];
}