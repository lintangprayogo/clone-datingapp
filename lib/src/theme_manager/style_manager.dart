import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_datting_app/src/theme_manager/asset_collor_manager.dart';
import 'package:simple_datting_app/src/theme_manager/font_manager.dart';

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return GoogleFonts.poppins().copyWith(
      fontSize: fontSize,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color);
}

TextStyle getWhiteTextStyle(
    {double fontSize = FontSizeManager.f16,
    FontWeight fontWeight = FontWeightManeger.regular}) {
  return _getTextStyle(
      fontSize, FontFamilyConstant.fontFamily, fontWeight, ColorManager.white);
}

TextStyle getBlack60TextStyle(
    {double fontSize = FontSizeManager.f16,
    FontWeight fontWeight = FontWeightManeger.regular}) {
  return _getTextStyle(fontSize, FontFamilyConstant.fontFamily, fontWeight,
      ColorManager.black60);
}

TextStyle getBlack30TextStyle(
    {double fontSize = FontSizeManager.f16,
    FontWeight fontWeight = FontWeightManeger.regular}) {
  return _getTextStyle(fontSize, FontFamilyConstant.fontFamily, fontWeight,
      ColorManager.black30);
}

TextStyle getBlackTextStyle(
    {double fontSize = FontSizeManager.f16,
    FontWeight fontWeight = FontWeightManeger.regular}) {
  return _getTextStyle(
      fontSize, FontFamilyConstant.fontFamily, fontWeight, ColorManager.black);
}

TextStyle getGrey60TextStyle(
    {double fontSize = FontSizeManager.f16,
    FontWeight fontWeight = FontWeightManeger.regular}) {
  return _getTextStyle(
      fontSize, FontFamilyConstant.fontFamily, fontWeight, ColorManager.grey60);
}
