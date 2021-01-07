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
                onPressed: () => refresh(
                  context,
                  () => calculator.insertOperator("%"),
                ),
              ),
              buttonType2(
                "÷",
                onPressed: () => refresh(
                  context,
                  () => calculator.insertOperator("/"),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonType1("7",
                  onPressed: () =>
                      refresh(context, () => calculator.insertDigit(7))),
              buttonType1("8",
                  onPressed: () =>
                      refresh(context, () => calculator.insertDigit(8))),
              buttonType1("9",
                  onPressed: () =>
                      refresh(context, () => calculator.insertDigit(9))),
              buttonType2("×",
                  onPressed: () =>
                      refresh(context, () => calculator.insertOperator("*")))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonType1("4",
                  onPressed: () =>
                      refresh(context, () => calculator.insertDigit(4))),
              buttonType1("5",
                  onPressed: () =>
                      refresh(context, () => calculator.insertDigit(5))),
              buttonType1("6",
                  onPressed: () =>
                      refresh(context, () => calculator.insertDigit(6))),
              buttonType2("-",
                  onPressed: () =>
                      refresh(context, () => calculator.insertOperator("-")))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonType1("1",
                  onPressed: () =>
                      refresh(context, () => calculator.insertDigit(1))),
              buttonType1("2",
                  onPressed: () =>
                      refresh(context, () => calculator.insertDigit(2))),
              buttonType1("3",
                  onPressed: () =>
                      refresh(context, () => calculator.insertDigit(3))),
              buttonType2("+",
                  onPressed: () =>
                      refresh(context, () => calculator.insertOperator("+")))
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
                      refresh(context, () => calculator.insertZero())),
              buttonType1(".",
                  onPressed: () =>
                      refresh(context, () => calculator.insertDot())),
              buttonType2(
                "=",
                textColor: Colors.white,
                color: Theme.of(context).accentColor,
                onPressed: () => refresh(context, () => calculator.equal()),
              )
            ],
          ),
        ],
      ),
    );
  }
}
