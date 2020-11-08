import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: 30.0,
                height: 100.0,
                color: Colors.white,
                child: Text('컨테이너1'),
              ),
              SizedBox(
                width: 20.0,
              ),
              Container(
                height: 100.0,
                color: Colors.blue,
                child: Text('컨테이너2')
              ),
              Container(
                  height: 100.0,
                  color: Colors.red,
                  child: Text('컨테이너3')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
