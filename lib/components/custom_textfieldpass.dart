import 'package:flutter/material.dart';

class TextPass extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
                decoration: InputDecoration(
                  hintText: "input pw",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  prefixIcon: Icon(Icons.phone_android),
                ),
              );
  }
}