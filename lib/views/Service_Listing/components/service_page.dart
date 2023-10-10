import 'package:booking_service_project/models/service_listing_data.dart';
import 'package:booking_service_project/utils/app_colors.dart';
import 'package:booking_service_project/views/Service_Listing/service_listing.dart';
import 'package:booking_service_project/widgets/customAppBar.dart';
import 'package:booking_service_project/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../widgets/custom_button.dart';
import '../../Payment/payment_screen.dart';
import 'btmContainer.dart';
import 'custom_horizontainal_container.dart';

class ServicePage extends StatelessWidget {
  ServiceListingData serviceListingData;

  ServicePage({required this.serviceListingData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  serviceListingData.imgUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Styla Johnson',
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                      CustomText(
                        text: 'Gardner',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff474747),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: ServiceListingData.trailTime,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                      CustomText(
                        text: 'Verified',
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff5FEA05),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CustomHorizontalContainer(),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text: 'Bio',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non tempor libero. Integer ut sapien vel eros tincidunt molestie sed eu leo. Ut ultricies quam est, ultricies malesuada nibh euismod eget. Pellentesque egestas arcu nibh, vel lobortis diam luctus vitae. Duis dignissim nisl vel dui feugiat scelerisque.',
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: Color(0xff474747),
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text: 'Reviews (300+)',
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
              SizedBox(
                height: 10,
              ),
              btmHorCon(),
              SizedBox(
                height: 10,
              ),
              CustomButton(
                btnText: 'Book',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Payment(),
                    ),
                  );
                },
                btnColor: AppColors.splashbottomColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
