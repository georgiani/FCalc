import 'package:flutter/material.dart';
import 'utils.dart' as utils;
import 'UI/otheroperators.dart';
import 'UI/keyboard.dart';
import 'UI/operators.dart';
import 'UI/result.dart';

class CalcUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    utils.screenW = MediaQuery.of(context).size.width;
    utils.screenH = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.orange[200],
      body: Column(
        children: [
          ResultSpace(),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      OtherOperatorsSpace(),
                      KeyboardSpace(),
                    ],
                  ),
                ),
                OperatorsSpace(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
