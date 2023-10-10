import 'package:booking_service_project/views/Home_Screen/components/custom_home_appBar.dart';
import 'package:booking_service_project/views/Profile_Screen/components/profile_text_field.dart';
import 'package:booking_service_project/views/Profile_Screen/components/save_profile.dart';
import 'package:booking_service_project/widgets/custom_button.dart';
import 'package:booking_service_project/widgets/custom_textField.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';
import '../../../widgets/custom_app_bar.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            CustomDecoratedAppBar(),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  ProfileTextField(
                      hintText: 'First Name', labelText: "First Name"),
                  ProfileTextField(
                      hintText: 'Last name', labelText: "Last Name"),
                  ProfileTextField(
                      hintText: 'Email Address', labelText: "Email Address"),
                  ProfileTextField(
                      hintText: 'Phone Number', labelText: "Phone Number"),
                  SizedBox(
                    height: 25,
                  ),
                  CustomButton(
                      btnText: 'Edit Profile',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SaveProfile(),
                          ),
                        );
                      },
                      btnColor: AppColors.btnColor),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
