import 'package:booking_service_project/utils/app_colors.dart';
import 'package:booking_service_project/views/Profile_Screen/profile_screen.dart';
import 'package:flutter/material.dart';

import '../Home_Screen/home_screen.dart';

class CustomBottomNavBar extends StatefulWidget {
  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int currentIndex = 0;

  List _screens = [
    HomeScreen(),
    Text('second screen'),
    Text('Third screen'),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        selectedItemColor: AppColors.appBackgoundColor,
        unselectedItemColor: Colors.black,
        elevation: 0,
        selectedIconTheme: IconThemeData(
          size: 30,
        ),
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.email_outlined),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.notifications_none_sharp),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
