import 'package:facebook_pojo/ui/screens/news_feed_screen.dart';
import 'package:facebook_pojo/ui/widgets/email_input_field.dart';
import 'package:facebook_pojo/ui/widgets/password_input_field.dart';
import 'package:facebook_pojo/ui/widgets/log_btn.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String tag = "/";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String? emailError;
  String? passwordError;

  final RegExp emailRegex =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
  final RegExp passwordRegex = RegExp(
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$%^&*(),.?":{}|<>_-])');
  final String passInvalid =
      '• Password must be at least 8 characters long.\n • Uppercase letter is missing.\n • Lowercase letter is missing.\n • Digit is missing.\n • Special character is missing.\n';

  bool isValidationAttempted = false;

  void validateInputs() {
    bool hasError = false;

    setState(() {
      emailError = null;
      passwordError = null;

      String email = emailController.text.trim();
      String password = passwordController.text.trim();

      if (!emailRegex.hasMatch(email)) {
        emailError = 'Please enter your email or mobile number correctly.';
        hasError = true;
      }

      if (password.length < 8) {
        passwordError = '• Password must be at least 8 characters long.\n';
        hasError = true;
      }
      if (!passwordRegex.hasMatch(password)) {
        passwordError = passInvalid;
        hasError = true;
      }

      // Contains at least one uppercase letter
      // if (!password.contains(RegExp(r'[A-Z]'))) {
      //   passwordError += '• Uppercase letter is missing.\n';
      //   hasError = true;
      // }

      // // Contains at least one lowercase letter
      // if (!password.contains(RegExp(r'[a-z]'))) {
      //   passwordError += '• Lowercase letter is missing.\n';
      //   hasError = true;
      // }

      // // Contains at least one digit
      // if (!password.contains(RegExp(r'[0-9]'))) {
      //   passwordError += '• Digit is missing.\n';
      //   hasError = true;
      // }
      // // Contains at least one special character
      // if (!password.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>_-]'))) {
      //   passwordError += '• Special character is missing.\n';
      //   hasError = true;
      // }

      isValidationAttempted = true;
    });

    // Navigate after the current frame finishes
    if (!hasError) {
      Navigator.pushReplacementNamed(context, NewsFeedScreen.tag);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'assets/logos/App Rounded Logo.png',
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  EmailInputField(
                    controller: emailController,
                    errorText: isValidationAttempted ? emailError : null,
                    hintText: 'Email or mobile number',
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  PasswordInputField(
                    controller: passwordController,
                    errorText: isValidationAttempted ? passwordError : null,
                    hintText: 'Password',
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  LogBtn(
                    onClick: validateInputs,
                    btnColor: const Color(0xff1877F2),
                    btnText: 'Login',
                    textColor: Colors.white,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Forgetten Password?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(
                        0xff898F9C,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  LogBtn(
                    onClick: () {},
                    btnColor: Colors.white,
                    btnText: 'Create Account',
                    textColor: const Color(0xff1877F2),
                    borderColor: false,
                  ),
                  Container(
                    constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height * 0.015),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/logos/Meta Logo.png',
                      width: 98,
                      height: 40,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
