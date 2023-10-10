import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  VoidCallback onPressed;
  String btnText;
  Color btnColor;

  CustomButton(
      {required this.btnText, required this.onPressed, required this.btnColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: btnColor,
        ),
        onPressed: onPressed,
        child: Text(btnText),
      ),
    );
  }
}
