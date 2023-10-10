import 'package:booking_service_project/utils/app_colors.dart';
import 'package:booking_service_project/utils/app_images.dart';
import 'package:booking_service_project/views/Bottom_NavBar/bottom_navbar.dart';
import 'package:booking_service_project/widgets/custom_text.dart';
import 'package:booking_service_project/widgets/custom_textField.dart';
import 'package:booking_service_project/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Forgot_Screen/forgot_screen.dart';
import '../Home_Screen/home_screen.dart';
import '../SignUp_Screen/signup_screen.dart';
import 'components/custom_tab_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgoundColor,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Image.asset('assets/images/backtop.png'),
              Positioned(
                left: 50,
                right: 50,
                top: 80,
                child: Image.asset(
                  AppImages.splashImg,
                  height: 182,
                  width: 178,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 300,
                  left: 15,
                  right: 15,
                ),
                child: Column(
                  children: [
                    CustomText(
                      text: 'Login as',
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      //color: Colors.white,
                    ),
                    CustomTabBar(),
                    SizedBox(
                      height: 15,
                    ),
                    CustomTextField(hText: 'Enter Email', pIcon: Icons.email),
                    SizedBox(
                      height: 15,
                    ),
                    CustomTextField(
                        hText: 'Password',
                        pIcon: Icons.lock,
                        sIcon: Icons.visibility_rounded),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'Login In',
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CustomBottomNavBar(),
                              ),
                            );
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.arrow_forward,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 15,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: CustomText(
                        text: 'Sign Up',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    Stack(
                      children: [
                        Image.asset(
                          'assets/images/backbtm.png',
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          right: 20,
                          bottom: 20,
                          child: CustomTextButton(
                            text: 'Forgot Password',
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ForgotScreen(),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
