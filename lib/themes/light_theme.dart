import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    accentColor: Color(0XFF1DD1A1),
    primaryColor: Colors.white,
    primaryColorDark: Colors.grey[400],
    primaryColorLight: Colors.white,
    hintColor: Color(0XFF8A8A8B),
    fontFamily: GoogleFonts.lato().fontFamily,
    textTheme: _textTheme(),
    iconTheme: _iconThemeData(),
    buttonTheme: _buttonThemeData(),
  );
}

TextTheme _textTheme() {
  return TextTheme(
    button: TextStyle(color: Colors.black, fontSize: 35),
    headline3: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
    headline4: TextStyle(color: Colors.black),
  );
}

IconThemeData _iconThemeData() {
  return IconThemeData(
    color: Colors.grey[400],
    size: 15,
  );
}

ButtonThemeData _buttonThemeData() {
  return ButtonThemeData(
    shape: CircleBorder(),
    height: 55,
    buttonColor: Color(0XFFEFEFF4),
  );
}
