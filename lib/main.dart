import 'package:flutter/material.dart';

void main() => runApp(new FitnessCalculator());

class FitnessCalculator extends StatelessWidget {
  Widget build(BuildContext buildContext) {
    return new MaterialApp(
      title: null,
      home: new FitnessCalc(),
    );
  }
}

class FitnessCalc extends StatefulWidget {
  FitnessCalcState createState() => FitnessCalcState();
}

class FitnessCalcState extends State<FitnessCalc> {
  Widget build(BuildContext buildContext) {
    return new Scaffold(
      appBar: null,
    );
  }
}
