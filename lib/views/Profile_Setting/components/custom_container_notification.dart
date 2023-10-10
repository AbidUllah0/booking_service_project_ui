import 'package:booking_service_project/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomContainerDataNotification extends StatelessWidget {
  const CustomContainerDataNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade300,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.more_time_rounded),
              CustomText(
                text: 'Lorem ipsum dolor sit amet, consec elit.',
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              SizedBox(
                width: 10,
              ),
              CustomText(
                text: '23 mins ago',
                fontSize: 9,
                fontWeight: FontWeight.w400,
                color: Color(0xff707070),
              ),
            ],
          ),
          CustomText(
            text:
                'Mauris non tempor libero. Integer ut sapien vel eros tincidunt molestie sed eu leo. Ut ultricies quam est, ultricies malesuada nibh euismod eget. Pellentesque egestas arcu nibh, vel lobortis diam luctus vitae. Duis dignissim nisl vel dui f',
            fontSize: 8,
            fontWeight: FontWeight.w400,
            color: Color(0xff707070),
          ),
        ],
      ),
    );
  }
}
