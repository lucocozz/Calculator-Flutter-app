import 'package:calculator/models/calculator_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/background.dart';
import 'widgets/display.dart';
import 'widgets/numpad.dart';
import 'widgets/theme_switch.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 10),
          decoration: backgroundDecoration(context: context),
          child: Column(
            children: [
              ThemeSwitch(),
              Expanded(
                child: Container(),
              ),
              DisplayExpression(),
              DisplayResult(),
              SizedBox(height: 30),
              Numpad(refresh: _refresh),
            ],
          ),
        ),
      ),
    );
  }

  void _refresh(BuildContext context, Function function) {
    Calculator calculator = Provider.of<Calculator>(context, listen: false);

    setState(() {
      function();
      calculator.evalResult();
    });
  }
}
