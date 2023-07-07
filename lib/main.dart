// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:catalog_app/Pages/productpage.dart';
import 'package:catalog_app/Pages/themes/app_themes.dart';
import 'package:flutter/material.dart';

import 'Pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.themes[1],
      routes: {
        "/": (context) => HomePage(),
        "/products": (context) => ProductPage(),
      },
    );
  }
}
