import 'package:booking_service_project/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class btmHorCon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(left: 10),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              height: 114,
              width: 278,
              decoration: BoxDecoration(
                color: Color(0xff279B90),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/abid.png'),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'Abid Ullah',
                            fontSize: 10.7,
                            fontWeight: FontWeight.w700,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 20,
                                color: Color(0xffFFD600),
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: Color(0xffFFD600),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xffFFD600),
                                size: 20,
                              ),
                              Icon(
                                color: Color(0xffFFD600),
                                Icons.star,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xffD9D9D9),
                                size: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                      CustomText(
                        text: '01 sep 2023 00:22',
                        fontSize: 8,
                        fontWeight: FontWeight.w600,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomText(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non tempor libero. Integer ut sapien vel eros tincidunt molestie sed eu leo. Ut ultricies quam est, ultricieLorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non tempor libero. ',
                    fontWeight: FontWeight.w400,
                    fontSize: 9,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
