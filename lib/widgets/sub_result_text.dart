import 'package:flutter/material.dart';

class SubResultText extends StatelessWidget {

  final String text;
  final double size;

  const SubResultText({
    required this.text,
    this.size = 40,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: Text( this.text , style: TextStyle(fontSize: size ) ),
    );
  }
}