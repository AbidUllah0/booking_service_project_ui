import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  Widget widget;
  double height;

  CustomContainer({
    required this.widget,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      height: height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xff279B90),
        borderRadius: BorderRadius.circular(7),
      ),
      child: widget,
    );
  }
}
