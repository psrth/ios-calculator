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
        padding: EdgeInsets.only(bottom: 10.0, top: 10.0),
        child: new RaisedButton(
          child: Text(
            btnText,
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          onPressed: () {},
          color: color,
          padding: EdgeInsets.all(20.0),
          shape: CircleBorder(),
        ),
      );
    } // end of button widget

    Widget btnZero(btnText, Color color) {
      return Container(
        padding: EdgeInsets.only(bottom: 10.0, top: 10.0),
        child: new RaisedButton(
          child: Text(
            btnText,
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          onPressed: () {},
          color: color,
          padding: EdgeInsets.only(left: 85, right: 85, top: 20, bottom: 20),
          shape: StadiumBorder(),
        ),
      );
    } // end of button zero widget

    return new Scaffold(
      appBar: null,
      backgroundColor: Colors.black,
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              btn('C', const Color(0xffa5a5a5)),
              btn('+/-', const Color(0xffa5a5a5)),
              btn('%', const Color(0xffa5a5a5)),
              btn('÷', Colors.orange),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              btn('7', const Color(0xff333333)),
              btn('8', const Color(0xff333333)),
              btn('9', const Color(0xff333333)),
              btn('X', Colors.orange),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              btn('4', const Color(0xff333333)),
              btn('5', const Color(0xff333333)),
              btn('6', const Color(0xff333333)),
              btn('-', Colors.orange),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              btn('1', const Color(0xff333333)),
              btn('2', const Color(0xff333333)),
              btn('3', const Color(0xff333333)),
              btn('+', Colors.orange),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              btnZero('0', const Color(0xff333333)),
              btn('.', const Color(0xff333333)),
              btn('=', Colors.orange),
            ],
          ),
        ],
      ),
    );
  } // end of state class
}
