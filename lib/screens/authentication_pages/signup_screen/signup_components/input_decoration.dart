import 'package:flutter/material.dart';

class MyInputDecor {
  static InputDecoration myTextFormField(String text) {
    return InputDecoration(
      label: Text(text),
      hintText: text,
      hintStyle: const TextStyle(
        fontSize: 16,
        color: Color(0xFF565A57),
      ),
    );
  }
}
