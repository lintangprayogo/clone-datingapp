import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/theme_manager/asset_collor_manager.dart';
import 'package:simple_datting_app/src/theme_manager/font_manager.dart';

ThemeData getApplicationThemeData() {
  return ThemeData(
      scaffoldBackgroundColor: ColorManager.primary,
      appBarTheme:
          AppBarTheme(elevation: 0, backgroundColor: ColorManager.primary),
      fontFamily: FontFamilyConstant.fontFamily);
}
