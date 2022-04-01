import 'package:flutter/material.dart';

class MyInputDecor {
  static InputDecoration myTextFormField(String text) {
    return InputDecoration(
      hintText: text,
      hintStyle: TextStyle(
        fontSize: 16,
        color: Color(0xFF565A57),
      ),
    );
  }
}
