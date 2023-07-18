import 'package:flutter/material.dart';

// class CalculatorButton extends StatelessWidget {

//   final String? text;
//   final bool isText;
//   final Color color;
//   final Color bgColor;
//   final IconData? icon;

//   final Function onPressed;

//   CalculatorButton({
//     Key? key,
//     bgColor,
//     this.text, 
//     required this.onPressed,
//     this.color = Colors.black, 
//     this.isText = true,
//     this.icon,
//   }): this.bgColor = bgColor ?? Colors.white,
//       super(key: key);
      

//   @override
//   Widget build(BuildContext context) {
//     // Button
//     final buttonStyle = TextButton.styleFrom(
//         primary: Colors.black,
//         backgroundColor: bgColor,
//         shape: StadiumBorder(),
//         side: BorderSide(
//           color: Colors.black26,
//         ),
//     );

//     return Container(
//       margin: EdgeInsets.only( top: 5, right: 5, left: 5, bottom: 5 ),
//       child: TextButton(
//         style: buttonStyle,
//         child: Container(
//           width: 60,
//           height: 60,
//           child: Center(
//             child: isText 
//               ? Text( this.text! , style: TextStyle( fontSize: 35, fontWeight: FontWeight.w400, color: color ))
//               : Icon(this.icon, color: Color(0xff0a57f4), size: 35,)
//           ),
//         ),
//         onPressed: () => this.onPressed(),
//       ),
//     );
//   }
// }

class ButtonCalculator extends StatelessWidget {
  final String? text;
  final bool isText;
  final Color color;
  final Color bgColor;
  final IconData? icon;

  final Function onPressed;

  ButtonCalculator({
    Key? key,
    bgColor,
    this.text, 
    required this.onPressed,
    this.color = Colors.black, 
    this.isText = true,
    this.icon,
  }): this.bgColor = bgColor ?? Colors.white,
      super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => this.onPressed(),
      child: Container(
        margin: EdgeInsets.only( top: 5, right: 5, left: 5, bottom: 5 ),
        decoration: BoxDecoration(
          color: bgColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              // offset: Offset(0,0),
              blurRadius: 2.5,
              color: Colors.black45
            )
          ]
        ),
        width: size.width * 0.22,
        height: size.height * 0.11,
        child: Center(
          child: isText 
            ? Text( this.text! , style: TextStyle( fontSize: 35, fontWeight: FontWeight.w400, color: color ))
            : Icon(this.icon, color: Color(0xff0a57f4), size: 35,)
        ),
      ),
    );
  }
}