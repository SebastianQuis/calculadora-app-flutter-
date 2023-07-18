
import 'package:get/get.dart';

class CalculatorController extends GetxController{

  var firstNumber  = '0'.obs;
  var secondNumber = '0'.obs;
  var result       = '0'.obs;
  var operation    = '+'.obs;

  resetAC() {
    this.firstNumber.value  = '0';
    this.secondNumber.value = '0';
    this.result.value     = '0';
    this.operation.value     = '+';
  }

  addNumber( String number ) {
    if (result.value == '0') 
      return result.value = number;
    
    if (result.startsWith('-0'))
      return result.value = '-' + number;

    result.value = result.value + number;
  }

  changeOperation() {
    if (result.startsWith('-') ) {
      result.value = result.value.replaceFirst('-', '');
    } else {
      result.value = '-' + result.value;
    }
  }

  addPoint() {
    if (result.contains('.')) return;

    (result.startsWith('0')) 
      ? result.value = '0.' 
      : result.value += '.';
  }

  selectOperation(String newOperation) {
    operation.value = newOperation;

    if (firstNumber.value == '0') 
      firstNumber.value = result.value;


    result.value = '0';
  }

  selectPercentage() => result.value = result.value + '%';

  deleteLastEntry() {
    (result.value.replaceAll('-', '').length > 1) // si en caso sea negativo, que se borre internamente para la condicion
      ? result.value = result.value.substring(0, result.value.length - 1)
      : result.value = '0';
    
  }

  calculateResult() {
    firstNumber.value = clearPercentage(firstNumber.value);
    result.value      = clearPercentage(result.value);
    
    double num1 = double.parse(firstNumber.value);
    double num2 = double.parse(result.value);
    List<String> splitted;

    secondNumber.value = result.value;

    switch (operation.value) {
      case '+':
        result.value = '${num1 + num2}';
        break;
      case '-':
        result.value = '${num1 - num2}';
        break;
      case 'X':
        result.value = '${num1 * num2}';
        break;
      case '/':
        result.value = '${num1 / num2}';
        break;
      default:
        break;
    }

    if (result.value.endsWith('.0')) // si es 20.0
      result.value = result.value.substring(0, result.value.length - 2);

    if (result.value.contains('.')) { // que salga maximo dos decimales
      splitted = result.value.split('.');
      if (splitted[1].length > 2) {
        result.value = splitted[0] + '.' + splitted[1].substring(0,2);
      }
    }    
  }

  clearPercentage(String number) {
    if (number.contains('%')) {
      double value = double.parse(number.replaceAll('%', ''));
      double result = value * 0.01;
      return result.toString();
    } else {
      return number;
    }
  }

}