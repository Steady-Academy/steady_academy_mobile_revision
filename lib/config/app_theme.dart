import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:steady_academy_mobile_revision/config/app_colors.dart';

ThemeData get appTheme => ThemeData.light().copyWith(
      primaryColor: AppColors.primary,
      primaryTextTheme: GoogleFonts.nunitoTextTheme(
        ThemeData.light().textTheme.apply(
              bodyColor: AppColors.black,
              displayColor: AppColors.black,
            ),
      ),
      appBarTheme: ThemeData.light().appBarTheme.copyWith(
          backgroundColor: AppColors.primary, foregroundColor: AppColors.black),
      textTheme: GoogleFonts.nunitoTextTheme(),
      scaffoldBackgroundColor: AppColors.white,
    );
