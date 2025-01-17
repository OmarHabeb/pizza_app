import 'package:flutter/material.dart';
import 'package:pizza_app/Explore.dart';
import 'package:pizza_app/frist.dart';
import 'package:pizza_app/home.dart';
import 'package:pizza_app/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza_App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'frist',
      routes: {
        'welcome': (context) => welcome(),
        'frist': (context) => frist(),
        '/': (context) => home(),
        'explore': (context) => explore(),
      },
    );
  }
}
