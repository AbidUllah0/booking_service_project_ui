import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String hText;
  IconData? pIcon;
  IconData? sIcon;

  CustomTextField({required this.hText, this.pIcon, this.sIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
            hintText: hText,
            prefixIcon: Icon(pIcon),
            suffixIcon: Icon(sIcon),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8))),
      ),
    );
  }
}
