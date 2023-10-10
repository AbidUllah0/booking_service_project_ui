import 'package:booking_service_project/views/Profile_Screen/components/profile_data_row.dart';
import 'package:booking_service_project/widgets/custom_profile_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/notification_section.dart';

class ProfileSetting extends StatelessWidget {
  const ProfileSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomProfileAppBar(topText: 'Setting'),
          ProfileDataRow(
            title: 'Notification',
            leadingIcon: Icons.notifications,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationSection(),
                ),
              );
            },
          ),
          ProfileDataRow(
              title: 'Terms Of Services',
              leadingIcon: FontAwesomeIcons.heartCircleXmark),
          ProfileDataRow(
              title: 'Privacy Policy', leadingIcon: Icons.privacy_tip_outlined),
          ProfileDataRow(
              title: 'Help and Support',
              leadingIcon: Icons.question_mark_outlined),
        ],
      ),
    );
  }
}
