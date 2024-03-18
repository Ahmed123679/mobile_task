import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  String placeHolder;
  bool isPassword;
  TextInput({super.key, this.placeHolder = '', this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        hintText: this.placeHolder,
      ),
      obscureText: this.isPassword,
      validator: onValidate,
    );
  }

  String? onValidate(String? input) {
    if (input == null || input.isEmpty) {
      return 'please provide the detalis';
    }
    return null;
  }
}
