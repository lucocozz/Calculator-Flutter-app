import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    accentColor: Color(0XFF1DD1A1),
    primaryColor: Color(0XFF171718),
    primaryColorDark: Color(0XFF1C1C1E),
    primaryColorLight: Color(0XFF28282A),
    hintColor: Color(0XFF8A8A8B),
    fontFamily: GoogleFonts.lato().fontFamily,
    textTheme: _textTheme(),
    iconTheme: _iconThemeData(),
    buttonTheme: _buttonThemeData(),
  );
}

TextTheme _textTheme() {
  return TextTheme(
    button: TextStyle(color: Colors.white, fontSize: 35),
    headline3: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
    headline4: TextStyle(color: Colors.white),
  );
}

IconThemeData _iconThemeData() {
  return IconThemeData(
    color: Color(0XFF1C1C1E),
    size: 15,
  );
}

ButtonThemeData _buttonThemeData() {
  return ButtonThemeData(
    shape: CircleBorder(),
    height: 55,
    buttonColor: Color(0XFF232325),
  );
}
