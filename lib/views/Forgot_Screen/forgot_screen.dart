import 'package:booking_service_project/utils/app_colors.dart';
import 'package:booking_service_project/widgets/container_button.dart';
import 'package:booking_service_project/widgets/custom_text.dart';
import 'package:booking_service_project/widgets/custom_textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Login_Screen/login_view.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgoundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Image(
              image: AssetImage('assets/images/forgottop.png'),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            top: 150,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Forgot \nPassword?',
                    fontSize: 29,
                    fontWeight: FontWeight.w800,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  CustomTextField(
                      hText: 'Enter Email', pIcon: Icons.email_outlined),

                  SizedBox(
                    height: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'Send Email',
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
                        ContainerButton(
                          iconColor: Colors.white,
                          color: Color(0xff264653),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginView(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 440.h,
            bottom: 0.h,
            right: 0.w,
            child: Image.asset('assets/images/forgotbtm.png'),),
        ],
      ),
    );
  }
}
