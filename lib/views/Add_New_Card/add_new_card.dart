import 'package:booking_service_project/utils/app_colors.dart';
import 'package:booking_service_project/views/Payment_Method/components/buildShowModelBottomSheet.dart';
import 'package:booking_service_project/views/Payment_Method/components/payment_container.dart';
import 'package:booking_service_project/views/Profile_Screen/profile_screen.dart';
import 'package:booking_service_project/widgets/custom_button.dart';
import 'package:booking_service_project/widgets/custom_profile_appbar.dart';
import 'package:flutter/material.dart';

import '../../utils/app_images.dart';

class AddNewCard extends StatelessWidget {
  const AddNewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomProfileAppBar(
            topText: 'Cards',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 25),
            child: Column(
              children: [
                PaymentContainer(
                  img: AppImages.visa,
                  title: 'Visa',
                  widget: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
                SizedBox(height: 15),
                PaymentContainer(
                  img: AppImages.masterCard,
                  title: 'Master Card',
                  widget: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
                SizedBox(height: 15),
                PaymentContainer(
                  img: AppImages.paypal,
                  title: 'Paypal',
                  widget: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
                SizedBox(height: 40),
                CustomButton(
                  btnText: 'Add New Card',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ),
                    );
                  },
                  btnColor: AppColors.appBackgoundColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
