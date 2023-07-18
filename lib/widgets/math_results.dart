import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:calculadora/controllers/calculator_controller.dart';
import 'package:calculadora/widgets/widgets.dart';

class MathResults extends StatelessWidget {

  final calculatorCtrl = Get.find<CalculatorController>(); // find

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
      children: [
        
        Container(
          margin: EdgeInsets.only(right: 10),
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SubResultText( text: '${calculatorCtrl.firstNumber}' ),
              SizedBox(width: 5,),
              SubResultText( text: '${calculatorCtrl.operation}', size: 25, ),
              SizedBox(width: 5,),
              SubResultText( text: '${calculatorCtrl.secondNumber}' ),
            ],
          ),
        ),

        ResultText( text: '${calculatorCtrl.result}' ),
      ],
    ));
  }
}