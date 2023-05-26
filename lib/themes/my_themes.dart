import 'package:apple_store/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  textTheme: TextTheme(
    displayLarge: GoogleFonts.kanit(
        color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
    titleMedium: GoogleFonts.kanit(
        fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
    titleSmall: GoogleFonts.poppins(color: Colors.black45, fontSize: 14),
    headlineSmall: GoogleFonts.poppins(
      color: Colors.black,
    ),
  ),
);

class MyThemes {
  // There is Light Theme
  static ThemeData lightTheme() {
    return ThemeData(
        fontFamily: 'SanFrancisco',
        textTheme: TextTheme(
          titleLarge: GoogleFonts.montserrat(
              color: blackColor, fontSize: 22, fontWeight: FontWeight.bold),

          titleMedium: GoogleFonts.montserrat(
              color: blackColor, fontSize: 18, fontWeight: FontWeight.bold),
          bodyLarge: GoogleFonts.montserrat(
              color: blackColor, fontSize: 16, fontWeight: FontWeight.w700),
          bodyMedium: GoogleFonts.montserrat(
              color: Colors.black45, fontSize: 12, fontWeight: FontWeight.w600),
          bodySmall: GoogleFonts.montserrat(
              color: blackColor, fontSize: 10, fontWeight: FontWeight.w600),
          labelSmall: GoogleFonts.montserrat(
            color: deActiveColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          labelMedium: GoogleFonts.montserrat(
            color: deActiveColor,
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),

          // titleMedium:
          //     TextStyle(fontFamily: "SanFrancisco", color: Colors.amber)
        ));
  }

// There is Dark Theme
  static ThemeData darkTheme() {
    return ThemeData(
        textTheme: TextTheme(
            bodyMedium: GoogleFonts.lexend(
      color: blackColor,
    )));
  }
}
