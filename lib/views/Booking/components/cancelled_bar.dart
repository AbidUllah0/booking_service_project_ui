import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';
import '../../../widgets/custom_text.dart';

class CancelledBar extends StatelessWidget {
  const CancelledBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100,
        child: Card(
          color: AppColors.appBackgoundColor,
          child: Row(
            children: [
              Expanded(
                child: Image.asset(
                  AppImages.plumber,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
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
                                text: 'Plumber',
                                fontSize: 11.8,
                                fontWeight: FontWeight.w700,
                              ),
                              CustomText(
                                text: 'by Salena Gomez',
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
                              color: Colors.red,
                            ),
                            child: Center(
                              child: CustomText(
                                text: 'Cancelled',
                                fontSize: 7,
                                fontWeight: FontWeight.w600,
                                //color: AppCo,
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
      ),
    );
  }
}
