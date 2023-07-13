import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {

  final bool big;
  final String text;
  final Color color;
  final Color bgColor;

  final Function onPressed;

  CalculatorButton({
    Key? key,
    bgColor,
    this.big = false, 
    required this.text, 
    required this.onPressed,
    this.color = Colors.black, 
  }): this.bgColor = bgColor ?? Color(0xfffbfbfb),
      super(key: key);
      

  @override
  Widget build(BuildContext context) {
    // Button
    final buttonStyle = TextButton.styleFrom(
        primary: Colors.black,
        backgroundColor: bgColor,
        shape: StadiumBorder(),
        side: BorderSide(
          color: Colors.black38,
        ),
    );

    return Container(
      margin: EdgeInsets.only( top: 5, right: 8, left: 8, bottom: 5 ),
      child: TextButton(
        style: buttonStyle,
        child: Container(
          width: this.big ? 150 : 65,
          height: 65,
          child: Center(
            child: Text( this.text , style: TextStyle( fontSize: 25, fontWeight: FontWeight.w400, color: color ),)
          ),
        ),
        onPressed: () => this.onPressed(),
      ),
    );
  }
}