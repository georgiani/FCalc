import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:simple_calc/CalcModel.dart';

class ResultSpace extends StatelessWidget {
  const ResultSpace({
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  calcModel.result.toString(),
                  style: TextStyle(
                    fontSize: 60,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
