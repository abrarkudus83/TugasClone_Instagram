import 'package:flutter_project1/Controller/detailmakanan_controller.dart';
import 'package:flutter_project1/controller/list_makanan_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project1/models/makanan_model.dart';
import 'package:get/get.dart';

class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  final listController = Get.find<ListMakananController>();
  final detailController = Get.put(DetailMakananController());

  @override
  Widget build(BuildContext context) {
    final int index = Get.arguments;
    final makanan = listController.listmakanan[index];
    final detail = detailController.detailMakanan;

    return Scaffold(
      appBar: AppBar(title: Text(makanan.namaMakanan)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              detail.gambar,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    makanan.namaMakanan,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(makanan.hargaMakanan, style: TextStyle(fontSize: 18)),
                  SizedBox(height: 8),
                  Text(
                    "Rating: ${detail.rating}",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Text(detail.deskripsi, style: TextStyle(fontSize: 16)),
                  SizedBox(height: 20),
                  Text(
                    "Review",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: detail.reviews.length,
                    itemBuilder: (context, index) {
                      final review = detail.reviews[index];
                      return ListTile(
                        title: Text(review.nama),
                        subtitle: Text(review.ulasan),
                        trailing: Text("${review.bintang} ⭐"),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}