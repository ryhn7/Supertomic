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
TextStyle getGeneraRegularStyle18(
    {double fontSize = FontSize.s18, required Color color}) {
  return _getTextStyle(fontSize, FontGenera.fontFamily,
      FonttWeightManager.fontWeightRegular, color);
}

TextStyle getGeneraBoldStyle20(
    {double fontSize = FontSize.s20, required Color color}) {
  return _getTextStyle(fontSize, FontGenera.fontFamily,
      FonttWeightManager.fontWeightBold, color);
}

// ComicBook
TextStyle getComicBookRegular12(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontComicBook.fontFamily,
      FonttWeightManager.fontWeightRegular, color);
}

TextStyle getComicBookRegular14(
    {double fontSize = FontSize.s14, required Color color}) {
  return _getTextStyle(fontSize, FontComicBook.fontFamily,
      FonttWeightManager.fontWeightRegular, color);
}

TextStyle getComicBookRegular18(
    {double fontSize = FontSize.s18, required Color color}) {
  return _getTextStyle(fontSize, FontComicBook.fontFamily,
      FonttWeightManager.fontWeightRegular, color);
}

TextStyle getComicBookRegular28(
    {double fontSize = FontSize.s28, required Color color}) {
  return _getTextStyle(fontSize, FontComicBook.fontFamily,
      FonttWeightManager.fontWeightRegular, color);
}

// ActionMan
TextStyle getActionManRegular14(
    {double fontSize = FontSize.s14, required Color color}) {
  return _getTextStyle(fontSize, FontActionMan.fontFamily,
      FonttWeightManager.fontWeightRegular, color);
}

TextStyle getActionManRegular16(
    {double fontSize = FontSize.s16, required Color color}) {
  return _getTextStyle(fontSize, FontActionMan.fontFamily,
      FonttWeightManager.fontWeightRegular, color);
}

// Helvetica
TextStyle getHelveticaRegular14(
    {double fontSize = FontSize.s14, required Color color, required double height}) {
  return _getTextStyle(fontSize, FontHelvetica.fontFamily,
      FonttWeightManager.fontWeightRegular, color);
}

TextStyle getHelveticaRegular16(
    {double fontSize = FontSize.s16, required Color color}) {
  return _getTextStyle(fontSize, FontHelvetica.fontFamily,
      FonttWeightManager.fontWeightRegular, color);
}

TextStyle getHelveticaRegular18(
    {double fontSize = FontSize.s18, required Color color}) {
  return _getTextStyle(fontSize, FontHelvetica.fontFamily,
      FonttWeightManager.fontWeightRegular, color);
}

TextStyle getHelveticaBold14(
    {double fontSize = FontSize.s14, required Color color}) {
  return _getTextStyle(fontSize, FontHelvetica.fontFamily,
      FonttWeightManager.fontWeightBold, color);
}

TextStyle getHelveticaBold16(
    {double fontSize = FontSize.s16, required Color color}) {
  return _getTextStyle(fontSize, FontHelvetica.fontFamily,
      FonttWeightManager.fontWeightBold, color);
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
TextStyle getChamsBold14(
    {double fontSize = FontSize.s14, required Color color}) {
  return _getTextStyle(fontSize, FontChams.fontFamily,
      FonttWeightManager.fontWeightBold, color);
}

TextStyle getChamsBlack14(
    {double fontSize = FontSize.s14, required Color color}) {
  return _getTextStyle(fontSize, FontChams.fontFamily,
      FonttWeightManager.fontWeightExtraBold, color);
}

TextStyle getChamsBlack16(
    {double fontSize = FontSize.s16, required Color color}) {
  return _getTextStyle(fontSize, FontChams.fontFamily,
      FonttWeightManager.fontWeightExtraBold, color);
}