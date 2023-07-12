import 'package:flutter/material.dart';
import 'screen/input.dart';
import 'screen/results.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0x0ffa0e21),
        ),
        scaffoldBackgroundColor: const Color(0x0ffa0e21),
      ),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => InputPage(),
        '/first': (context) => Results(),
      },
    );
  }
}
