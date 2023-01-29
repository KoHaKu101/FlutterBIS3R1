import 'package:flutter/material.dart';
import 'package:lab1bis3r1/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, String> startdata = {
      "username": "",
      "password": "",
    };

    return MaterialApp(
      home: login(comingData: startdata),
    );
  }
}
