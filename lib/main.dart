// lib/main.dart
import 'package:flutter/material.dart';
import 'package:ngopidulu/pages/login.dart';
import 'pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NgopiDulu',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      initialRoute: "/login",
      routes: {
        "/login": (context) => Login(),
        "/home": (context) => HomePage()
      },
    );
  }
}
