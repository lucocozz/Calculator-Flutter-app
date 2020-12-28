import 'package:calculator/models/calculator_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'buttons.dart';

class Numpad extends StatelessWidget {
  final Function refresh;

  Numpad({this.refresh});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Calculator calculator = Provider.of<Calculator>(context);

    return Container(
      height: size.height * 0.47,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonType2(
                "( ",
                onPressed: () => refresh(context, () => calculator.insert("(")),
              ),
              buttonType2(
                " )",
                onPressed: () => refresh(context, () => calculator.insert(")")),
              ),
              buttonType2(
                "%",
                onPressed: () => refresh(context, () => calculator.insert("%")),
              ),
              buttonType2(
                "÷",
                onPressed: () => refresh(context, () => calculator.insert("/")),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonType1("7",
                  onPressed: () =>
                      refresh(context, () => calculator.insert("7"))),
              buttonType1("8",
                  onPressed: () =>
                      refresh(context, () => calculator.insert("8"))),
              buttonType1("9",
                  onPressed: () =>
                      refresh(context, () => calculator.insert("9"))),
              buttonType2("×",
                  onPressed: () =>
                      refresh(context, () => calculator.insert("*")))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonType1("4",
                  onPressed: () =>
                      refresh(context, () => calculator.insert("4"))),
              buttonType1("5",
                  onPressed: () =>
                      refresh(context, () => calculator.insert("5"))),
              buttonType1("6",
                  onPressed: () =>
                      refresh(context, () => calculator.insert("6"))),
              buttonType2("-",
                  onPressed: () =>
                      refresh(context, () => calculator.insert("-")))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonType1("1",
                  onPressed: () =>
                      refresh(context, () => calculator.insert("1"))),
              buttonType1("2",
                  onPressed: () =>
                      refresh(context, () => calculator.insert("2"))),
              buttonType1("3",
                  onPressed: () =>
                      refresh(context, () => calculator.insert("3"))),
              buttonType2("+",
                  onPressed: () =>
                      refresh(context, () => calculator.insert("+")))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonType3(
                Icons.backspace_rounded,
                iconColor: Theme.of(context).accentColor,
                onPressed: () => refresh(context, () => calculator.remove()),
                onLongPress: () => refresh(context, () => calculator.clear()),
              ),
              buttonType1("0",
                  onPressed: () =>
                      refresh(context, () => calculator.insert("0"))),
              buttonType1(".",
                  onPressed: () =>
                      refresh(context, () => calculator.insert("."))),
              buttonType2(
                "=",
                textColor: Colors.white,
                color: Theme.of(context).accentColor,
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
