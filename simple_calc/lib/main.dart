import 'package:flutter/material.dart';
import 'CalcUI.dart';

void main() {
  runApp(FCalc());
}

class FCalc extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FCalc",
      debugShowCheckedModeBanner: false,
      home: CalcUI(),
    );
  }
}