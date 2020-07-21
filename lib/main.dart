import 'package:flutter/material.dart';

void main() => runApp(new FitnessCalculator());

class FitnessCalculator extends StatelessWidget {
  Widget build(BuildContext buildContext) {
    return new MaterialApp(
      title: 'Fitness Calculator',
      home: new FitnessCalc(),
    );
  }
}

class FitnessCalc extends StatefulWidget {
  FitnessCalcState createState() => FitnessCalcState();
}

class FitnessCalcState extends State<FitnessCalc> {
  Widget build(BuildContext buildContext) {
    Widget btn(btnText, Color color) {
      return Container(
        child: new RaisedButton(
          child: Text(btnText),
          onPressed: () {},
          color: color,
        ),
      );
    }

    return new Scaffold(
      appBar: null,
      backgroundColor: Colors.black,
      body: new Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  '123',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60.0,
                    // fontFamily:
                  ),
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              btn('C', const Color(0xffa5a5a5)),
              btn('+/-', const Color(0xffa5a5a5)),
              btn('%', const Color(0xffa5a5a5)),
              btn('÷', Colors.orange),
            ],
          ),
          Row(
            children: <Widget>[
              btn('7', const Color(0xffa5a5a5)),
              btn('8', const Color(0xffa5a5a5)),
              btn('9', const Color(0xffa5a5a5)),
              btn('x', Colors.orange),
            ],
          ),
          Row(
            children: <Widget>[
              btn('4', const Color(0xffa5a5a5)),
              btn('5', const Color(0xffa5a5a5)),
              btn('6', const Color(0xffa5a5a5)),
              btn('-', Colors.orange),
            ],
          ),
          Row(
            children: <Widget>[
              btn('1', const Color(0xffa5a5a5)),
              btn('2', const Color(0xffa5a5a5)),
              btn('3', const Color(0xffa5a5a5)),
              btn('+', Colors.orange),
            ],
          ),
          Row(
            children: <Widget>[
              btn('0', const Color(0xffa5a5a5)),
              btn('.', const Color(0xffa5a5a5)),
              btn('=', Colors.orange),
            ],
          ),
        ],
      ),
    );
  } // end of state class
}
