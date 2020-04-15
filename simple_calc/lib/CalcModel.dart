import 'package:scoped_model/scoped_model.dart';

class CalcModel extends Model {
  int lop = 0;
  int rop = 0;
  String leftOrRight = "left";
  String op = "N";
  int result = 0;

  void changeOp(String op) {
    leftOrRight = "right";
    this.op = op;
    notifyListeners();
  }

  void changeSign() {
    result *= -1; 
    notifyListeners();
  }

  void calc() {
    if (op == "+") {
      result = lop + rop;
    } else if (op == "-") {
      result = lop - rop;
    } else if (op == "*") {
      result = lop * rop;
    } else if (op == "/") {
      result = lop ~/ rop;
    }

    op = "N";
    leftOrRight = "left";
    lop = result;
    rop = 0;
    notifyListeners();
  }

  void reset() {
    rop = 0;
    lop = 0;
    result = 0;
    leftOrRight = "left";
    op = "N";
    notifyListeners();
  }

  void addToNumber(int c) {
    if (leftOrRight == "left") {
      lop = lop * 10 + c;
    } else {
      rop = rop * 10 + c;
    }

    notifyListeners();
  }
}

CalcModel calcModel = CalcModel();