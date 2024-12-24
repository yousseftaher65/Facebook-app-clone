import 'package:flutter/material.dart';

class PasswordInputField extends StatefulWidget {
  final String hintText;
  final String? errorText;
  final TextEditingController controller;

  const PasswordInputField(
      {required this.controller,
      required this.errorText,
      required this.hintText,
      super.key});

  @override
  State<PasswordInputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<PasswordInputField> {
  String passwordText = "";
  bool showPassword = false;

  void toggleShowPassword() {
    setState(() {
      showPassword = !showPassword; // Toggle the showPassword flag
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: !showPassword,
      autocorrect: false,
      enableSuggestions: false,
      onChanged: (value) {
        setState(() {
          passwordText = value;
        });
      },
      
      cursorErrorColor: Colors.blue ,
      cursorColor: Colors.blue,
      decoration: InputDecoration(
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xffEE403D), width: 2),
        ),
        errorText: widget.errorText,
        errorStyle: const TextStyle(fontSize: 8, color: Color(0xffEE403D)),
        fillColor: Colors.white,
        filled: true,
        suffixIcon: InkWell(
          onTap: () {
            toggleShowPassword();
          },
          child: Icon(
            showPassword ? Icons.visibility_rounded : Icons.visibility_off,
            color: const Color(0xff898F9C),
          ),
        ),
        hintText: widget.hintText,
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
