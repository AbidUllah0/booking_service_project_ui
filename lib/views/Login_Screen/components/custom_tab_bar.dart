import 'package:booking_service_project/views/Login_Screen/login_screen.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return SingleChildScrollView(
      child: Column(
        children: [
          TabBar(
            unselectedLabelColor: Color(0xffAAAAAA),
            labelColor: Colors.white,
            splashBorderRadius: BorderRadius.circular(40),
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            controller: _tabController,
            dividerColor: Colors.red,
            tabs: [
              Tab(
                text: 'Customer',
              ),
              Tab(
                text: 'Service Provider',
              ),
            ],
          ),
          Container(
            height: 10,
            child: TabBarView(
              controller: _tabController,
              children: [
                Text(''),
                //LoginScreen(),
                Text(''),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
