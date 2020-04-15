import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:simple_calc/CalcModel.dart';

class OperatorsSpace extends StatelessWidget {
  const OperatorsSpace({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModel<CalcModel>(
      model: calcModel,
      child: ScopedModelDescendant<CalcModel>(
        builder: (BuildContext ctx, Widget w, CalcModel c) {
          return Expanded(
            flex: 1,
            child: Container(
              color: Colors.orange,
              child: Column(
                children: [
                  Expanded(
                    child: FlatButton(
                      child: Text(
                        "Add",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      onPressed: () {
                        calcModel.changeOp("+");
                      },
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      child: Text(
                        "Sub",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      onPressed: () {
                        calcModel.changeOp("-");
                      },
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      child: Text(
                        "Mult",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      onPressed: () {
                        calcModel.changeOp("*");
                      },
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      child: Text(
                        "Div",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      onPressed: () {
                        calcModel.changeOp("/");
                      },
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      child: Text(
                        "=",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      onPressed: () {
                        calcModel.calc();
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
