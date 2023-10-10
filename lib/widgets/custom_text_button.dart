import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  String text;
  VoidCallback onPressed;
  FontWeight? fontWeight;
  double? fontSize;
  Color? color;
  TextDecoration? decoration;

  CustomTextButton({
    required this.text,
    required this.onPressed,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          decoration: decoration,
          color: color,
        ),
      ),
    );
  }
}
