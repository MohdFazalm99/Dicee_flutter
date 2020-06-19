import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade600,
        appBar: AppBar(
        title: Center(
          child: Text('Dicee ',
          style: TextStyle(
              color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.5,
          ),),
        ),
          backgroundColor: Colors.blue.shade600,
        ),
        body: DicePage(),
      ),
    )
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void changeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
  // TODO: implement build
  return Center(
    child: Row(
    children: <Widget>[
    Expanded(
    child: FlatButton(
    onPressed: (){
      changeDice();
    },
    child: Image.asset('images/dice$leftDiceNumber.png')),
    ),
    Expanded(
      child: FlatButton(
      onPressed: (){
        changeDice();
      },
      child: Image.asset('images/dice$rightDiceNumber.png')),
      ),
      ],
    ),
  );
  }
}



