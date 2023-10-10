import 'package:booking_service_project/utils/app_colors.dart';
import 'package:booking_service_project/utils/app_images.dart';
import 'package:booking_service_project/views/Payment_Method/components/payment_container.dart';
import 'package:booking_service_project/widgets/customAppBar.dart';
import 'package:booking_service_project/widgets/custom_text.dart';
import 'package:booking_service_project/widgets/custom_textField.dart';
import 'package:booking_service_project/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/buildShowModelBottomSheet.dart';

class PaymentMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: Column(
        children: [
          CustomText(text: 'Payment Method'),
          PaymentContainer(
            color: Color(0xff279B90),
            titleColor: Colors.white,
            subTitleColor: Colors.white,
            widget: CircleAvatar(
              radius: 8,
              backgroundColor: Colors.white,
              child: Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            img: AppImages.paypal,
            title: 'Paypal',
          ),
          PaymentContainer(
            img: AppImages.masterCard,
            widget: null,
            title: 'Master Card',
          ),
          PaymentContainer(
            img: AppImages.visa,
            widget: null,
            title: 'Visa',
          ),
          CustomTextButton(
            text: 'Add New Card',
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: Color(0xff264653),
            decoration: TextDecoration.underline,
            onPressed: () {
              buildShowModalBottomSheet(context);
            },
          ),
        ],
      ),
    );
  }
}
