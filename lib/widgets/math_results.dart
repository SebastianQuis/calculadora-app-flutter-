import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:calculadora/controllers/calculator_controller.dart';
import 'package:calculadora/widgets/sub_result.dart';
import 'package:calculadora/widgets/main_result.dart';

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
              SubResult( text: '${calculatorCtrl.primerNumero}' ),
              SizedBox(width: 5,),
              SubResult( text: '${calculatorCtrl.operacion}', size: 25, ),
              SizedBox(width: 5,),
              SubResult( text: '${calculatorCtrl.segundoNumero}' ),
            ],
          ),
        ),

        MainResultText( text: '${calculatorCtrl.resultado}' ),
      ],
    ));
  }
}