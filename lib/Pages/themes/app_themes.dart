import 'package:flutter/material.dart';

class MyTheme {
  static List<ThemeData> themes = [
    ThemeData(
      primarySwatch: Colors.teal,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
            fontSize: 22, color: Colors.black, fontWeight: FontWeight.w500),
        bodyMedium: TextStyle(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400),
        bodySmall: TextStyle(
            fontSize: 18, color: Colors.black, fontWeight: FontWeight.w300),
      ),
      iconTheme: const IconThemeData(color: Colors.black, size: 30),
    ),
    ThemeData(
      primarySwatch: Colors.red,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
            fontSize: 22, color: Colors.black, fontWeight: FontWeight.w500),
        bodyMedium: TextStyle(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400),
        bodySmall: TextStyle(
            fontSize: 18, color: Colors.black, fontWeight: FontWeight.w300),
      ),
      iconTheme: const IconThemeData(color: Colors.black12, size: 30),
    ),
  ];
}
