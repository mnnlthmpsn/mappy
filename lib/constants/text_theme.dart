import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class KTextTheme {

  KTextTheme._();

  static TextStyle textDefaultLight = GoogleFonts.openSans(
    color: AppColors.light,
    fontSize: 14,
  );

  static TextStyle textDefaultDark =
  textDefaultLight.copyWith(color: AppColors.textDark);

  static TextStyle textSecondary =
  textDefaultLight.copyWith(color: AppColors.primary);

  static TextStyle textHeader = textDefaultDark.copyWith(
      fontWeight: FontWeight.bold, fontSize: 20);

  static TextStyle textSubHeader = textDefaultLight.copyWith(
    color: AppColors.textDark,
  );
}
