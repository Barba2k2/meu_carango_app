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
        color: AppColors.blackColor, // Adicionado cor
      ),
      displayMedium: GoogleFonts.rubik(
        fontSize: 48,
        color: AppColors.blackColor, // Adicionado cor
      ),
      displaySmall: GoogleFonts.rubik(
        fontSize: 32,
        color: AppColors.blackColor, // Adicionado cor
      ),

      // Headline
      headlineLarge: GoogleFonts.rubik(
        fontSize: 40,
        color: AppColors.blackColor, // Adicionado cor
      ),
      headlineMedium: GoogleFonts.rubik(
        fontSize: 36,
        color: AppColors.blackColor, // Adicionado cor
      ),
      headlineSmall: GoogleFonts.rubik(
        fontSize: 32,
        color: AppColors.blackColor, // Adicionado cor
      ),

      // Subhead
      labelLarge: GoogleFonts.nunito(
        fontWeight: FontWeight.bold,
        color: AppColors.blackColor, // Alterado para preto
        fontSize: 18,
      ),
      labelMedium: GoogleFonts.nunito(
        fontWeight: FontWeight.bold,
        color: AppColors.whiteColor, // Alterado para preto
        fontSize: 16,
      ),
      labelSmall: GoogleFonts.nunito(
        fontWeight: FontWeight.bold,
        color: AppColors.blackColor, // Alterado para preto
        fontSize: 14,
      ),

      // Title
      titleLarge: GoogleFonts.rubik(
        fontSize: 28,
        color: AppColors.blackColor,
      ),
      titleMedium: GoogleFonts.rubik(
        fontSize: 24,
        color: AppColors.blackColor,
      ),
      titleSmall: GoogleFonts.mulish(
        color: AppColors.primaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),

      // Body
      bodyLarge: GoogleFonts.rubik(
        fontSize: 16,
        color: AppColors.blackColor,
      ),
      bodyMedium: GoogleFonts.rubik(
        fontSize: 14,
        color: AppColors.blackColor,
      ),
      bodySmall: GoogleFonts.rubik(
        fontSize: 12,
        color: AppColors.blackColor,
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
        color: AppColors.whiteColor,
      ),
      displayMedium: GoogleFonts.rubik(
        fontSize: 48,
        color: AppColors.whiteColor,
      ),
      displaySmall: GoogleFonts.rubik(
        fontSize: 32,
        color: AppColors.whiteColor,
      ),

      // Headline
      headlineLarge: GoogleFonts.rubik(
        fontSize: 40,
        color: AppColors.whiteColor,
      ),
      headlineMedium: GoogleFonts.rubik(
        fontSize: 36,
        color: AppColors.whiteColor,
      ),
      headlineSmall: GoogleFonts.rubik(
        fontSize: 32,
        color: AppColors.whiteColor,
      ),

      // Subhead
      labelLarge: GoogleFonts.nunito(
        fontWeight: FontWeight.bold,
        color: AppColors.blackColor,
        fontSize: 18,
      ),
      labelMedium: GoogleFonts.nunito(
        fontWeight: FontWeight.bold,
        color: AppColors.whiteColor,
        fontSize: 16,
      ),
      labelSmall: GoogleFonts.nunito(
        fontWeight: FontWeight.bold,
        color: AppColors.blackColor,
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
        color: AppColors.whiteColor,
      ),
      bodyMedium: GoogleFonts.rubik(
        fontSize: 14,
        color: AppColors.whiteColor,
      ),
      bodySmall: GoogleFonts.rubik(
        fontSize: 12,
        color: AppColors.whiteColor,
      ),
    ),
  );
}
