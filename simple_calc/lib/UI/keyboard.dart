import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:simple_calc/CalcModel.dart' show CalcModel, calcModel;

class KeyboardSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<CalcModel>(
      model: calcModel,
      child: ScopedModelDescendant<CalcModel>(
        builder: (BuildContext ctx, Widget w, CalcModel c) {
          return Expanded(
            flex: 4,
            child: Container(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            child: Center(
                              child: Text(
                                "Seven",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            onTap: () {
                              calcModel.addToNumber(7);
                            },
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            child: Center(
                              child: Text(
                                "Eigth",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            onTap: () {
                              calcModel.addToNumber(8);
                            },
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            child: Center(
                              child: Text(
                                "Nine",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            onTap: () {
                              calcModel.addToNumber(9);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            child: Center(
                              child: Text(
                                "Four",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            onTap: () {
                              calcModel.addToNumber(4);
                            },
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            child: Center(
                              child: Text(
                                "Five",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            onTap: () {
                              calcModel.addToNumber(5);
                            },
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            child: Center(
                              child: Text(
                                "Six",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            onTap: () {
                              calcModel.addToNumber(6);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            child: Center(
                              child: Text(
                                "One",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            onTap: () {
                              calcModel.addToNumber(1);
                            },
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            child: Center(
                              child: Text(
                                "Two",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            onTap: () {
                              calcModel.addToNumber(2);
                            },
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            child: Center(
                              child: Text(
                                "Three",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            onTap: () {
                              calcModel.addToNumber(3);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      child: Center(
                        child: Text(
                          "Zero",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      onTap: () {
                        calcModel.addToNumber(0);
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
