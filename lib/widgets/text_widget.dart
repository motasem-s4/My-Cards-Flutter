import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {

  TextWidget({this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              wordSpacing: 2),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.amber[700],
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}