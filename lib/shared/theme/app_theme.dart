import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getAppTheme() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        centerTitle: false,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF0f278b),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffd3d3d3),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffd3d3d3),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffd3d3d3),
          ),
        ),
      ),
      primaryColor: const Color(0xFF0f278b),
    );
  }
}
