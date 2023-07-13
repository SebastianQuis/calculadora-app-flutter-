
import 'package:get/get.dart';

class CalculatorController extends GetxController{

  var primerNumero  = '1'.obs;
  var segundoNumero = '2'.obs;
  var resultado     = '3'.obs;
  var operacion     = '+'.obs;

  resetAC() {
    this.primerNumero.value  = '0';
    this.segundoNumero.value = '0';
    this.resultado.value     = '0';
    this.operacion.value     = '+';
  }

  addNumber( String number ) {
    if (resultado.value == '0') 
      return resultado.value = number;
    
    // TODO: VALOR NEGATIVO
    if (resultado.startsWith('-0'))
      return resultado.value = '-' + number;

    resultado.value = resultado.value + number;
  }

  changeOperation() {
    if (resultado.startsWith('-') ) {
      resultado.value = resultado.value.replaceFirst('-', '');
    } else {
      resultado.value = '-' + resultado.value;
    }
  }

  addPoint() {
    if (resultado.contains('.')) return;

    if (resultado.startsWith('0')) {
      return resultado.value = '0.';
    } else {
      return resultado.value += '.';
    }
  }

  selectOperation(String newOperation) {
    operacion.value    = newOperation;

    if (primerNumero.value == '0') {
      primerNumero.value = resultado.value;
    }

    resultado.value = '0';
  }

  deleteLastEntry() {
    if (resultado.value.replaceAll('-', '').length > 1) { // si en caso sea negativo, que se borre internamente para la condicion
      resultado.value = resultado.value.substring(0, resultado.value.length - 1);
    } else {
      resultado.value = '0';
    }
  }

  calculateResult() {
    
    double num1 = double.parse(primerNumero.value);
    double num2 = double.parse(resultado.value);
    List<String> splitted;

    segundoNumero.value = resultado.value;

    switch (operacion.value) {
      case '+':
        resultado.value = '${num1 + num2}';
        break;
      case '-':
        resultado.value = '${num1 - num2}';
        break;
      case 'X':
        resultado.value = '${num1 * num2}';
        break;
      case '/':
        resultado.value = '${num1 / num2}';
        break;
      default:
        break;
    }

    if (resultado.value.endsWith('.0')) {
      resultado.value = resultado.value.substring(0, resultado.value.length - 2);
    }

    if (resultado.value.contains('.')) {
      splitted = resultado.value.split('.');
      if (splitted[1].length > 2) {
        resultado.value = splitted[0] + '.' + splitted[1].substring(0,2);
      }
    }    
  }  

}