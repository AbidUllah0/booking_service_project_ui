import 'package:booking_service_project/models/service_listing_data.dart';
import 'package:booking_service_project/views/Service_Listing/components/service_page.dart';
import 'package:booking_service_project/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class ServiceListing extends StatelessWidget {
  static List<ServiceListingData> _serviceListingData = [
    ServiceListingData(
      imgUrl: 'assets/images/sl1.png',
      subtitle: 'I am a Wall Painter. I will paint your home walls smoothy',
    ),
    ServiceListingData(
      imgUrl: 'assets/images/sl2.png',
      subtitle: 'I am a Helper. I will help you to shift your home',
    ),
    ServiceListingData(
      imgUrl: 'assets/images/sl3.png',
      subtitle: 'I am a Gardner. I will handle your home gardens',
    ),
    ServiceListingData(
      imgUrl: 'assets/images/sl4.png',
      subtitle: 'I am a Cleaner. I will clean your home.',
    ),
    ServiceListingData(
      imgUrl: 'assets/images/sl5.png',
      subtitle: 'I am a Plumber. Lorem ipsum dolor sit amet,',
    ),
    ServiceListingData(
      imgUrl: 'assets/images/sl6.png',
      subtitle: 'I am a Wall Painter. I will paint your home walls smoothy',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: 'Services available ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: Colors.black,
                        )),
                    TextSpan(
                      text: '(99+)',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                        color: Color(0xff264653),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non tempor libero. Integer ut sapien vel eros tincidunt molestie ',
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: Color(0xff474747),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 600,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: _serviceListingData.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ServicePage(
                                serviceListingData: _serviceListingData[index],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: Image.asset(
                                    _serviceListingData[index].imgUrl,
                                    width: 185,
                                    height: 103,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  width: 185,
                                  height: 103,
                                  color: Color(0xff279B90),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              ServiceListingData.starIcon,
                                              size: 15,
                                              color: Color(0xffFFD600),
                                            ),
                                            CustomText(
                                              text: ServiceListingData.rating,
                                              color: Color(0xffFFD600),
                                              fontSize: 9,
                                              fontWeight: FontWeight.w600,
                                            )
                                          ],
                                        ),
                                        CustomText(
                                          text: _serviceListingData[index]
                                              .subtitle,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 9,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomText(
                                              text: ServiceListingData.author,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 10,
                                            ),
                                            CustomText(
                                              text:
                                                  ServiceListingData.trailTime,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 10,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
