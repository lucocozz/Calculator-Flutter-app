import 'package:math_expressions/math_expressions.dart';

class Calculator {
  List<String> history = [];
  List<String> _exprData = [];

  String displayResult() {
    String eval;
    String exprString;
    Expression expression;
    Parser parser = Parser();
    ContextModel cm = ContextModel();

    try {
      exprString = _exprData.join();
      expression = parser.parse(exprString);
      eval = expression
          .evaluate(EvaluationType.REAL, cm)
          .toString()
          .replaceFirst(".0", "");
    } catch (e) {}
    if (eval == null) eval = "";
    if (RegExp(r"^(\d+)(\.\d*)?$").hasMatch(exprString))
      return "";
    else
      return eval;
  }

  String displayExpression() {
    return _exprData.join().replaceAll("*", "×").replaceAll("/", "÷");
  }

  void insert(String str) {
    _exprData.add(str);
  }

  void remove() {
    if (_exprData.length >= 1) _exprData.removeAt(_exprData.length - 1);
  }

  void clear() {
    _exprData = [];
    history = [];
  }

  void equal() {
    history.add(displayExpression());
    _exprData = displayResult().split("");
  }

  void insertDigit(int digit) {
    if (digit >= 1 && digit <= 9) {
      _exprData.add(digit.toString());
    }
  }

  void insertZero() {
    if (_exprData.length > 0 && !RegExp(r"[+-]").hasMatch(_exprData[0]))
      _exprData.add("0");
  }

  void insertOperator(String operator) {
    int len = _exprData.length;

    print("Operator: $operator");
    if (len == 0 && RegExp(r"[%/*]").hasMatch(operator)) return;
    if (len > 0 && RegExp(r"[%+*/-]").hasMatch(_exprData[len - 1])) return;
    _exprData.add(operator);
  }

  void insertDot() {
    int len = _exprData.length;
    String exprString;
    List<String> numbers;

    if (len == 0 || _exprData[len - 1] == '.') return;
    exprString = _exprData.join("");
    numbers = exprString.split(RegExp(r"[()+%*/-]"));
    if (!numbers[numbers.length - 1].contains(".")) _exprData.add('.');
  }
}
