import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/app_colors.dart';
import '../utils/app_images.dart';

class CustomDecoratedAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: AppColors.appBackgoundColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(700),
          bottomLeft: Radius.circular(700),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.appBackgoundColor.withOpacity(0.3), // Shadow color
            spreadRadius: 5, // Spread radius
            blurRadius: 2, // Blur radius
            offset: Offset(25, 10), // Offset in the (x, y) direction
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            left: 10,
            right: 10,
            bottom: 30,
            child: Image.asset(
              AppImages.profile,
              height: 100,
              width: 100,
            ),
          ),
          Positioned(
            right: 150,
            bottom: 35,
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 3,
                      spreadRadius: 2,
                      offset: Offset(0, 0))
                ],
              ),
              child: Center(
                child: Icon(
                  FontAwesomeIcons.pen,
                  color: Colors.black,
                  size: 8.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
