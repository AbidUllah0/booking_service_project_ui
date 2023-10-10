import 'package:flutter/material.dart';

class ProfileTextField extends StatelessWidget {
  String hintText;
  String labelText;

  ProfileTextField({required this.hintText, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontSize: 12,
        color: Colors.black,
        fontWeight: FontWeight.w600,
        decoration: TextDecoration.none,
      ),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: 13.939,
          color: Color(0xff7C7C7C),
          fontWeight: FontWeight.w400,
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        enabledBorder: UnderlineInputBorder(
          //<-- SEE HERE
          borderSide: BorderSide(
            width: 3,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
