import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:calculadora/controllers/calculator_controller.dart';
import 'package:calculadora/widgets/widgets.dart';

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
              
              SizedBox(height: 20,),
          
              Expanded(
                child: Container(
                  // color: Colors.red,
                  color: Color.fromARGB(255, 245, 245, 245),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonCalculator( 
                            text: 'C',
                            color: Color(0xff0a57f4),
                            onPressed: () => calculatorCtrl.resetAC(),
                          ),
                          ButtonCalculator( 
                            text: '÷',
                            color: Color(0xff0a57f4),
                            onPressed: () => calculatorCtrl.selectOperation('/'),
                          ),
                          ButtonCalculator( 
                            text: 'x',
                            color: Color(0xff0a57f4),
                            onPressed: () => calculatorCtrl.selectOperation('X'),
                          ),
                          ButtonCalculator(
                            isText: false,
                            icon: Icons.backspace_outlined,
                            color: Color(0xff0a57f4),
                            onPressed: () => calculatorCtrl.deleteLastEntry(),
                          ),
                        ],
                      ),
                          
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonCalculator( 
                            text: '7',
                            onPressed: () => calculatorCtrl.addNumber('7'),
                          ),
                          ButtonCalculator( 
                            text: '8',
                            onPressed: () => calculatorCtrl.addNumber('8'),
                          ),
                          ButtonCalculator( 
                            text: '9',
                            onPressed: () => calculatorCtrl.addNumber('9'),
                          ),
                          ButtonCalculator( 
                            text: '+/-',
                            color: Color(0xff0a57f4),
                            onPressed: () => calculatorCtrl.changeOperation(),
                          ),
                        ],
                      ),
                                
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonCalculator( 
                            text: '4', 
                            onPressed: () => calculatorCtrl.addNumber('4'),
                          ),
                          ButtonCalculator( 
                            text: '5', 
                            onPressed: () => calculatorCtrl.addNumber('5'),
                          ),
                          ButtonCalculator( 
                            text: '6', 
                            onPressed: () => calculatorCtrl.addNumber('6'),
                          ),
                          ButtonCalculator( 
                            text: '-',
                            color: Color(0xff0a57f4),
                            onPressed: () => calculatorCtrl.selectOperation('-'),
                          ),
                        ],
                      ),
                                
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonCalculator( 
                            text: '1', 
                            onPressed: () => calculatorCtrl.addNumber('1'),
                          ),
                          ButtonCalculator( 
                            text: '2', 
                            onPressed: () => calculatorCtrl.addNumber('2'),
                          ),
                          ButtonCalculator( 
                            text: '3', 
                            onPressed: () => calculatorCtrl.addNumber('3'),
                          ),
                          ButtonCalculator(
                            text: '+',
                            color: Color(0xff0a57f4),
                            onPressed: () => calculatorCtrl.selectOperation('+'),
                          ),
                        ],
                      ),
                                
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonCalculator( 
                            text: '%', 
                            onPressed: () => calculatorCtrl.selectPercentage(),
                          ),
                          ButtonCalculator( 
                            text: '0', 
                            onPressed: () => calculatorCtrl.addNumber('0'),
                          ),
                          ButtonCalculator( 
                            text: '.', 
                            onPressed: () => calculatorCtrl.addPoint(),
                          ),
                          ButtonCalculator( 
                            text: '=',
                            bgColor: Color(0xff0a57f4),
                            color: Colors.white,
                            onPressed: () => calculatorCtrl.calculateResult(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              
            ],
          ),
        ),
      )
   );
  }
}