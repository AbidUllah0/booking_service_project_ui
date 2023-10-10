import 'dart:async';
import 'package:booking_service_project/utils/app_colors.dart';
import 'package:booking_service_project/utils/app_images.dart';
import 'package:flutter/material.dart';

import '../Login_Screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.splashTopColor.withBlue(30),
            AppColors.splashbottomColor.withBlue(30),
          ],
        )),
        child: Center(
          child: Image.asset(
            AppImages.splashImg,
            height: 300,
            width: 300,
          ),
        ),
      ),
    );
  }
}
