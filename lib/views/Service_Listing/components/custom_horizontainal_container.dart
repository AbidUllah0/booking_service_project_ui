import 'package:booking_service_project/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomHorizontalContainer extends StatelessWidget {
  List _iconList = [
    Icons.manage_search,
    Icons.check_circle,
    Icons.verified,
    Icons.star,
  ];
  List _titleList = ['8 Years', 'Certified', '300+', '350+'];

  List _subTitleList = [
    'of experience',
    'with Taskrabit2.0',
    'Reviews',
    'Complete Projects'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(left: 4),
              padding: EdgeInsets.all(10),
              width: 84,
              decoration: BoxDecoration(
                color: Color(0xff279B90),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    _iconList[index],
                    color: Colors.white,
                    size: 35,
                  ),
                  CustomText(
                    text: _titleList[index],
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                  ),
                  CustomText(
                    text: _subTitleList[index],
                    fontWeight: FontWeight.w400,
                    fontSize: 7,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
