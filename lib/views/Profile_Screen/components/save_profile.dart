import 'package:booking_service_project/views/Profile_Screen/components/edit_profile.dart';
import 'package:booking_service_project/views/Profile_Screen/profile_screen.dart';
import 'package:booking_service_project/widgets/custom_app_bar.dart';
import 'package:booking_service_project/widgets/custom_button.dart';
import 'package:booking_service_project/widgets/custom_textField.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class SaveProfile extends StatelessWidget {
  const SaveProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomDecoratedAppBar(),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                CustomTextField(hText: 'Full Name', pIcon: Icons.person),
                SizedBox(height: 15),
                CustomTextField(
                    hText: 'Email Address', pIcon: Icons.alternate_email),
                SizedBox(height: 15),
                CustomTextField(hText: 'Phone Number', pIcon: Icons.call),
                SizedBox(height: 25),
                CustomButton(
                    btnText: 'Save',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        ),
                      );
                    },
                    btnColor: AppColors.btnColor)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
