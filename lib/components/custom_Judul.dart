import 'package:flutter/material.dart';

class Judul extends StatelessWidget {

  final String myjudul;


  const Judul({
    super.key, required this.myjudul
    });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Instagram",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      );
  }
}