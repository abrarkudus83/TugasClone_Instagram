import 'package:flutter/material.dart';
import 'package:flutter_project1/controller/list_makanan_controller.dart';
import 'package:flutter_project1/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Makanan")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: controller.listmakanan.length,
            itemBuilder: (context, index) {
              final makanan = controller.listmakanan[index];
              return Dismissible(
                key: ValueKey(makanan.namaMakanan),
                direction: DismissDirection.endToStart,
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),

                child: InkWell(
                  onTap: () {
                   Get.toNamed(Routes.detail_makanan, arguments: index);
                  },
                  child: Card(
                    elevation: 10,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: ListTile(
                        title: Text(
                          makanan.namaMakanan,
                          style: TextStyle(fontSize: 40),
                        ),
                        subtitle: Text(
                          "Rp. " + makanan.hargaMakanan,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}