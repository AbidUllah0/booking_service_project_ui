import 'package:booking_service_project/utils/app_images.dart';
import 'package:booking_service_project/views/Login_Screen/login_screen.dart';
import 'package:booking_service_project/views/SignUp_Screen/components/signup_tabbar.dart';
import 'package:booking_service_project/widgets/custom_text.dart';
import 'package:booking_service_project/widgets/custom_textField.dart';
import 'package:booking_service_project/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/signupbtm.png',
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),
              Image.asset('assets/images/signuptop.png'),
              Positioned(
                left: 100,
                right: 100,
                top: 40,
                child: Image.asset(
                  AppImages.splashImg,
                  height: 153,
                  width: 150,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Positioned(
                top: 190,
                left: 0,
                right: 0,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Create\nAccount as',
                        fontSize: 29,
                        fontWeight: FontWeight.w700,
                      ),
                      SignUpTabBar(),
                      CustomTextField(hText: 'Enter Email', pIcon: Icons.email),
                      SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                          hText: 'Confirm Email', pIcon: Icons.email),
                      SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                          hText: 'Password',
                          pIcon: Icons.lock,
                          sIcon: Icons.visibility),
                      SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                          hText: 'Confirm Password',
                          pIcon: Icons.lock,
                          sIcon: Icons.visibility),
                      SizedBox(
                        height: 5,
                      ),
                      CustomTextField(hText: 'Phone Number', pIcon: Icons.call),
                      SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                          hText: 'Confirm Phone Number', pIcon: Icons.call),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'Sign Up',
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                color: Color(0xff264653),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Icon(Icons.arrow_forward),
                              ),
                            ),
                          )
                        ],
                      ),
                      CustomTextButton(
                        text: 'Log In',
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
