import 'package:booking_service_project/views/Booking/booking_home_screen.dart';
import 'package:booking_service_project/views/Booking/components/cancelled_bar.dart';
import 'package:booking_service_project/views/Booking/components/completed_bar.dart';
import 'package:booking_service_project/views/Bottom_NavBar/bottom_navbar.dart';
import 'package:booking_service_project/views/Profile_Screen/profile_screen.dart';
import 'package:booking_service_project/widgets/customAppBar.dart';
import 'package:booking_service_project/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import 'active_bar.dart';

class BookingTabBar extends StatefulWidget {
  @override
  State<BookingTabBar> createState() => _BookingTabBarState();
}

class _BookingTabBarState extends State<BookingTabBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          indicatorColor: Colors.black,
          tabs: [
            Tab(text: 'All'),
            Tab(text: 'Active'),
            Tab(text: 'Completed'),
            Tab(text: 'Cancelled'),
          ],
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CustomBottomNavBar(),
            ),
          );
        },
        child: TabBarView(
          controller: _tabController,
          children: [
            BookingHome(),
            ActiveBar(),
            CompletedBar(),
            CancelledBar(),
          ],
        ),
      ),
    );
  }
}
