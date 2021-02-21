import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFFC3B2B4),
          scaffoldBackgroundColor: Color(0xFF312E41),
          accentColor: Color(0xFF65A1A0),
          textTheme: TextTheme(
              body1: TextStyle(color: Color(0xFFFFFFFF))
          )
      ),
      home: InputPage(),
    );
  }
}
