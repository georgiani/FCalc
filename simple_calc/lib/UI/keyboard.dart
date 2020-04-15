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
                              calcModel.rop = 7;
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
                              calcModel.rop = 8;
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
                              calcModel.rop = 9;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
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
                              calcModel.rop = 4;
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
                              calcModel.rop = 5;
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
                              calcModel.rop = 6;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
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
                              calcModel.rop = 1;
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
                              calcModel.rop = 2;
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
                              calcModel.rop = 3;
                            },
                          ),
                        ),
                      ],
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
