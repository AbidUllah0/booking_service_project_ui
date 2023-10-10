import 'package:booking_service_project/views/Profile_Address/components/add_address_card.dart';
import 'package:booking_service_project/widgets/custom_profile_appbar.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../widgets/custom_button.dart';
import 'components/edit_address.dart';

class ProfileAddress extends StatelessWidget {
  const ProfileAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomProfileAppBar(
            topText: 'Address',
          ),
          AddAddressCard(),
          AddAddressCard(),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: CustomButton(
              btnText: 'Add New Address',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditAddress(),
                  ),
                );
              },
              btnColor: AppColors.btnColor,
            ),
          ),
        ],
      ),
    );
  }
}
