import 'package:scoped_model/scoped_model.dart';

class CalcModel extends Model {
  int rop = 0;
  String op = "N";
  int result = 0;

  void changeOp(String op) {
    this.op = op;
    notifyListeners();
  }

  void changeSign() {
    result *= -1; 
    notifyListeners();
  }

  void calc() {
    if (op == "N") {
      result = rop; // initial 0
    } else if (op == "+") {
      result += rop;
    } else if (op == "-") {
      result -= rop;
    } else if (op == "*") {
      result *= rop;
    } else if (op == "/") {
      result = result ~/ rop;
    }

    op = "N";
    rop = 0;
    notifyListeners();
  }

  void reset() {
    rop = 0;
    result = 0;
    op = "N";
    notifyListeners();
  }
}

CalcModel calcModel = CalcModel();