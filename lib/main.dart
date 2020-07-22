import 'package:flutter/material.dart';

void main() => runApp(new FitnessCalculator());

class FitnessCalculator extends StatelessWidget {
  Widget build(BuildContext buildContext) {
    return new MaterialApp(
      title: 'iOS Calculator',
      home: new FitnessCalc(),
    );
  }
}

class FitnessCalc extends StatefulWidget {
  FitnessCalcState createState() => FitnessCalcState();
}

class FitnessCalcState extends State<FitnessCalc> {
  dynamic text = '0';
  double num1 = 0;
  double num2 = 0;

  dynamic result = '';
  dynamic finalResult = '';
  dynamic opr = '';
  dynamic preOpr = '';

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
          onPressed: () {
            calculation(btnText);
          },
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
            textAlign: TextAlign.left,
          ),
          onPressed: () {
            calculation(btnText);
          },
          color: color,
          padding: EdgeInsets.only(left: 85, right: 85, top: 20, bottom: 20),
          shape: StadiumBorder(),
        ),
      );
    } // end of button zero widget

    Widget btnGrey(btnText, Color color) {
      return Container(
        padding: EdgeInsets.only(bottom: 10.0, top: 10.0),
        child: new RaisedButton(
          child: Text(
            btnText,
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          onPressed: () {
            calculation(btnText);
          },
          color: color,
          padding: EdgeInsets.all(20.0),
          shape: CircleBorder(),
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
                  text,
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
              btnGrey('C', const Color(0xffa5a5a5)),
              btnGrey('+/-', const Color(0xffa5a5a5)),
              btnGrey('%', const Color(0xffa5a5a5)),
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

  void calculation(btnText) {
    if (btnText == 'C') {
      text = '0';
      num1 = 0;
      num2 = 0;

      result = '';
      finalResult = '';
      opr = '';
      preOpr = '';
    } else if (opr == '=' && preOpr == "=") {
      if (preOpr == '+') {
        result = ((num1 + num2).round()).toString();
        finalResult = result;
        num1 = double.parse(result);
      } else if (preOpr == '-') {
        result = ((num1 - num2).round()).toString();
        finalResult = result;
        num1 = double.parse(result);
      } else if (preOpr == 'X') {
        result = ((num1 * num2).round()).toString();
        finalResult = result;
        num1 = double.parse(result);
      } else if (preOpr == '÷') {
        result = ((num1 / num2).round()).toString();
        finalResult = result;
        num1 = double.parse(result);
      }
    } else if (btnText == '+' ||
        btnText == '-' ||
        btnText == 'X' ||
        btnText == '÷' ||
        btnText == '=') {
      if (num1 == 0) {
        num1 = double.parse(result);
      } else {
        num2 = double.parse(result);
      }

      if (opr == '+') {
        result = ((num1 + num2).round()).toString();
        finalResult = result;
        num1 = double.parse(result);
      } else if (opr == '-') {
        result = ((num1 - num2).round()).toString();
        finalResult = result;
        num1 = double.parse(result);
      } else if (opr == 'X') {
        result = ((num1 * num2).round()).toString();
        finalResult = result;
        num1 = double.parse(result);
      } else if (opr == '÷') {
        result = ((num1 / num2).round()).toString();
        finalResult = result;
        num1 = double.parse(result);
      }

      preOpr = opr;
      opr = btnText;
      result = '';
    } else {
      result = result + btnText;
      finalResult = result;
    }

    setState(() {
      text = finalResult;
    });
  }
}
