import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

ThemeData get appTheme => ThemeData.light().copyWith(
      primaryColor: AppColors.primary,
      primaryTextTheme: GoogleFonts.nunitoTextTheme(
        ThemeData.light().textTheme.apply(
              bodyColor: AppColors.black,
              displayColor: AppColors.black,
            ),
      ),
      appBarTheme: ThemeData.light().appBarTheme.copyWith(
            backgroundColor: AppColors.white,
            foregroundColor: AppColors.black,
          ),
      textTheme: GoogleFonts.nunitoTextTheme(),
      scaffoldBackgroundColor: AppColors.white,
      colorScheme: ThemeData.light().colorScheme.copyWith(
            primary: AppColors.primary,
          ),
      errorColor: AppColors.red,
    );
