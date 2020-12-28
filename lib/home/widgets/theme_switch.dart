import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:hive/hive.dart';

import '../../themes/theme_notifier.dart';

class ThemeSwitch extends StatefulWidget {
  @override
  _ThemeSwitchState createState() => _ThemeSwitchState();
}

class _ThemeSwitchState extends State<ThemeSwitch> {
  bool _isSwitch;
  Box themeBox;

  @override
  void initState() {
    super.initState();
    themeBox = Hive.box("Theme");
    if (themeBox.containsKey("switch"))
      _isSwitch = themeBox.get("switch");
    else
      _isSwitch = false;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlutterSwitch(
        value: _isSwitch,
        width: 55,
        height: 25,
        padding: 3,
        toggleSize: 20,
        inactiveColor: Theme.of(context).primaryColorDark,
        activeColor: Theme.of(context).primaryColorDark,
        inactiveToggleColor: Theme.of(context).hintColor,
        inactiveIcon: Icon(Icons.brightness_2_rounded),
        activeIcon: Icon(Icons.brightness_high_rounded),
        onToggle: (value) {
          theme.switchCurrent();
          setState(() {
            _isSwitch = value;
            themeBox.put("switch", _isSwitch);
          });
        },
      ),
    );
  }
}
