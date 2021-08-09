import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BorderContainer extends StatelessWidget {
  final String text;
  final Color color;

  const BorderContainer({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(7.0),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 10, color: color, fontWeight: FontWeight.bold),
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: color,
        ),
        borderRadius: BorderRadius.all(
            Radius.circular(20.0) //                 <--- border radius here
            ),
      ),
    );
  }
}
