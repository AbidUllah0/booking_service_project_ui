import 'package:booking_service_project/views/Home_Screen/home_screen.dart';
import 'package:booking_service_project/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/customAppBar.dart';
import '../../widgets/custom_text_button.dart';
import '../Home_Screen/components/question_one.dart';
import '../Service_Listing/service_listing.dart';

class CategoryPage extends StatelessWidget {
  static List<String> _categoryData = [
    'Electrician',
    'Gardening',
    'Plumbing',
    'Ironing',
    'Dish Washing',
    'Cleaning',
    'Yard Work',
    'Furniture Assembling',
    'TV Services',
    'Power/Pressure Wash',
    'Handyman Services',
    'Language Translation',
    'Yard Work',
    'Event Help',
    'Virtual Services',
    'Texh Support',
    'Organization',
    'Pet Care',
    'Plumbing',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Categories',
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 350,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                  itemCount: _categoryData.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    childAspectRatio: 3.2,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        _categoryData[index] == 'TV Services'
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => QuestionOne(),
                                ),
                              )
                            : '';
                      },
                      child: Container(
                        height: 20.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: Color(0xff264653),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Center(
                          child: CustomText(
                            text: _categoryData[index],
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Center(
                  child: CustomTextButton(
                text: 'Go To Services Listing',
                fontWeight: FontWeight.w700,
                fontSize: 22,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ServiceListing(),
                    ),
                  );
                },
                color: Colors.black,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
