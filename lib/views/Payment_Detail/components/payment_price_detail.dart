import 'package:booking_service_project/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class PaymentPriceDetail extends StatelessWidget {
  String startText;
  double? fontSize;
  String endText;
  FontWeight? fontWeight;

  PaymentPriceDetail({
    required this.startText,
    required this.endText,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: startText,
          color: Colors.black,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
        CustomText(
          text: endText,
          fontSize: fontSize,
          color: Colors.black,
          fontWeight: fontWeight,
        ),
      ],
    );
  }
}
