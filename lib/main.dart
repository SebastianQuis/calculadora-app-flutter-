import 'package:calculadora/screens/calculator_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator App - GetX',
      home: CalculatorScreen(),
      theme: ThemeData.light().copyWith(
        useMaterial3: true,
        scaffoldBackgroundColor: Color.fromARGB(255, 233, 233, 236),
      ),
    );
  }
}