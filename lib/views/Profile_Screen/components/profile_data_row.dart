import 'package:booking_service_project/utils/app_colors.dart';
import 'package:booking_service_project/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ProfileDataRow extends StatelessWidget {
  String title;
  IconData leadingIcon;
  Color? color;
  VoidCallback? onPressed;

  ProfileDataRow(
      {required this.title,
      required this.leadingIcon,
      this.color,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 50,
      color: color,
      child: InkWell(
        onTap: onPressed,
        child: ListTile(
          title: CustomText(
            text: title,
            color: AppColors.btnColor,
            fontWeight: FontWeight.w500,
            fontSize: 12.7,
          ),
          leading: Icon(
            leadingIcon,
            color: AppColors.btnColor,
            size: 20,
          ),
          trailing: Icon(
            Icons.arrow_forward,
            color: AppColors.btnColor,
            size: 20,
          ),
        ),
      ),
    );
  }
}
