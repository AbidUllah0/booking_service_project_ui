import 'package:booking_service_project/utils/app_images.dart';
import 'package:booking_service_project/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaymentContainer extends StatelessWidget {
  Color? color;
  Color? titleColor;
  Color? subTitleColor;
  String title;
  String img;
  Widget? widget;

  PaymentContainer({
    this.color,
    required this.img,
    required this.title,
    this.titleColor,
    this.subTitleColor,
    this.widget,
  });

  bool status = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: color == null ? Colors.white : color,
      child: ListTile(
        leading: Image.asset(img),
        title: CustomText(
          text: title,
          color: titleColor == null ? Colors.black : Colors.white,
        ),
        subtitle: CustomText(
          text: 'xxxx xxxx xxxx 0289',
          color: subTitleColor == null ? Colors.black : Colors.white,
        ),
        trailing: widget == null ? null : widget,
      ),
    );
  }
}
