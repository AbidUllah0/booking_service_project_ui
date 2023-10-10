import 'package:booking_service_project/utils/app_colors.dart';
import 'package:booking_service_project/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProfileAppBar extends StatelessWidget {
  String topText;

  CustomProfileAppBar({required this.topText});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(right: 30),
      padding: EdgeInsets.only(bottom: 20),
      height: 100.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: AppColors.appBackgoundColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(200),
          bottomRight: Radius.circular(350),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.appBackgoundColor.withOpacity(0.3),
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(30, 0),
          ),
        ],
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: CustomText(
          text: topText,
          fontSize: 17,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
