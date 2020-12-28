import 'package:flutter/material.dart';

Decoration backgroundDecoration({BuildContext context}) {
  return BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [
        Theme.of(context).primaryColor,
        Theme.of(context).primaryColorLight,
      ],
    ),
  );
}
