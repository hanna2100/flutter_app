import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lime,
        appBar: AppBar(
          title: Text('I am rich'),
          backgroundColor: Colors.lightGreen[900],
        ),
        body: Center(
          child: Image(
            image: NetworkImage('https://i.ytimg.com/vi/NInbHf_Kqxk/maxresdefault.jpg'),
          ),
        ),
      )
    ),
  );
}
