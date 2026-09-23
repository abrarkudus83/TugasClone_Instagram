import 'package:flutter/material.dart';

class ButtonLanjut extends StatelessWidget {
  const ButtonLanjut({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                height: 50,
                child: ElevatedButton(onPressed: () {}, child: Text("Lanjut")),
              );
  }
}