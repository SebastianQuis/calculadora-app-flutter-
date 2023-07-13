import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:calculadora/controllers/calculator_controller.dart';
import 'package:calculadora/widgets/math_results.dart';
import 'package:calculadora/widgets/calc_button.dart';


class CalculatorScreen extends StatelessWidget {

  final calculatorCtrl = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
          
              MathResults(),
              Spacer(),
          
          
              Container(
                padding: EdgeInsets.all(10),
                color: Color.fromARGB(255, 242, 243, 245),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CalculatorButton( 
                          text: 'AC',
                          color: Color(0xff0a57f4),
                          onPressed: () => calculatorCtrl.resetAC(),
                        ),
                        CalculatorButton( 
                          text: '+/-',
                          color: Color(0xff0a57f4),
                          onPressed: () => calculatorCtrl.changeOperation(),
                        ),
                        CalculatorButton( 
                          text: 'del',
                          color: Color(0xff0a57f4),
                          onPressed: () => calculatorCtrl.deleteLastEntry(),
                        ),
                        CalculatorButton( 
                          text: '/',
                          bgColor: Color(0xffF0A23B ),
                          onPressed: () => calculatorCtrl.selectOperation('/'),
                        ),
                      ],
                    ),
                        
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CalculatorButton( 
                          text: '7',
                          onPressed: () => calculatorCtrl.addNumber('7'),
                        ),
                        CalculatorButton( 
                          text: '8',
                          onPressed: () => calculatorCtrl.addNumber('8'),
                        ),
                        CalculatorButton( 
                          text: '9',
                          onPressed: () => calculatorCtrl.addNumber('9'),
                        ),
                        CalculatorButton( 
                          text: 'X',
                          bgColor: Color(0xffF0A23B ),
                          onPressed: () => calculatorCtrl.selectOperation('X'),
                        ),
                      ],
                    ),
                              
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CalculatorButton( 
                          text: '4', 
                          onPressed: () => calculatorCtrl.addNumber('4'),
                        ),
                        CalculatorButton( 
                          text: '5', 
                          onPressed: () => calculatorCtrl.addNumber('5'),
                        ),
                        CalculatorButton( 
                          text: '6', 
                          onPressed: () => calculatorCtrl.addNumber('6'),
                        ),
                        CalculatorButton( 
                          text: '-',
                          bgColor: Color(0xffF0A23B ),
                          onPressed: () => calculatorCtrl.selectOperation('-'),
                        ),
                      ],
                    ),
                              
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CalculatorButton( 
                          text: '1', 
                          onPressed: () => calculatorCtrl.addNumber('1'),
                        ),
                        CalculatorButton( 
                          text: '2', 
                          onPressed: () => calculatorCtrl.addNumber('2'),
                        ),
                        CalculatorButton( 
                          text: '3', 
                          onPressed: () => calculatorCtrl.addNumber('3'),
                        ),
                        CalculatorButton(
                          text: '+',
                          bgColor: Color(0xffF0A23B ),
                          onPressed: () => calculatorCtrl.selectOperation('+'),
                        ),
                      ],
                    ),
                              
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CalculatorButton( 
                          text: '0', 
                          big: true,
                          onPressed: () => calculatorCtrl.addNumber('0'),
                        ),
                        CalculatorButton( 
                          text: '.', 
                          onPressed: () => calculatorCtrl.addPoint(),
                        ),
                        CalculatorButton( 
                          text: '=',
                          bgColor: Color(0xffF0A23B ),
                          onPressed: () => calculatorCtrl.calculateResult(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      )
   );
  }
}