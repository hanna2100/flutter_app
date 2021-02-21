import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF2f3138),
          scaffoldBackgroundColor: Color(0xFF2f3138),
          accentColor: Color(0xFFfec8c9),
          textTheme: TextTheme(
              body1: TextStyle(color: Color(0xFFFFFFFF))
          )
      ),
      home: InputPage(),
    );
  }
}
