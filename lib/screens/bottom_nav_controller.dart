import 'package:flutter/material.dart';
import 'package:ui_design_task/const.dart';
import 'package:ui_design_task/screens/bottomNavScrren/booking.dart';
import 'package:ui_design_task/screens/bottomNavScrren/profile.dart';
import 'package:ui_design_task/screens/bottomNavScrren/home.dart';

class BottomNavController extends StatefulWidget {
  const BottomNavController({super.key});

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _selectiveIndex = 0;
  final List<Widget> _pages = [
    Home(),
    Booking(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_selectiveIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
          child: BottomNavigationBar(
            selectedItemColor: primaryColor,
            unselectedItemColor: Color(0xFF4B5563),
            elevation: 12,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: _selectiveIndex,
            onTap: (value) {
              setState(() {
                _selectiveIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.book_online,
                ),
                label: 'Booking',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
