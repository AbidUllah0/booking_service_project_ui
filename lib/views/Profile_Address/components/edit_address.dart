import 'package:booking_service_project/utils/app_colors.dart';
import 'package:booking_service_project/views/Profile_Screen/profile_screen.dart';
import 'package:booking_service_project/widgets/custom_button.dart';
import 'package:booking_service_project/widgets/custom_profile_appbar.dart';
import 'package:booking_service_project/widgets/custom_text.dart';
import 'package:booking_service_project/widgets/custom_textField.dart';
import 'package:flutter/material.dart';

class EditAddress extends StatelessWidget {
  const EditAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomProfileAppBar(topText: 'Edit Address'),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
            child: Column(
              children: [
                CustomTextField(
                  hText: 'George Johnson',
                  pIcon: Icons.person,
                ),
                SizedBox(height: 15),
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.shade300,
                    ),
                  ),
                  child: Center(
                    child: CustomText(
                      text: '86 Grange RoadLondonWC25 0NC',
                      fontSize: 12.839,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff515151),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                CustomTextField(
                  hText: '+44 20 7946 0346',
                  pIcon: Icons.call,
                ),
                SizedBox(height: 40),
                CustomButton(
                  btnText: 'Add New Address',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ),
                    );
                  },
                  btnColor: AppColors.btnColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
