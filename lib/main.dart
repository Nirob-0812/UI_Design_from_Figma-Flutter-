import 'package:flutter/material.dart';
import 'package:testme/HomePage/HomePage.dart';
import 'package:testme/LoginPage/Login.dart';
import 'package:testme/SignupPage/SignUp.dart';
import 'package:testme/SlashScreen/Splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/":(context)=>SplshScreen(),
        LoginPage.routes:(context)=>LoginPage(),
        SignUpPage.routes:(context)=>SignUpPage(),
        HomePage.routes:(context)=>HomePage(),
      },
    );
  }
}
