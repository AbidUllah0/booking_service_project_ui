import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/custom_text.dart';
import 'custom_container.dart';

class DetailsContainer extends StatelessWidget {
  const DetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(text: 'Details'),
          Container(
            height: 94.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    'assets/images/sl1.png',
                    fit: BoxFit.fitHeight,
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xffFFD600),
                              size: 10,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            CustomText(
                              text: '4.7/5 ',
                              color: Color(0xffFFD600),
                              fontWeight: FontWeight.w600,
                              fontSize: 8.281,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            CustomText(
                              text: '(39)',
                              fontSize: 8.281,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        CustomText(
                          text:
                              'I am a Wall Painter. I will \npaint your home walls\nsmoothy',
                          color: Colors.black,
                          fontSize: 8.281,
                          fontWeight: FontWeight.w600,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'By Charless',
                              color: Colors.black,
                              fontSize: 9.201,
                              fontWeight: FontWeight.w700,
                            ),
                            CustomText(
                              text: "\$12/hr",
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      height: 142.h,
    );
  }
}
