import 'package:flutter/material.dart';

class YardTextField extends StatelessWidget {
  String hintText;
  String lableText;

  YardTextField({
    required this.hintText,
    required this.lableText,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
       focusedBorder: UnderlineInputBorder(
         borderSide: BorderSide(
           color: Colors.grey,
         ),
       ),
          labelText: lableText,
          hintText: hintText,
          labelStyle: TextStyle(
            color: Color(0xff7C7C7C),
          )),
    );
  }
}
