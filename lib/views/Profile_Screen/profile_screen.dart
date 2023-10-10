import 'package:booking_service_project/utils/app_colors.dart';
import 'package:booking_service_project/views/Profile_Address/profile_address.dart';
import 'package:booking_service_project/views/Profile_Screen/components/edit_profile.dart';
import 'package:booking_service_project/views/Profile_Screen/components/profile_data_row.dart';
import 'package:booking_service_project/views/Profile_Setting/profile_setting.dart';
import 'package:booking_service_project/widgets/custom_button.dart';
import 'package:booking_service_project/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Add_New_Card/add_new_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 50, right: 50, top: 160, bottom: 20),
            height: 300,
            width: width,
            decoration: BoxDecoration(
              color: AppColors.appBackgoundColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(700),
                bottomLeft: Radius.circular(700),
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.appBackgoundColor
                      .withOpacity(0.3), // Shadow color
                  spreadRadius: 5, // Spread radius
                  blurRadius: 2, // Blur radius
                  offset: Offset(25, 10), // Offset in the (x, y) direction
                ),
              ],
            ),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Stack(
                children: [
                  Center(
                      child: Icon(
                    Icons.person,
                    size: 50.sp,
                    color: Colors.black,
                  )),
                  Positioned(
                    bottom: 20,
                    right: 70,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 3,
                              spreadRadius: 2,
                              offset: Offset(0, 0))
                        ],
                      ),
                      child: Center(
                        child: Icon(
                          FontAwesomeIcons.pen,
                          color: Colors.black,
                          size: 8,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          ProfileDataRow(
            title: 'My Profile',
            leadingIcon: Icons.person,
            color: AppColors.appBackgoundColor.withOpacity(0.3),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditProfile(),
                ),
              );
            },
          ),
          ProfileDataRow(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddNewCard(),
                ),
              );
            },
            title: 'My Cards',
            leadingIcon: Icons.credit_card_rounded,
          ),
          ProfileDataRow(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileAddress(),
                  ),
                );
              },
              title: 'My Address',
              leadingIcon: FontAwesomeIcons.solidAddressCard),
          ProfileDataRow(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileSetting(),
                  ),
                );
              },
              title: 'Setting',
              leadingIcon: Icons.settings),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: CustomButton(
                btnText: 'Logout',
                onPressed: () {},
                btnColor: AppColors.btnColor),
          )
        ],
      ),
    );
  }
}
