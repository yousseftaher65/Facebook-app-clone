import 'package:facebook_pojo/ui/screens/login_screen.dart';
import 'package:facebook_pojo/ui/screens/news_feed_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
   const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute:  LoginScreen.tag,
      routes: {
        LoginScreen.tag: (context)=>  const LoginScreen(),
        NewsFeedScreen.tag: (context)=> const NewsFeedScreen(),
      },
    );
  }
}
