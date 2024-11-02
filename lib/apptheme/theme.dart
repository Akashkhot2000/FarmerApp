// lib/theme.dart
import 'package:flutter/material.dart';

final ThemeData customTheme = ThemeData(
  // Define the default brightness and colors.
  brightness: Brightness.light,
  primaryColor: Colors.green,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
  scaffoldBackgroundColor: Colors.grey[200],

  // Customize the text theme.
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
    bodyMedium: TextStyle(fontSize: 16.0, color: Colors.grey),
    bodySmall: TextStyle(fontSize: 14.0, color: Colors.black87),
    titleLarge: TextStyle(
        fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.green),
  ),

  // Customize the button theme.
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.green,
      // foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),

  // Customize the AppBar theme.
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.green,
    foregroundColor: Colors.white,
    elevation: 0,
  ),

  // Other custom theme settings.
  cardTheme: CardTheme(
    color: Colors.white,
    shadowColor: Colors.green.withOpacity(0.5),
    elevation: 8,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),

  useMaterial3: false,
);
