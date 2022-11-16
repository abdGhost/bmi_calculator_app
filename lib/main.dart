import 'package:bmi_calculator_app/screens/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const BMICalculator(),
  );
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff090c22),
        ),
        scaffoldBackgroundColor: const Color(0xff0a0e21),
      ),
      home: const InputPage(),
    );
  }
}
