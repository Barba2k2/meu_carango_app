import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../design_system.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.whiteColor,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
    ),
    textTheme: TextTheme(
      // Display
      displayLarge: GoogleFonts.rubik(
        fontSize: 64,
      ),
      displayMedium: GoogleFonts.rubik(
        fontSize: 48,
      ),
      displaySmall: GoogleFonts.rubik(
        fontSize: 32,
      ),

      // Headline
      headlineLarge: GoogleFonts.rubik(
        fontSize: 40,
      ),
      headlineMedium: GoogleFonts.rubik(
        fontSize: 36,
      ),
      headlineSmall: GoogleFonts.rubik(
        fontSize: 32,
      ),

      // Title
      titleLarge: GoogleFonts.rubik(
        fontSize: 28,
      ),
      titleMedium: GoogleFonts.rubik(
        fontSize: 24,
      ),
      titleSmall: GoogleFonts.rubik(
        fontSize: 20,
      ),

      // Body
      bodyLarge: GoogleFonts.rubik(
        fontSize: 16,
      ),
      bodyMedium: GoogleFonts.rubik(
        fontSize: 14,
      ),
      bodySmall: GoogleFonts.rubik(
        fontSize: 12,
      ),
    ),
  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.whiteColor,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
    ),
    textTheme: TextTheme(
      // Display
      displayLarge: GoogleFonts.rubik(
        fontSize: 64,
      ),
      displayMedium: GoogleFonts.rubik(
        fontSize: 48,
      ),
      displaySmall: GoogleFonts.rubik(
        fontSize: 32,
      ),

      // Headline
      headlineLarge: GoogleFonts.rubik(
        fontSize: 40,
      ),
      headlineMedium: GoogleFonts.rubik(
        fontSize: 36,
      ),
      headlineSmall: GoogleFonts.rubik(
        fontSize: 32,
      ),

      // Subhead
      labelLarge: GoogleFonts.nunito(
        fontWeight: FontWeight.bold,
        color: AppColors.whiteColor,
        fontSize: 18,
      ),
      labelMedium: GoogleFonts.nunito(
        fontWeight: FontWeight.bold,
        color: AppColors.whiteColor,
        fontSize: 16,
      ),
      labelSmall: GoogleFonts.nunito(
        fontWeight: FontWeight.bold,
        color: AppColors.whiteColor,
        fontSize: 14,
      ),

      // Title
      titleLarge: GoogleFonts.rubik(
        fontSize: 28,
      ),
      titleMedium: GoogleFonts.rubik(
        fontSize: 24,
      ),
      titleSmall: GoogleFonts.mulish(
        color: AppColors.primaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),

      // Body
      bodyLarge: GoogleFonts.rubik(
        fontSize: 16,
      ),
      bodyMedium: GoogleFonts.rubik(
        fontSize: 14,
      ),
      bodySmall: GoogleFonts.rubik(
        fontSize: 12,
      ),
    ),
  );
}
