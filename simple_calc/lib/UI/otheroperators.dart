import 'package:flutter/material.dart';
import 'package:simple_calc/CalcModel.dart';
import 'package:scoped_model/scoped_model.dart';

class OtherOperatorsSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<CalcModel>(
      model: calcModel,
      child: ScopedModelDescendant<CalcModel>(
        builder: (BuildContext ctx, Widget w, CalcModel c) {
          return Expanded(
            flex: 1,
            child: Container(
              color: Colors.orangeAccent,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      child: Center(
                        child: Text(
                          "Clear",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      onTap: () {
                        calcModel.reset();
                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Center(
                        child: Text(
                          "Change Sign",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      onTap: () {
                        calcModel.changeSign();
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
