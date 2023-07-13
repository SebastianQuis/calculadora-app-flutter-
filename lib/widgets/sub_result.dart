import 'package:flutter/material.dart';

class SubResult extends StatelessWidget {

  final String text;
  final double size;

  const SubResult({
    required this.text,
    this.size = 40,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      alignment: Alignment.centerRight,
      child: Text( this.text , style: TextStyle(fontSize: size ) ),
    );
  }
}