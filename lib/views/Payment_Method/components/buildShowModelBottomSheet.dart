import 'package:booking_service_project/utils/app_images.dart';
import 'package:booking_service_project/views/Booking/booking_home_screen.dart';
import 'package:booking_service_project/views/Booking/components/booking_tab_bar.dart';
import 'package:booking_service_project/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/app_colors.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/custom_textField.dart';

Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
  bool _value = true;
  return showModalBottomSheet(
    backgroundColor: AppColors.appBackgoundColor,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
      topRight: Radius.circular(32),
      topLeft: Radius.circular(32),
    )),
    context: context,
    builder: (context) {
      return Container(
        padding: EdgeInsets.all(15),
        height: 300.h,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Card',
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(hText: 'Name on Card', pIcon: Icons.person),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
                hText: 'Card Number', pIcon: Icons.credit_card_rounded),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: CustomTextField(
                    hText: 'Card Expiry',
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: CustomTextField(
                    hText: 'CVV',
                  ),
                ),
              ],
            ),
            CheckboxListTile(
              activeColor: AppColors.btnColor,
              controlAffinity: ListTileControlAffinity.leading,
              contentPadding: EdgeInsets.zero,
              value: _value,
              onChanged: (value) {
                _value == value;
              },
              title: Text('Save Card'),
            ),
            customDialog(context)
          ],
        ),
      );
    },
  );
}

CustomButton customDialog(BuildContext context) {
  return CustomButton(
    btnText: 'Add Info',
    onPressed: () {
      Navigator.pop(context);
      showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              padding: EdgeInsets.all(15),
              height: 250.h,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Image.asset(
                    AppImages.bookingImg,
                    height: 74,
                    width: 74,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    text: 'Booking Confirmed',
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: AppColors.btnColor,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non tempor libero. Integer ut sapien vel eros tincidunt molestie sed eu leo. Ut ultricies quam est, ultricies malesuada nibh euismod eget. Pellentesque egestas arcu nibh, vel lobortis',
                    textAlign: TextAlign.center,
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff474747),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                    btnText: 'OK',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookingTabBar(),
                        ),
                      );
                    },
                    btnColor: AppColors.btnColor,
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
    btnColor: AppColors.btnColor,
  );
}
