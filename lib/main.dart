import 'package:flutter/material.dart';
import 'package:lab1bis3r1/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, String> dataRegister = {
      "username": "Username",
      "password": "Password",
    };

    return MaterialApp(
      home: login(comingData: dataRegister),
    );
  }
}
