import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  String labelText;
  String hintText;
  Widget emailIcon;

  CustomTextFormField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.emailIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: emailIcon,
        prefixIconColor: Colors.black,
        hintText: hintText,
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        enabledBorder:
        OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        focusedBorder:
        OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
