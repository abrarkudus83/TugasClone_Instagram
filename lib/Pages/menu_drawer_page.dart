import 'package:flutter/material.dart';
import 'package:flutter_project1/Controller/menu_drawer_controller.dart';
import 'package:get/get.dart';

class MenuDrawerPage extends StatelessWidget {
  const MenuDrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Inisialisasi controller
    final menuDrawerController = Get.put(MenuDrawerController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),

      // IndexedStack wajib dibungkus Obx agar layarnya mau berganti
      body: Obx(
        () => IndexedStack(
          index: menuDrawerController.selectedIndex.value,
          children: menuDrawerController.listPages,
        ),
      ),

      // Menu Drawer samping
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: Center(
                child: Text(
                  'Menu Aplikasi',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // Item 1: Home
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Home'),
              onTap: () {
                menuDrawerController.changePage(0);
                Navigator.pop(context); // Tutup drawer
              },
            ),

            // Item 2: History
            ListTile(
              leading: const Icon(Icons.history_outlined),
              title: const Text('History'),
              onTap: () {
                menuDrawerController.changePage(1);
                Navigator.pop(context);
              },
            ),

            // Item 3: Profile
            ListTile(
              leading: const Icon(Icons.person_2_outlined),
              title: const Text('Profile'),
              onTap: () {
                menuDrawerController.changePage(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}