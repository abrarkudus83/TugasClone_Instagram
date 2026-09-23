import 'package:flutter/material.dart';
import 'package:flutter_project1/components/custom_buttonapp.dart';
import 'package:flutter_project1/components/custome_buttonlanjut.dart';
import 'package:flutter_project1/components/custom_textfieldpass.dart';
import 'package:flutter_project1/components/custom_Judul.dart';
class LoginInstagram extends StatefulWidget {
  const LoginInstagram({super.key});

  @override
  State<LoginInstagram> createState() => _LoginInstagramState();
}

class _LoginInstagramState extends State<LoginInstagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.help_outline)),
                ],
              ),
              
              Judul(myjudul: "Instagram"),

              SizedBox(height: 20),
              TextPass(), // panggil class TextPass dari file custom_textfieldpass.dart
              SizedBox(height: 20),
              ButtonLanjut(), // panggil class ButtonLanjut dari file custome_buttonlanjut.dart
              SizedBox(height: 20),
              SizedBox(height: 20),
              ButtonApp(), // panggil class ButtonApp dari file custom_buttonapp.dart
              SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: "Dengan masuk di sini, kamu menyetujui "),
                    TextSpan(
                      text: "Syarat & Ketentuan",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 160, 54, 8),
                      ),
                    ),
                    TextSpan(text: " serta "),
                    TextSpan(
                      text: "Kebijakan Privasi",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 176, 43, 13),
                      ),
                    ),
                    TextSpan(text: " Instagram."),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}