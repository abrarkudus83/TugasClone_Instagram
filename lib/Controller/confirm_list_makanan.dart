import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class ConfirmregController extends GetxController {
  late String nama;
  late String jenisKelamin;
  late String alamat;
  late String email;
  late String noWa;
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    nama = arguments['name'];
    jenisKelamin = arguments['jenisKelamin'];
    alamat = arguments['alamat'];
    email = arguments['email'];
    noWa = arguments['noWa'];
  }
}