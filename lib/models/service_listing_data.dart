import 'package:flutter/material.dart';

class ServiceListingData {
  static String trailTime = '\$12/hr';
  static String rating='4.7/5 (39)';
 static IconData starIcon = Icons.star;
  static String author = 'by Charless';
  String subtitle;
  String imgUrl;

  ServiceListingData({required this.imgUrl, required this.subtitle});
}
