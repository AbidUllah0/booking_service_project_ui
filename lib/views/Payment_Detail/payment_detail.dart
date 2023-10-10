import 'package:booking_service_project/views/Payment_Detail/components/custom_container.dart';
import 'package:booking_service_project/views/Payment_Method/payment_method.dart';
import 'package:booking_service_project/widgets/customAppBar.dart';
import 'package:booking_service_project/widgets/custom_button.dart';
import 'package:booking_service_project/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/details_container.dart';
import 'components/payment_price_detail.dart';

class PaymentDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Proceed',
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
            CustomContainer(
              widget: Row(
                children: [
                  Icon(
                    Icons.calendar_today,
                    color: Colors.white,
                    size: 16,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  CustomText(
                    text: '28 Sep,2023',
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                  CustomText(
                    text: '  (12:00 pm)',
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              height: 30.h,
            ),
            CustomContainer(
              widget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Address',
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  CustomText(
                    text: '86 Grange RoadLondonWC25 0NC',
                    fontSize: 9,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              height: 55,
            ),
            CustomContainer(
              widget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Payment Method',
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: 'Add Payment',
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                    ],
                  ),
                ],
              ),
              height: 80,
            ),
            DetailsContainer(),
            SizedBox(
              height: 15,
            ),
            CustomText(
              text: 'Payment Details',
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            SizedBox(
              height: 15,
            ),
            PaymentPriceDetail(
                startText: 'Service Charge Total',
                endText: '\$24.00',
                fontSize: 11),
            SizedBox(
              height: 10,
            ),
            PaymentPriceDetail(
                startText: 'Discount', endText: '-\$4.00', fontSize: 11),
            Divider(
              thickness: 2.5,
              height: 20,
            ),
            PaymentPriceDetail(
                startText: 'Total',
                endText: '-\$20.00',
                fontSize: 17,
                fontWeight: FontWeight.w600),
            SizedBox(
              height: 70.h,
            ),
            CustomButton(
                btnText: 'Confirm',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentMethod(),
                    ),
                  );
                },
                btnColor: Color(0xff264653))
          ],
        ),
      ),
    );
  }
}
