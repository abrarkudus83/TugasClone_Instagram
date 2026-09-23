import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {

 final TextEditingController txtController;
 final String myhint;

  const CustomTextfield({
    super.key, 
    required this.txtController, 
    required this.myhint
    });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,

      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hint: Text(myhint),
      ),
    );
  }
}