import 'package:flutter/material.dart';
import 'package:flutter_project1/MenuDrawer/historydrawer.dart';
import 'package:flutter_project1/MenuDrawer/homedrawer.dart';
import 'package:flutter_project1/MenuDrawer/profiledrawer.dart';
import 'package:get/get.dart';

class MenuDrawerController extends GetxController {
  var selectedIndex = 0.obs;

  final List<String> titles = [
    'Home',
    'History',
    'Profile',
  ];

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [
    Homedrawer(),
    Historydrawer(),
    Profiledrawer(),
  ];
}