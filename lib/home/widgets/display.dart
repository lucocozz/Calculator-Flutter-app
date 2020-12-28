import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/calculator_model.dart';

class DisplayResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Calculator calculator = Provider.of<Calculator>(context);

    return Container(
      width: size.width,
      alignment: Alignment.centerRight,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: SingleChildScrollView(
        reverse: true,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Text(
          calculator.displayResult(),
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}

class DisplayExpression extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Calculator calculator = Provider.of<Calculator>(context);

    return Container(
      width: size.width,
      alignment: Alignment.centerRight,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: SingleChildScrollView(
        reverse: true,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Text(
          calculator.displayExpression(),
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
    );
  }
}
