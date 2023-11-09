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

// regular style
TextStyle getRegularStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontConstants.fontFamily,
      FonttWeightManager.fontWeightRegular, color);
}

TextStyle getRegularStyle16(
    {double fontSize = FontSize.s16, required Color color}) {
  return _getTextStyle(fontSize, FontConstants.fontFamily,
      FonttWeightManager.fontWeightRegular, color);
}

// medium style
TextStyle getMediumStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontConstants.fontFamily,
      FonttWeightManager.fontWeightMedium, color);
}
TextStyle getMediumStyle16(
    {double fontSize = FontSize.s16, required Color color}) {
  return _getTextStyle(fontSize, FontConstants.fontFamily,
      FonttWeightManager.fontWeightMedium, color);
}

// light style
TextStyle getLightStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontConstants.fontFamily,
      FonttWeightManager.fontWeightLight, color);
}

// bold style
TextStyle getBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontConstants.fontFamily,
      FonttWeightManager.fontWeightBold, color);
}

// bold style
TextStyle getBoldStyle20(
    {double fontSize = FontSize.s20, required Color color}) {
  return _getTextStyle(fontSize, FontConstants.fontFamily,
      FonttWeightManager.fontWeightBold, color);
}

TextStyle getBoldStyle35(
    {double fontSize = FontSize.s35, required Color color}) {
  return _getTextStyle(fontSize, FontConstants.fontFamily,
      FonttWeightManager.fontWeightBold, color);
}


// extra bold style
TextStyle getEBStyle35(
    {double fontSize = FontSize.s35, required Color color}) {
  return _getTextStyle(fontSize, FontConstants.fontFamily,
      FonttWeightManager.fontWeightExtraBold, color);
}


// semi bold style
TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontConstants.fontFamily,
      FonttWeightManager.fontWeightSemiBold, color);
}