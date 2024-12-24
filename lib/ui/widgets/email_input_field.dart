import 'package:flutter/material.dart';

class EmailInputField extends StatelessWidget {
  final String hintText;
  final String? errorText;
  final TextEditingController controller;

  const EmailInputField(
      {required this.controller,
      required this.errorText,
      required this.hintText,
      super.key});


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      enableSuggestions: true,
      cursorErrorColor: Colors.blue,
      cursorColor: Colors.blue,
      decoration: InputDecoration(
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xffEE403D), width: 2),
        ),
        errorText: errorText,
        errorStyle: const TextStyle(fontSize: 8, color: Color(0xffEE403D)),
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 16, color: Color(0xff898F9C)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.transparent, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xff898F9C), width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xff898F9C), width: 2),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xff898F9C), width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xffEE403D), width: 2),
        ),
      ),
    );
  }
}