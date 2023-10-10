import 'package:flutter/material.dart';

class SignUpTabBar extends StatefulWidget {
  const SignUpTabBar({super.key});

  @override
  State<SignUpTabBar> createState() => _SignUpTabBarState();
}

class _SignUpTabBarState extends State<SignUpTabBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Column(
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
              Text(''),
            ],
          ),
        ),
      ],
    );
  }
}
