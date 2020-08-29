import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red[900],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDice = 1;
  var rightDice = 1;
  void changeface() {
    setState(() {
      leftDice = 1 + Random().nextInt(6);
      rightDice = 1 + Random().nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                changeface();
              },
              child: Image.asset('images/dice$leftDice.png'),
            )
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                changeface();
              },
              child: Image.asset('images/dice$rightDice.png'))
          )
        ]
      ),
    );
  }
}