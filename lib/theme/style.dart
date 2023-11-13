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

// ComicBook
TextStyle getComicBookRegular14(
    {double fontSize = FontSize.s14, required Color color}) {
  return _getTextStyle(fontSize, FontComicBook.fontFamily,
      FonttWeightManager.fontWeightRegular, color);
}
TextStyle getComicBookRegular12(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontComicBook.fontFamily,
      FonttWeightManager.fontWeightRegular, color);
}

// ActionMan
TextStyle getActionManRegular14(
    {double fontSize = FontSize.s14, required Color color}) {
  return _getTextStyle(fontSize, FontActionMan.fontFamily,
      FonttWeightManager.fontWeightRegular, color);
}

