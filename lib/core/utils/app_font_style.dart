import 'package:flutter/material.dart';
import 'package:history_app/core/utils/app_colors.dart';
import 'package:history_app/core/utils/app_fonts.dart';

class AppFontStyle {
  static TextStyle pacifico400x64 = TextStyle(
    color: AppColors.deepBrown,
    fontFamily: AppFonts.pacifico,
    fontSize: 64,
    fontWeight: FontWeight.w400,
  );

  static TextStyle poppins500x24 = TextStyle(
    fontFamily: AppFonts.poppins,
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );

  static TextStyle poppins300x16 = TextStyle(
      fontFamily: AppFonts.poppins,
      fontSize: 16,
      fontWeight: FontWeight.w300,
      color: Colors.black);

  static TextStyle poppins500x18 = TextStyle(
    fontFamily: AppFonts.poppins,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static TextStyle poppins600x28 = TextStyle(
    fontFamily: AppFonts.poppins,
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );

  static TextStyle poppins400x12 = TextStyle(
    fontFamily: AppFonts.poppins,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.lightGrey,
  );

  static TextStyle saira700x32 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    fontFamily: AppFonts.saira,
  );
}
