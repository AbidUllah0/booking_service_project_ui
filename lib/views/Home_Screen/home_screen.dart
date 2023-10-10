import 'package:booking_service_project/models/home_model.dart';
import 'package:booking_service_project/views/Category_Page/category_page.dart';
import 'package:booking_service_project/widgets/custom_text.dart';
import 'package:booking_service_project/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/custom_textField.dart';
import 'components/custom_home_appBar.dart';

class HomeScreen extends StatelessWidget {
  List<HomeModel> _homeData = [
    HomeModel(imgUrl: 'assets/images/h.png', task: 'House Cleaning'),
    HomeModel(imgUrl: 'assets/images/h1.png', task: 'Gardner'),
    HomeModel(imgUrl: 'assets/images/h2.png', task: 'Plumber'),
    HomeModel(imgUrl: 'assets/images/h3.png', task: 'TV Monitoring'),
    HomeModel(imgUrl: 'assets/images/h4.png', task: 'Furniture Removal'),
    HomeModel(imgUrl: 'assets/images/h5.png', task: 'Ironing'),
    HomeModel(imgUrl: 'assets/images/h6.png', task: 'Kitchen Cleaning'),
    HomeModel(imgUrl: 'assets/images/h7.png', task: 'Furniture Assembling'),
    HomeModel(imgUrl: 'assets/images/h8.png', task: 'Help Moving'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomHomeAppBar(),
                SizedBox(
                  height: 15,
                ),
                CustomText(
                  text: 'I need help with..',
                  fontSize: 24,
                  color: Color(0xff545454),
                  fontWeight: FontWeight.w800,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  hText: 'Search Services',
                  pIcon: Icons.search,
                ),
                Container(
                  height: 360,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                    itemCount: _homeData.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 3,
                      mainAxisSpacing: 15,
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 80.h,
                            width: 105.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.white,
                            ),
                            child: Image.asset(_homeData[index].imgUrl),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          CustomText(
                            text: _homeData[index].task,
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                            color: Color(0xff515151),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Center(
                  child: Container(
                    height: 34,
                    width: 82,
                    decoration: BoxDecoration(
                      color: Color(0xff264653),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: CustomTextButton(
                      color: Colors.white,
                      text: 'View All',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoryPage(),
                          ),
                        );
                        //Get.to(CategoryPage());
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                CustomText(
                  text: 'Trending',
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                    itemCount: 3,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 3,
                      mainAxisSpacing: 20.h,
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 80.h,
                            width: 105.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.white,
                            ),
                            child: Image.asset(_homeData[index].imgUrl),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          CustomText(
                            text: _homeData[index].task,
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                            color: Color(0xff515151),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
