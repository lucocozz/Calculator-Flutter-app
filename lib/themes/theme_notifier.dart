import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

ThemeNotifier theme = ThemeNotifier();

class ThemeNotifier extends ChangeNotifier {
  static bool _isDark = true;
  Box themeBox = Hive.box("Theme");

  ThemeNotifier() {
    if (themeBox.containsKey("current"))
      _isDark = themeBox.get("current");
    else
      themeBox.put("current", _isDark);
  }

  ThemeMode current() {
    return _isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void switchCurrent() {
    _isDark = !_isDark;
    themeBox.put("current", _isDark);
    notifyListeners();
  }
}
