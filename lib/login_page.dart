import 'package:flutter/material.dart';
import 'package:flutter_project1/components/Custom_textfield.dart';
import 'package:flutter_project1/components/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController txtUsername = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";

  @override
  void dispose() {
    txtUsername.dispose();
    txtPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Column(
        children: [
          Text(
            "Welcome to Login Page $statusLogin",
            style: const TextStyle(
              fontSize: 20,
              color: Colors.blue,
              fontStyle: FontStyle.italic,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: CustomTextfield(
              txtController: txtUsername,
              myhint: "Enter your username",
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: CustomTextfield(
              txtController: txtPassword,
              myhint: "Enter your password",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                onPressed: () {
                  setState(() {
                    if (txtUsername.text == "admin" &&
                        txtPassword.text == "admin") {
                      statusLogin = "Login Success";
                    } else {
                      statusLogin = "Login Failed";
                    }
                  });
                },
                text: "Login",
              ),
              CustomButton(
                onPressed: () {
                  // Tambahkan logika registrasi di sini
                },
                text: "Register",
              ),
            ],
          ),
        ],
      ),
    );
  }
}