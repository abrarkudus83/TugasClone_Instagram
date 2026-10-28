import 'package:flutter_project1/Pages/detailmakanan_page.dart';
import 'package:flutter_project1/models/detailmakanan_model.dart';
import 'package:get/get.dart';

class DetailMakananController extends GetxController {
  late DetailMakananModel detailMakanan;

  List<DetailMakananModel> listDetailMakanan = [
    DetailMakananModel(
      gambar: "https://www.dapurkobe.co.id/wp-content/uploads/nasi-goreng-kencur-kemangi.jpg",
      deskripsi: "Nasi goreng dengan bumbu khas yang gurih dan lezat.",
      rating: 4.8,
      reviews: [
        ReviewModel(
          nama: "Budi",
          ulasan: "Rasanya enak dan porsinya banyak.",
          bintang: 5,
        ),
        ReviewModel(
          nama: "Andi",
          ulasan: "Bumbunya pas dan sangat nikmat.",
          bintang: 5,
        ),
      ],
    ),
    DetailMakananModel(
      gambar: "https://www.dapurkobe.co.id/wp-content/uploads/mie-goreng-saus-tiram.jpg",
      deskripsi: "Mie goreng dengan bumbu yang gurih dan topping yang lengkap.",
      rating: 4.7,
      reviews: [
        ReviewModel(
          nama: "Sinta",
          ulasan: "Mienya enak dan tidak terlalu berminyak.",
          bintang: 5,
        ),
        ReviewModel(
          nama: "Rina",
          ulasan: "Rasanya cukup enak.",
          bintang: 4,
        ),
      ],
    ),
    DetailMakananModel(
      gambar: "https://www.dapurkobe.co.id/wp-content/uploads/ayam-panggang.jpg",
      deskripsi: "Ayam bakar dengan bumbu manis gurih dan aroma yang menggugah selera.",
      rating: 4.9,
      reviews: [
        ReviewModel(
          nama: "Doni",
          ulasan: "Ayamnya empuk dan bumbunya meresap.",
          bintang: 5,
        ),
        ReviewModel(
          nama: "Fajar",
          ulasan: "Sangat enak dan cocok dengan sambalnya.",
          bintang: 5,
        ),
      ],
    ),
    DetailMakananModel(
      gambar: "https://www.dapurkobe.co.id/wp-content/uploads/sate-ayam.jpg",
      deskripsi: "Sate dengan potongan daging yang lembut dan bumbu kacang yang lezat.",
      rating: 4.6,
      reviews: [
        ReviewModel(
          nama: "Rizal",
          ulasan: "Dagingnya empuk dan bumbu kacangnya enak.",
          bintang: 5,
        ),
        ReviewModel(
          nama: "Agus",
          ulasan: "Rasanya enak tetapi porsinya sedikit.",
          bintang: 4,
        ),
      ],
    ),
    DetailMakananModel(
      gambar: "https://rricoid-assets.obs.ap-southeast-4.myhuaweicloud.com/berita/1/images/1689391542821-images_(22)/1689391542821-images_(22).jpeg",
      deskripsi: "Nasi Padang dengan lauk dan bumbu khas Minangkabau.",
      rating: 4.8,
      reviews: [
        ReviewModel(
          nama: "Dimas",
          ulasan: "Bumbunya kuat dan sangat enak.",
          bintang: 5,
        ),
        ReviewModel(
          nama: "Yoga",
          ulasan: "Pilihan lauknya banyak.",
          bintang: 5,
        ),
      ],
    ),
    DetailMakananModel(
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2bw2y5WIK0S4jS69kUdPfmI7hXt5Mah0qqAsFLmDOQ2jhCWOVrl8oRBuB&s=10",
      deskripsi: "Nasi liwet dengan cita rasa gurih dan aroma yang khas.",
      rating: 4.7,
      reviews: [
        ReviewModel(
          nama: "Adit",
          ulasan: "Nasinya gurih dan cocok dengan lauknya.",
          bintang: 5,
        ),
        ReviewModel(
          nama: "Raka",
          ulasan: "Rasanya enak dan mengenyangkan.",
          bintang: 4,
        ),
      ],
    ),
  ];

  @override
  void onInit() {
    int index = Get.arguments;
    detailMakanan = listDetailMakanan[index];
    super.onInit();
  }
}