import 'package:booking_service_project/utils/app_colors.dart';
import 'package:booking_service_project/utils/app_images.dart';
import 'package:booking_service_project/widgets/customAppBar.dart';
import 'package:booking_service_project/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/custom_text.dart';

class BookingHome extends StatelessWidget {
  List<String> _img = [
    AppImages.helpMoving,
    AppImages.plumber,
    AppImages.cleaning,
  ];
  List _titleList = [
    'Help Moving',
    'Plumber',
    'Cleaning',
  ];
  List _subTitle = [
    'by George javis',
    'by George javis',
    'by Salena Gomez',
  ];
  List _btnText = ['Completed', 'Cancelled', 'Active'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          itemCount: _img.length,
          itemBuilder: (context, index) {
            return Container(
              height: 100.h,
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: AppColors.appBackgoundColor,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        _img[index],
                        height: MediaQuery.of(context).size.height,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: _titleList[index],
                                      fontSize: 11.8,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    CustomText(
                                      text: _subTitle[index],
                                      fontSize: 8.8,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color(0xffFFD600),
                                      size: 10,
                                    ),
                                    CustomText(
                                      text: '4.7/5',
                                      fontSize: 8.83,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 15.h,
                                  width: 70.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: index == 0
                                        ? Color(0xff5FEA05)
                                        : index == 1
                                            ? Color(0xffFF1212)
                                            : Colors.white,
                                  ),
                                  child: Center(
                                    child: CustomText(
                                      text: _btnText[index],
                                      fontSize: 7,
                                      fontWeight: FontWeight.w600,
                                      color: index == 2
                                          ? AppColors.appBackgoundColor
                                          : null,
                                    ),
                                  ),
                                ),
                                CustomText(
                                  text: '\$12/hr',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
