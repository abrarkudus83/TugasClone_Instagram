import 'package:flutter_project1/controller/list_makanan_controller.dart';
import 'package:flutter_project1/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes.dart';

class ListmakananPage extends StatelessWidget {
  ListmakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Makanan")),
      body: ListView.builder(
        itemCount: controller.listmakanan.length,
        itemBuilder: (context, index) {
          final makanan = controller.listmakanan[index];
          return ListTile(
            title: Text(makanan.namaMakanan),
            subtitle: Text(makanan.hargaMakanan),
            onTap: () {
              Get.toNamed(Routes.detail_makanan, arguments: index);
            },
          );
        },
      ),
    );
  }
}