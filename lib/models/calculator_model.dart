import 'package:math_expressions/math_expressions.dart';

class Calculator {
  List<String> _exprData = [];
  String _result = "";
  Parser parser = Parser();
  ContextModel cm = ContextModel();

  void evalResult() {
    String eval;
    String exprString;
    Expression expression;

    try {
      exprString = _exprData.join();
      expression = parser.parse(exprString);
      eval = expression.evaluate(EvaluationType.REAL, cm).toString();
    } catch (e) {}
    if (eval != null) _result = eval;
  }

  String displayResult() {
    return _result.replaceFirst(".0", "");
  }

  String displayExpression() {
    return _exprData.join().replaceAll("*", "×").replaceAll("/", "÷");
  }

  void insert(String str) {
    _exprData.add(str);
  }

  void remove() {
    _exprData.removeAt(_exprData.length - 1);
  }

  void clear() {
    _exprData = [];
    _result = "";
  }
}
