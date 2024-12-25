import 'package:flutter/material.dart';
import 'home/home_screen.dart';
import 'home/tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: HomeScreen()


    );
  }
}