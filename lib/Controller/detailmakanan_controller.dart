import 'package:flutter_project1/models/detailmakanan_model.dart';
import 'package:get/get.dart';

class DetailMakananController extends GetxController {
  late DetailMakananModel detailMakanan;

  List<DetailMakananModel> listDetailMakanan = [
    DetailMakananModel(
      gambar: "https://images.unsplash.com/photo-1603133872878-684f208fb84b",
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
      gambar: "https://images.unsplash.com/photo-1556761223-4c4282c73f77",
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
      gambar: "https://images.unsplash.com/photo-1532550907401-a500c9a57435",
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
      gambar: "https://images.unsplash.com/photo-1529563021893-cc83c992d75d",
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
      gambar: "https://images.unsplash.com/photo-1512058564366-18510be2db19",
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
      gambar: "https://images.unsplash.com/photo-1601050690597-df0568f70950",
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