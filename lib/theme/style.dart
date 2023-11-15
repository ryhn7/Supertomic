import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    color: color,
  );
}

// Genera
TextStyle getGeneraBoldStyle20(
    {double fontSize = FontSize.s20, required Color color}) {
  return _getTextStyle(fontSize, FontGenera.fontFamily,
      FonttWeightManager.fontWeightBold, color);
}

TextStyle getGeneraBoldStyle32(
    {double fontSize = FontSize.s32, required Color color}) {
  return _getTextStyle(fontSize, FontGenera.fontFamily,
      FonttWeightManager.fontWeightBold, color);
}

// Bangers
TextStyle getBangerRegular14(
    {double fontSize = FontSize.s14, required Color color}) {
  return _getTextStyle(fontSize, FontBangers.fontFamily,
      FonttWeightManager.fontWeightRegular, color);
}

TextStyle getBangerRegular16(
    {double fontSize = FontSize.s16, required Color color}) {
  return _getTextStyle(fontSize, FontBangers.fontFamily,
      FonttWeightManager.fontWeightRegular, color);
}

TextStyle getBangersRegular18(
    {double fontSize = FontSize.s18, required Color color}) {
  return _getTextStyle(fontSize, FontBangers.fontFamily,
      FonttWeightManager.fontWeightRegular, color);
}

TextStyle getBangersRegular28(
    {double fontSize = FontSize.s28, required Color color}) {
  return _getTextStyle(fontSize, FontBangers.fontFamily,
      FonttWeightManager.fontWeightRegular, color);
}

TextStyle getBangersRegular72(
    {double fontSize = FontSize.s72, required Color color}) {
  return _getTextStyle(fontSize, FontBangers.fontFamily,
      FonttWeightManager.fontWeightRegular, color);
}

// Helvetica
TextStyle getHelveticaRegular18(
    {double fontSize = FontSize.s18, required Color color}) {
  return _getTextStyle(fontSize, FontHelvetica.fontFamily,
      FonttWeightManager.fontWeightRegular, color);
}

TextStyle getHelveticaBold18(
    {double fontSize = FontSize.s18, required Color color}) {
  return _getTextStyle(fontSize, FontHelvetica.fontFamily,
      FonttWeightManager.fontWeightBold, color);
}

TextStyle getHelveticaExtraBold16(
    {double fontSize = FontSize.s16, required Color color}) {
  return _getTextStyle(fontSize, FontHelvetica.fontFamily,
      FonttWeightManager.fontWeightExtraBold, color);
}

// Chams
TextStyle getChamsBlack14(
    {double fontSize = FontSize.s14, required Color color}) {
  return _getTextStyle(fontSize, FontChams.fontFamily,
      FonttWeightManager.fontWeightExtraBold, color);
}
