import 'package:booking_service_project/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_colors.dart';
import '../../../widgets/custom_text.dart';

class AddAddressCard extends StatelessWidget {
  const AddAddressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      padding: EdgeInsets.all(10),
      height: 100.h,
      width: MediaQuery.of(context).size.width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: CustomText(
                text: 'George Johnson',
                color: Colors.black,
                fontSize: 12.883,
                fontWeight: FontWeight.w600,
              ),
              subtitle: CustomText(
                text: '86 Grange RoadLondonWC25 0NC',
                fontWeight: FontWeight.w400,
                fontSize: 11.77,
                color: Color(0xff3A3939),
              ),
              trailing: Wrap(
                children: [
                  Icon(
                    CupertinoIcons.pen,
                    color: AppColors.btnColor,
                  ),
                  Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: CustomText(
                text: '+44 20 7946 0346',
                color: AppColors.btnColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
