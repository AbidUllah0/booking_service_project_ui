import 'package:booking_service_project/utils/app_colors.dart';
import 'package:booking_service_project/views/Payment_Detail/payment_detail.dart';
import 'package:booking_service_project/views/Yard_work/components/yard_textfield.dart';
import 'package:booking_service_project/widgets/customAppBar.dart';
import 'package:booking_service_project/widgets/custom_button.dart';
import 'package:booking_service_project/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class YardWork extends StatelessWidget {
  const YardWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Yard Work',
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
              YardTextField(
                hintText: 'First Name',
                lableText: 'First Name',
              ),
              SizedBox(
                height: 10,
              ),
              YardTextField(
                hintText: 'Last Name',
                lableText: 'Last Name',
              ),
              SizedBox(
                height: 10,
              ),
              YardTextField(
                hintText: 'Email Address',
                lableText: 'Email Address',
              ),
              SizedBox(
                height: 10,
              ),
              YardTextField(
                hintText: 'Password',
                lableText: 'Password',
              ),
              SizedBox(
                height: 10,
              ),
              YardTextField(
                hintText: 'Confirm Password',
                lableText: 'Confirm Password',
              ),
              SizedBox(
                height: 10,
              ),
              YardTextField(
                hintText: 'Phone Number',
                lableText: 'Phone Number',
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                btnText: 'Continue',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentDetail(),
                    ),
                  );
                },
                btnColor: AppColors.splashbottomColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
