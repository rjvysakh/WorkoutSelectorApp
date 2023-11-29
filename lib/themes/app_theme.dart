import 'package:flutter/material.dart';

/// Utility class for application theme configurations.
class AppTheme {
  // Ensure the class cannot be instantiated.
  AppTheme._();

  /// Dark theme configuration.
  static ThemeData get darkTheme => ThemeData(
        scaffoldBackgroundColor: const Color(0xFF27282A),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E1E),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Color(0xFFFFFEFF)),
          bodyMedium: TextStyle(color: Color(0xFFFFFEFF)),
          // Add more text styles as needed
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Color(0xFF4CAF50),
          textTheme: ButtonTextTheme.primary,
        ),
        cardColor: const Color.fromARGB(255, 66, 66, 66),
      );

  /// Light theme configuration.
  static ThemeData get lightTheme => ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFEFEFF),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black),
          bodyMedium: TextStyle(color: Colors.black),
          // Add more text styles as needed
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Color(0xFF4CAF50),
          textTheme: ButtonTextTheme.primary,
        ),
        // Add more theme configurations as needed
      );
}
