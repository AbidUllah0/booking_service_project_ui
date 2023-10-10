import 'package:booking_service_project/views/Profile_Setting/components/custom_container_notification.dart';
import 'package:booking_service_project/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationSection extends StatelessWidget {
  const NotificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Notification',
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(
                  height: 15,
                ),
                CustomText(
                  text: 'Today',
                  fontSize: 12,
                  color: Color(0xff515151),
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 380.h,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return CustomContainerDataNotification();
                    },
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomText(
                  text: 'Today',
                  fontSize: 12.sp,
                  color: Color(0xff515151),
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return CustomContainerDataNotification();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
