import 'package:calculator/models/calculator_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Calculator calculator = Provider.of<Calculator>(context);
    List<String> history = calculator.history.reversed.toList();

    return Expanded(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: ListView.builder(
              reverse: true,
              physics: BouncingScrollPhysics(),
              itemCount: calculator.history.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    history[index],
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.subtitle1.copyWith(
                          color: Theme.of(context).hintColor,
                        ),
                  ),
                );
              },
            ),
          ),
          blurGradiant(context),
        ],
      ),
    );
  }

  Widget blurGradiant(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.14,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).primaryColorLight,
              Theme.of(context).primaryColorLight.withOpacity(0),
            ]),
      ),
    );
  }
}
