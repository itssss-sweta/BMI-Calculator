import 'package:flutter/material.dart';
import 'input.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFA0E21),
        ),
        scaffoldBackgroundColor: Color(0xFFA0E21),
      ),
      home: InputPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
