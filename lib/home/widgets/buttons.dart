import 'dart:ui';

import 'package:flutter/material.dart';

Widget buttonType1(
  String value, {
  void Function() onPressed,
  Color textColor,
}) {
  return FlatButton(
    onPressed: onPressed,
    child: Text(value, style: TextStyle(color: textColor)),
  );
}

Widget buttonType2(
  String value, {
  void Function() onPressed,
  Color color,
  Color textColor,
}) {
  return RaisedButton(
    onPressed: onPressed,
    elevation: 0,
    highlightElevation: 0,
    color: color,
    child: Text(
      value,
      style: TextStyle(color: textColor),
    ),
  );
}

Widget buttonType3(
  IconData icon, {
  Function onPressed,
  Function onLongPress,
  Color iconColor,
}) {
  return FlatButton(
    onPressed: onPressed,
    onLongPress: onLongPress,
    child: Icon(icon, color: iconColor, size: 32),
  );
}
