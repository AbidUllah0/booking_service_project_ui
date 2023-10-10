import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  VoidCallback onPressed;
  Color color;
  Color iconColor;

  ContainerButton({required this.onPressed, required this.color,required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        child: Center(
          child: InkWell(onTap: onPressed, child: Icon(Icons.arrow_forward,color: iconColor,)),
        ),
      ),
    );
  }
}
