import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static TextStyle w600({
    Color? color,
    double? fontSize,
  }) {

    return GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
      color: color ?? AppColors.black,
      fontSize: fontSize ??  20,
    );
  }
}

class AppColors {
  static const Color appMainColorGreen = Color(0xff168865);

  static const Color black = Color(0xff000000);
}