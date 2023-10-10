import 'package:booking_service_project/utils/app_colors.dart';
import 'package:booking_service_project/utils/app_images.dart';
import 'package:booking_service_project/views/Login_Screen/components/login_view_title_text.dart';
import 'package:booking_service_project/views/Login_Screen/login_screen.dart';
import 'package:booking_service_project/views/SignUp_Screen/signup_screen.dart';
import 'package:booking_service_project/widgets/container_button.dart';
import 'package:booking_service_project/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/custom_text.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgoundColor,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/loginfr.png',
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
              Positioned(
                top: 60,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Image.asset(
                      AppImages.splashImg,
                      height: 63,
                      width: 62,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    LoginViewTitleText(),
                    SizedBox(
                      height: 50,
                    ),
                    CircleAvatar(
                      radius: 90,
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage('assets/images/abid.png'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomText(
                      text: 'Abid Ullah',
                      fontSize: 23,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 20,
                right: 20,
                bottom: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Login',
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                    ContainerButton(
                      iconColor: Colors.black,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        color: Colors.white)
                  ],
                ),
              ),
              Positioned(
                bottom: 30,
                right: 30,
                child: CustomTextButton(
                  text: 'Sign Up',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ),
                    );
                  },
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  decoration: TextDecoration.underline,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
