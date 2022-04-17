import 'package:flutter/material.dart';
import 'package:water_delevary/screen/home_screen.dart';
import 'package:water_delevary/screen/login_screen.dart';
import 'package:water_delevary/screen/sign_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      // home: LoginPage(),
      // home: SignUpPage(),
    );
  }
}
