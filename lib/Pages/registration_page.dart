import 'package:flutter/material.dart';
import 'package:flutter_project1/components/custom_textfield.dart';
import 'package:flutter_project1/controller/registration_controller.dart';
import 'package:flutter_project1/routes.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtNoWa = TextEditingController();

    final jenisKelamin = 'Laki-laki'.obs;

    return Scaffold(
      appBar: AppBar(title: Text("Registration Page")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CustomTextfield(txtController: txtNama, myhint: "input name"),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: Obx(() {
                  return DropdownButton<String>(
                    value: jenisKelamin.value,
                    isExpanded: true,
                    items: [
                      DropdownMenuItem(
                        value: "Laki-laki",
                        child: Text("Laki-laki"),
                      ),
                      DropdownMenuItem(
                        value: "Perempuan",
                        child: Text("Perempuan"),
                      ),
                    ],
                    onChanged: (value) {
                      jenisKelamin.value = value!;
                    },
                  );
                }),
            ),
            SizedBox(height: 10),
            CustomTextfield(txtController: txtAlamat, myhint: "input alamat"),
            SizedBox(height: 10),
            CustomTextfield(txtController: txtEmail, myhint: "input email"),
            SizedBox(height: 10),
            CustomTextfield(
              txtController: txtNoWa,
              myhint: "input No. WhatsApp",
            ),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                    Routes.confirm_registration,
                    arguments: {
                      'name': txtNama.text.toString(),
                      'jenisKelamin': jenisKelamin.value,
                      'alamat': txtAlamat.text.toString(),
                      'email': txtEmail.text.toString(),
                      'noWa': txtNoWa.text.toString(),
                    },
                  );
                },
                child: Text("Send"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}