import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: yellowColor,
    scaffoldBackgroundColor: Colors.white,
    cardColor: Colors.white,

    // Card Theme
    cardTheme: CardTheme(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),

    // Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: yellowColor,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),

    // Text Button Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: yellowColor,
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    ),

    // Outlined Button Theme
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: yellowColor,
        side: BorderSide(color: yellowColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),

    // TextField Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey[100],
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(defaultRadius),
        borderSide: BorderSide(color: Colors.grey),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(defaultRadius),
        borderSide: BorderSide(color: Colors.white70),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(defaultRadius),
        borderSide: BorderSide(color: Colors.blue, width: 1),
      ),
      labelStyle: TextStyle(color: Colors.black),
    ),

    // AppBar Theme
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blue,
      elevation: 2,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),

    // Text Theme
    textTheme: TextTheme(
      displayMedium: TextStyle(),
      headlineMedium: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      titleLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
      labelSmall: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      labelLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      labelMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
      bodyLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      displayLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      bodyMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
      bodySmall: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Color(0xFF121212),
    cardColor: Colors.grey[900],

    // Card Theme
    cardTheme: CardTheme(
      color: Colors.grey[900],
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(defaultRadius),
        side: BorderSide(color: Colors.grey,width: 0.3)
      ),

    ),

    // Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: yellowColor,
        foregroundColor: Colors.white,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: yellowColor,
        iconColor: yellowColor

      ),
    ),

    textSelectionTheme: TextSelectionThemeData(
      selectionColor: yellowColor,
      cursorColor: Colors.black,
      selectionHandleColor: yellowColor,
    ),
    listTileTheme: ListTileThemeData(iconColor: yellowColor),
    // TextField Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.transparent,
      hintStyle: GoogleFonts.poppins(
          fontSize: 16, fontWeight: FontWeight.w100, color: Colors.grey[600]),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: yellowColor,width: 0.8),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.white10,width: 0.8),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: yellowColor,width: 0.8),
      ),
      labelStyle: GoogleFonts.poppins(
          fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white),
    ),

    textTheme: TextTheme(
      displayLarge: GoogleFonts.poppins(
          fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
      displayMedium: GoogleFonts.poppins(
          fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
      headlineLarge: GoogleFonts.poppins(
          fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
      headlineMedium: GoogleFonts.poppins(
          fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
      titleLarge: GoogleFonts.poppins(
          fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white),
      titleMedium: GoogleFonts.poppins(
          fontSize: 16, color: Colors.grey),
      titleSmall: GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
      bodyLarge: GoogleFonts.poppins(
          fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white),
      bodyMedium: GoogleFonts.poppins(
          fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white),
      bodySmall: GoogleFonts.poppins(
          fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
      labelLarge: GoogleFonts.poppins(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
      labelMedium: GoogleFonts.poppins(
          fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
      labelSmall: GoogleFonts.poppins(
          fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white),
    ),
  );
}

const yellowColor = Color(0xFFfccd6f);
const borderColor = Colors.grey;
const double defaultRadius = 24;
