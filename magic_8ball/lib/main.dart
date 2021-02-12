import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text("Ask Me Anything"),
            backgroundColor: Colors.blue.shade900,
          ),
          body: BallState(),
        ),
      ),
    );

class BallState extends StatefulWidget {
  @override
  _BallStateState createState() => _BallStateState();
}

class _BallStateState extends State<BallState> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: () {
            getRandomNumber();
          },
          child: Expanded(
              child: Image.asset('images/ball$ballNumber.png')
          ),
        ),
      ),
    );
  }

  void getRandomNumber() {
    setState(() {
      ballNumber = Random().nextInt(4) + 1;
    });
  }


}


